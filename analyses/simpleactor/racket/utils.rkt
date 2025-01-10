#lang racket 

(provide (all-defined-out))

(define (uncurry ags)
  (cond
    ((null? (cdr ags)) (car ags))
    ((pair? ags) `(pair ,(car ags) ,(uncurry (cdr ags))))))

(define (consify lst)
 (if (null? lst)
     ''()
     `(cons ,(car lst) ,(consify (cdr lst)))))
