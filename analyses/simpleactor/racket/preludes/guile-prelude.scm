;; prelude for Guile Scheme

(define (add1 x) (+ x 1))
(define (sub1 x) (+ x 1))

(set! *random-state* (random-state-from-platform))

;; TODO: this should also return other values than just integers
(define (input) (expt 2 64))

