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
(require "./atomic-counter.rkt")
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
;, between threads accessing the same file descriptor to not happen
(define logging-thread
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
          'done)))))
          
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


(define *active-actor-count* (make-atomic-counter 0))
(define *in-flight-message-count* (make-atomic-counter 0))

;; Wait until all actors have finished and stop the logging thread
(define (shutdown-system)
  (displayln "Startup done ...")
  (displayln "Waiting for system shutdown ..")
  (send^ (spawn^ (receive ((x 'done)))) 'done)
  (sync *active-actor-count*)
  (sync *in-flight-message-count*)
  (sleep 2)
  (displayln "All actors have terminated")
  (break-thread logging-thread 'terminate)
  (thread-wait logging-thread)
  (exit))

;; Handler for top-level errors that ensures that the logging actor has been terminated correctly
;; and all its output has been written.
(define (handle-top-level-error e)
  (raise e)
  (displayln (format "error: ~a" (exn->string e)))

  (when (self)
    (atomic-counter-decrement *active-actor-count*)
    (kill-thread (current-thread))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Syntax utilities
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (syntax-loc-datum stx)
  `(loc ,(syntax-line stx) ,(syntax-column stx)))

(define-for-syntax (syntax-loc-datum stx)
  `(loc ,(syntax-line stx) ,(syntax-column stx)))

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
                                           (atomic-counter-decrement *active-actor-count*)))))) (quote-syntax #,stx))))

          ; (atomic-counter-increment *active-actor-count*)
          (thread-send (pid-tid new-pid) new-pid)
          new-pid)])) 

;; Terminates the current actor
(define (terminate)
  ((*return-continuation*) #f))

(define-syntax (blame stx)
  (syntax-parse stx
     [(_ party extra)
      #'(blame party)]
     [(_ party)
        (let ((loc (syntax-loc-datum #'party)))
          #`(let ((prty party))
              (log-blame prty (quote #,loc))
              (error (format "blame error occured, blaming party ~a" prty))))]))

(define-match-expander pair
  (lambda (stx)
    (syntax-case stx ()
      [(_ v1 v2) #'(cons v1 v2)])))

(define-syntax (receive stx)
  (syntax-parse stx
    [(_ ((pat body ...) ...))
     #'(begin
         (atomic-counter-decrement *active-actor-count*)
         (let
           ((msg (thread-receive)))
             (atomic-counter-decrement *in-flight-message-count*)
             ; (atomic-counter-increment *active-actor-count*)
             (match msg
               [pat body ...] ...)))]))

(define (send^ ref vlu)
  (log-send ref vlu)
  ;; NOTE: this assumes that the receiving actor will always
  ;; act on the message. If this is not the case (lack of receive block for example)
  ;; the program might time out.
  (atomic-counter-increment *active-actor-count*)
  (atomic-counter-increment *in-flight-message-count*)
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

(define (trace v) v)

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
