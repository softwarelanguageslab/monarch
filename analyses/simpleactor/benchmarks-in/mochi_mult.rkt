#lang racket

(define (mult n m)
  (if (or (<= n 0) (<= m 0)) 0
      (+ n (mult n (- m 1)))))

(define (sqr n) (mult n n))

(provide (contract-out [mult (-> integer?/c integer?/c (and/c integer?/c (>=/c 0)))]
		       [sqr (->d integer?/c (lambda (n) (and/c integer?/c (>=/c n))))]))
