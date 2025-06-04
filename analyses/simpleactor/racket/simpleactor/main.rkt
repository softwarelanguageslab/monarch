#lang racket

(provide (all-defined-out)
         (except-out (all-from-out racket) #%app #%module-begin)
         (rename-out (app-instrumented #%app) (module-begin-instrumented #%module-begin)))

(require (for-syntax syntax/parse))
(require "./atomics.rkt")

(module reader syntax/module-reader simpleactor)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Logging
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Get logging configuration from the current environment
(define *logging-output* (getenv "SIMPLEACTOR_OUT"))
(when *logging-output* 
    (displayln (format "Logging to ~a is enabled" *logging-output*)))

;; Shutdown logging by receiving the last messages and closing the file descriptor
(define (shutdown-logging out)
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
        (with-handlers [(exn:break:terminate? (lambda (e) 'done))]
             (let loop () (thread-suspend (current-thread)) (loop))))))))
          
;; Log the given datum to the logging output (if any is available)
(define (log datum)
  (thread-send logging-thread datum))

;; Convert a PID to an inspectable datum
(define (pid->datum pid)
  `(pid ,(syntax-loc-datum (pid-exp pid))))

;; Log a message send
(define (log-send rcv msg)
  (log `(msg ,(pid->datum rcv) ,msg)))

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

;; Wait until all actors have finished and stop the logging thread
(define (shutdown-system)
  (displayln "Startup done ...")
  ;; HACK to ensure that all actors have started before we wait for them.
  ;; to make this fool proof we need some control over the scheduler to know
  ;; whether the program can make some progress somewhere, but we don't so this
  ;; is the best we got.
  (sleep 5) 
  (displayln "Waiting for system shutdown ..")
  (for-each (lambda (thread) (thread-wait thread)) (atomic-gets *running-actors* (lambda (v) v)))
  (displayln "All actors have terminated")
  (break-thread logging-thread 'terminate)
  (thread-wait logging-thread)
  (exit))

;; Handler for top-level errors that ensures that the logging actor has been terminated correctly
;; and all its output has been written.
(define (handle-top-level-error e)
  (displayln (format "error: ~a" (exn-message e)))

  (when (self)
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
                                         (begin body))))) (quote-syntax #,stx))))

          (thread-send (pid-tid new-pid) new-pid)
          new-pid)])) 

(define-syntax (blame stx)
  (syntax-parse stx
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
     #'(match (thread-receive)
         [pat body ...] ...)]))

(define (send^ ref vlu)
  (log-send ref vlu)
  (thread-send (pid-tid ref) vlu))

(define (wait-until-terminated ref)
  (thread-wait (pid-tid ref)))

(define (wait-until-all-finished)
  (shutdown-system))

