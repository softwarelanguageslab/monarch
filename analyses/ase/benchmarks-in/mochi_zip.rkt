#lang racket

(define (zip xs ys) ; zip itself is unsafe
  (cond
   [(and (empty? xs) (empty? ys)) empty]
   [(and (pair? xs) (pair? ys)) (cons (cons (car xs) (car ys)) (zip (cdr xs) (cdr ys)))]
   [else 'fail]))

(define (mk-list n)
  (if (< n 0) empty (cons n (mk-list (- n 1)))))

(define (main n)
  (let ([xs (mk-list n)]) (zip xs xs)))

(provide (contract-out
 [mk-list (-> integer?/c (listof integer?/c))]
 [main (-> integer?/c (listof (cons/c integer?/c integer?/c)))]))
