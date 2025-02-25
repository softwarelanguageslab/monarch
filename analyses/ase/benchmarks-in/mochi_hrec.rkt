#lang racket

(define (f g x)
  (if (>= x 0) (g x) (f (λ (x) (f g x)) (g x))))

(define (main n)
  (f add1 n))

(provide (contract-out
  [f (-> (-> integer?/c integer?/c) integer?/c integer?/c)]
  [main (-> integer?/c (and/c integer?/c (>=/c 0)))]))
