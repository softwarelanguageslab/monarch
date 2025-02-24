#lang racket

(define (foldr f z xs)
  (if (empty? xs) z
      (f (car xs) (foldr f z (cdr xs)))))

(define (map_ f xs)
  (foldr (λ (x ys) (cons (f x) ys)) empty xs))

(provide (contract-out
 [foldr (-> (-> any/c any/c any/c) any/c (listof any/c) any/c)]
 [map_ (-> (-> any/c any/c) (listof any/c) (listof any/c))]))
