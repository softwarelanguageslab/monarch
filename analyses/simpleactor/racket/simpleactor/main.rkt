#lang racket

(provide (all-defined-out)
         (except-out (all-from-out racket) #%app #%module-begin match begin)
         (rename-out (set-mcar! set-car!)
                     (set-mcdr! set-cdr!)
                     ; (mcons cons)
                     ; (mpair? pair?)
                     ; (mpair? cons?)
                     )
         (rename-out (app-instrumented #%app)
                     (simpleactor-match match)
                     (simpleactor-parameterize parametrize)
                     (simpleactor-begin begin)
                     (module-begin-instrumented #%module-begin)))

(module reader syntax/module-reader simpleactor)

(require (for-syntax syntax/parse))
(require "./atomics.rkt")
(require racket/exn)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Logging
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Get logging configuration from the current environment
(define *logging-output* (getenv "SIMPLEACTOR_OUT"))
(when *logging-output* 
    (displayln (format "Logging to ~a is enabled" *logging-output*)))

;; Shutdown logging by receiving the last messages and closing the file descriptor
(define (shutdown-logging out)
  (let loop ()
    (let ((datum (thread-try-receive)))
      (when datum
          (begin (write datum out) (loop)))))
          
  (displayln (format "Closing logging to ~a" *logging-output*))
  (close-output-port out))

;; Logging is handled through a singled thread so that bad interleavings
;, between threads accessing the same file descriptor do not happen
(define logging-thread
  (if *logging-output*
    (thread (lambda ()
      (parameterize-break #t
        (if *logging-output*
          (let ((out (open-output-file *logging-output* #:exists 'truncate)))
            ;; ensure that logging is shutdown whenever a break occurs
            (with-handlers [(exn:break:terminate? (lambda (e) (shutdown-logging out)))]
                (let loop ()
                  (let ((datum (thread-receive)))
                    ;; ensure that the data are written without
                    ;; getting interrupted by a break.
                    (parameterize-break #f
                        (write datum out)
                        (newline out))
                    ;; yield control of the thread to the scheduler
                    ;; otherwise the new break-enabled value does not seem
                    ;; propagate correctly and breaks remain suspended
                    (sleep 0)
                    (loop)))))
            'done))))
    ;; If logging was not enabled we simply return a thread that does nothing
    ;; this does not impact performance as "thread-receive" marks the thread as 
    ;; supended and execution will only resume whenever logging is requested.
    ;;
    ;; Thus, the impact of this loop is the same as if logging was enabled.
    (thread (lambda () 
        (call/ec (lambda (k)
          (let loop () 
            (with-handlers [(exn:break:terminate? (lambda (e) (k)))]
              (thread-receive) 
              (loop)))))))))
            
;; Log the given datum to the logging output (if any is available)
(define (log datum)
  (thread-send logging-thread datum))

;; Convert a PID to an inspectable datum
(define (pid->datum pid)
  `(pid ,(syntax-loc-datum (pid-exp pid))))

;; Attempts to construct a parseable representtion of the message
(define (try-print-message msg)
  (cond ((symbol? msg) msg)
        ((and (pair? msg) (symbol? (car msg))) (car msg))
        (else 'unsupported-message-format)))

;; Log a message send
(define (log-send rcv msg)
  (log `(msg ,(pid->datum rcv) ,(try-print-message msg))))

;; Log a message blame
(define (log-blame loc party)
  (log `(blame ,loc ,party)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Instrumentation for soundness and precision testing
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Concrete address of variables
(struct vadr (var loc) #:transparent)

;; Concrete address of pointers (i.e., to strings, vectors, pairs, ...)
(struct padr (exp loc) #:transparent)

;; Shadow store
(struct store (sto-storage) #:transparent)

;; Shadow store
(define *store* (store (make-hash)))

;; Shadow stack
(define *stack* (list))

(define-for-syntax shadow-stack (gensym))

(define-syntax (app-instrumented stx)
  (syntax-parse stx
    [(_ operator operands ...)
     #'(begin (#%app operator operands ...))]))

;; Thread-safe list of running actors
(define *running-actors* (make-atomic '()))

;; Install an exception handler so that logging can still happen before
;; the program is terminated.
(define-syntax (module-begin-instrumented stx)
  (syntax-parse stx
    [(_ body ...)
     #'(#%plain-module-begin
         (with-handlers [(exn:break? (lambda (e) (shutdown-system-break "break")))]
           (with-handlers [(exn:fail? (lambda (e) (handle-top-level-error e)))] 
              body ...)
           (shutdown-system)))]))


(define (shutdown-system-break reason)
  (for-each (lambda (thread) (kill-thread thread)) (atomic-gets *running-actors* (lambda (v) v)))
  (displayln "All actors have terminated")
  (break-thread logging-thread 'terminate)
  (thread-wait logging-thread)
  (exit))


;; Stall detection: the system is "stalled" when every live actor is parked
;; in thread-receive and no messages are in flight. Either the program is
;; deliberately idle or the actors are deadlocked waiting for messages that
;; will never arrive; in both cases no progress is possible, so shutdown is
;; safe.
(define *stall-mutex* (make-semaphore 1))
(define *stall-event* (make-semaphore 0))
(define *live* 0)
(define *waiting* 0)
(define *in-flight* 0)

(define-syntax-rule (with-stall body ...)
  (begin
    (semaphore-wait *stall-mutex*)
    (begin0 (begin body ...)
            (semaphore-post *stall-mutex*))))

;; Must be called while holding *stall-mutex*.
(define (maybe-signal-stalled)
  (when (or (zero? *live*)
            (and (= *waiting* *live*) (zero? *in-flight*)))
    (semaphore-post *stall-event*)))

;; State mutations are wrapped in module-local procedures so that the
;; macros expanded at user sites do not have to (set!) module-required
;; identifiers, which Racket forbids.
(define (stall:spawned!)    (with-stall (set! *live* (add1 *live*))))
(define (stall:terminated!) (with-stall (set! *live* (sub1 *live*))
                                        (maybe-signal-stalled)))
(define (stall:parking!)    (with-stall (set! *waiting* (add1 *waiting*))
                                        (maybe-signal-stalled)))
(define (stall:woke!)       (with-stall (set! *waiting* (sub1 *waiting*))
                                        (set! *in-flight* (sub1 *in-flight*))))
(define (stall:sending!)    (with-stall (set! *in-flight* (add1 *in-flight*))))

;; Block until the system stalls. Re-checks under the lock because
;; *stall-event* may have been posted for a transient stall that no longer
;; holds by the time we wake up.
(define (wait-for-stall)
  (let loop ()
    (define stalled?
      (with-stall (or (zero? *live*)
                      (and (= *waiting* *live*) (zero? *in-flight*)))))
    (unless stalled?
      (sync *stall-event*)
      (loop))))

;; Wait until the system stalls and stop the logging thread.
(define (shutdown-system)
  (displayln "Waiting for system to stall ..")
  (wait-for-stall)
  (displayln "System stalled, shutting down")
  (break-thread logging-thread 'terminate)
  (thread-wait logging-thread)
  (exit))

;; Handler for top-level errors that ensures that the logging actor has been terminated correctly
;; and all its output has been written.
(define (handle-top-level-error e)
  (raise e)
  (displayln (format "error: ~a" (exn->string e)))

  (when (self)
    (stall:terminated!)
    (kill-thread (current-thread))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Syntax utilities
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (syntax-loc-datum stx)
  `(loc ,(syntax-line stx) ,(syntax-column stx)))

(define-for-syntax (syntax-loc-datum stx)
  `(loc ,(syntax-line stx) ,(syntax-column stx)))

;; a `loc` value based on the line and column numbers
(struct position-loc (line column) #:transparent)

;; a `loc` value based on a label
(struct label-loc (label) #:transparent)

;; loc constructor
(define (loc . args)
  (cond ((null? (cdr args)) (label-loc (car args)))
        (else (position-loc (car args) (cadr args)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Internal soft contract verification constructs
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; These constructs do not actually have a concrete counterpart in the semantics
;; but are interpreted by the soft contract verifier to enhance precision or 
;; performance.

;; This constructs tells the analyzer that the expressions in the operands 
;; are independent from another, and therefore can be analyzed in parallel
;; with the same initial context and state.
(define-syntax (parallel stx)
  (syntax-parse stx
    [(_ body ...) #'(begin body ...)])) 

(define-syntax (@unchecked stx)
  (syntax-parse stx
    [(_ body ...) #'(body ...)]))

(define (input) (random))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Actor language semantics
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(struct pid (tid exp) #:transparent)
(define self (make-parameter #f))

;; Continuation to jump out of the receive loop and terminate the actor
(define *return-continuation* (make-parameter #f))

(define-syntax (self^ stx)
  (syntax-parse stx
    [(_) #'(self)]))

(define-syntax (spawn^ stx)
  (syntax-parse stx
    [(_ body)
     #`(letrec
          ((new-pid (pid (thread (lambda ()
                                     (atomic-modify *running-actors* (lambda (actors) (cons (current-thread) actors)))
                                     (with-handlers ([exn:fail? handle-top-level-error])
                                       (parameterize ([self (thread-receive)])
                                         (begin
                                           (call-with-current-continuation (lambda (k)
                                             (parameterize ((*return-continuation* k))
                                               body)))
                                           (stall:terminated!)))))) (quote-syntax #,stx))))

          ;; Parent records the new actor before returning so a quick stall
          ;; check by the parent thread cannot see *live* before this actor
          ;; is counted.
          (stall:spawned!)
          (thread-send (pid-tid new-pid) new-pid)
          new-pid)]))

;; Terminates the current actor
(define (terminate)
  ((*return-continuation*) #f))

(define-syntax (blame stx)
  (syntax-parse stx
     [(_ party) #'(blame party '())]
     [(_ party extra)
        (let ((loc (syntax-loc-datum #'party)))
          #`(let ((prty party))
              (log-blame prty (quote #,loc))
              (error (format "blame error occured, blaming party ~a at expression ~a" prty extra))))]))

(define-match-expander pair
  (lambda (stx)
    (syntax-case stx ()
      [(_ v1 v2) #'(cons v1 v2)])))

(define-syntax (receive stx)
  (syntax-parse stx
    [(_ ((pat body ...) ...))
     #'(begin
         ;; About to park: bump waiting and check if we just stalled the
         ;; system. The lock is released before thread-receive blocks.
         (stall:parking!)
         (let
           ((msg (thread-receive)))
             (stall:woke!)
             (match msg
               [pat body ...] ...)))]))

(define (send^ ref vlu)
  (log-send ref vlu)
  ;; NOTE: this assumes that the receiving actor will always act on the
  ;; message via (receive). If the actor instead sleeps, busy-loops, or is
  ;; otherwise suspended outside of (receive), it is not counted in
  ;; *waiting*, so *waiting* < *live* and the stall condition can never be
  ;; satisfied even though all messages have been delivered to mailboxes.
  ;; This is a deliberate design choice — such an actor may eventually call
  ;; (receive) and resume — but it means programs of that shape will hang
  ;; in wait-for-stall instead of timing out cleanly.
  (stall:sending!)
  (thread-send (pid-tid ref) vlu))

(define (wait-until-terminated ref)
  (thread-wait (pid-tid ref)))

(define (wait-until-all-finished)
  (shutdown-system))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;: Other compatibility functions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; The SimpleActor language has a slightly different syntax
;; for match expression.
(define-syntax (simpleactor-match stx)
  (syntax-parse stx
    [(_ ex ((pat bdy ...) ...))
     #'(match ex [pat bdy ...] ...)]))

;; In the SimpleActor language 'begin' expressions may appear without
;; any subexpressions, which is not allowed in Racket.
(define-syntax (simpleactor-begin stx)
  (syntax-parse stx
    [(_) #'(void)]
    [(_ ex ...) #'(begin ex ...)]))

(define (trace v) (print v) (newline) v) 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Dynamic variables
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Dynamic environment
(define *dynamic-environment* (make-parameter (make-immutable-hash (list (cons 'send^ (lambda (ref msg) (send^ ref msg)))))))

(define (dynamic-lookup var)
  (hash-ref (*dynamic-environment*) var))

(define-syntax (simpleactor-parameterize stx)
  (syntax-parse stx
    [(_ ((id val) ...) bdy ...)
     #'(parameterize
         ((*dynamic-environment*
              (apply hash-set* (*dynamic-environment*) (flatten (list (list (quote id) val) ...)))))
             bdy ...)]))

(define-syntax (dyn stx)
  (syntax-parse stx
    [(_ var) #'(dynamic-lookup (quote var))]))
