(use-modules (srfi srfi-28))

;; prelude for Guile Scheme

(define (add1 x) (+ x 1))
(define (sub1 x) (+ x 1))
(define (loc x) x)

(set! *random-state* (random-state-from-platform))

;; TODO: this should also return other values than just integers
(define (input) (expt 2 64))
