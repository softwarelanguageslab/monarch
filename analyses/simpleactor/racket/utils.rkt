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
    ((pair? ags) `(cons ,(car ags) ,(uncurry (cdr ags))))))

(define (consify lst)
 (if (null? lst)
     ''()
     `(cons ,(car lst) ,(consify (cdr lst)))))

;; Bind the given list of value expressions to fresh variables and returns the list of fresh variables
(define (letify values bdy-function)
  (let* ((names (map (lambda _ (gensym 'x)) values))
         (bds   (map (lambda (var exp) (list var exp)) names values)))

    `(let ,bds 
       ,(bdy-function names))))
          
