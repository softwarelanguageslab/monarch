#lang racket 

(provide (all-defined-out))

;; Read all data until an `eof-object?` is reached. 
(define (read-all input-port)
  (let ((datum (read input-port)))
     (if (eof-object? datum)
          '()
          (cons datum (read-all input-port)))))

(define (uncurry ags)
  (cond
    ((null? (cdr ags)) (car ags))
    ((pair? ags) `(pair ,(car ags) ,(uncurry (cdr ags))))))

(define (consify lst)
 (if (null? lst)
     ''()
     `(cons ,(car lst) ,(consify (cdr lst)))))
