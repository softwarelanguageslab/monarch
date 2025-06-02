#lang racket

(provide (all-defined-out)
         (except-out (all-from-out racket) #%app)
         (rename-out (app-instrumented #%app)))

(require (for-syntax syntax/parse))

(module reader syntax/module-reader simpleactor)


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
     #'(begin (displayln "app") (#%app operator operands ...))]))

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
  (thread-send (pid-tid ref) vlu))

(define (wait-until-terminated ref)
  (thread-wait (pid-tid ref)))

