#lang racket

(define (main len)
  (let ([xs (mk-list len)])
    (if (not (= len 0)) (car (myreverse xs empty)) 0)))

(define (myreverse l ac)
  (if (empty? l) ac (myreverse (cdr l) (cons (car l) ac))))

(define (mk-list n)
  (if (= n 0) empty (cons n (mk-list (- n 1)))))

(provide (contract-out [main (-> integer?/c integer?/c)]))
