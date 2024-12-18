#lang racket

(define (mk-list n x)
  (if (< n 0) empty (cons x (mk-list (- n 1) x))))

(define (mem x xs)
  (if (empty? xs) #f (or (= x (car xs)) (mem x (cdr xs)))))

(provide (contract-out
   [mk-list (->d integer?/c integer?/c 
                 (lambda (_ x) 
                   (and/c (listof integer?/c)
                          (flat (lambda (l) (or (empty? l) (member x l)))))))]
   [mem (-> integer?/c (listof integer?/c) boolean?/c)]))
