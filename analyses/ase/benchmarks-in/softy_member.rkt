#lang racket

(define (member_ x l)
  (if (empty? l) empty
      (if (equal? x (car l)) l (member_ x (cdr l)))))

(provide (contract-out
 [member_ (-> (any/c (listof any/c)  (listof any/c)))]))
