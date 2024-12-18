#lang racket

(define (sum n)
  (if (<= n 0) 0
      (+ n (sum (- n 1)))))

(provide (contract-out
           [sum (->d integer?/c
	         (lambda (n) (and/c integer?/c (>=/c n))))]))
