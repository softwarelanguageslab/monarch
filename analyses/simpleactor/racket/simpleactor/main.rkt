#lang racket

(provide (all-defined-out)
         (except-out (all-from-out racket) #%app)
         (rename-out (app-instrumented #%app)))

(require (for-syntax syntax/parse))

(module reader syntax/module-reader simpleactor)

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

