#lang racket

(provide (all-defined-out))
(require (for-syntax syntax/parse))

(define-syntax (begin-program stx)
  (syntax-parse stx
    [(_ body ...)
     #'(begin body ...)]))

(provide (rename-out [begin-program #%module-begin]))
