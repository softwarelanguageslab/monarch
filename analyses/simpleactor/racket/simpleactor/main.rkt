#lang racket

(provide (all-defined-out)
         (except-out (all-from-out racket) #%app)
         (rename-out (app-instrumented #%app)))

(require (for-syntax syntax/parse))

(module reader syntax/module-reader simpleactor)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Logging
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Get logging configuration from the current environment
(define *logging-output* (getenv "SIMPLEACTOR_OUT"))
(displayln (format "Logging to ~a is enabled" *logging-output*))

;; Logging is handled through a singled thread so that bad interleavings
;, between threads accessing the same file descriptor to not happen
(define logging-thread
  (thread (lambda ()
    (if *logging-output*
      (let ((out (open-output-file *logging-output* #:exists 'truncate)))
        (let loop () (write (thread-receive) out) (flush-output out) (loop)))
      (let loop () (thread-suspend (current-thread)) (loop))))))
          
;; Log the given datum to the logging output (if any is available)
(define (log datum)
  (displayln (format "logging datum ~a" datum))
  (thread-send logging-thread datum))

;; Log a message send
(define (log-send rcv msg)
  (log `(msg ,rcv ,msg)))


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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Syntax utilities
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define-for-syntax (syntax-loc-datum stx)
  'todo)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Actor language semantics
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(struct pid (tid exp) #:transparent)
(define self (make-parameter #f))

(define-syntax (spawn^ stx)
  (syntax-parse stx
    [(_ body)
     #`(letrec
          ((new-pid (pid (thread (lambda ()
                                     (parameterize ([self (thread-receive)]) 
                                       body))) (quote-syntax #,stx))))

          (thread-send (pid-tid new-pid) new-pid)
          new-pid)])) 

(define-syntax (blame stx)
  (syntax-parse stx
     [(_ party)
        (let ((prty (gensym))
              (loc (syntax-loc-datum #'party)))

        #`(let ((,prty party))
            (log-blame ,prty ,loc)
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

