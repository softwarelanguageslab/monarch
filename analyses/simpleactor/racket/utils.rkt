#lang racket

(provide (all-defined-out))

(require syntax/parse)

;; Read all syntax objects until `eof-object?` is reached.
(define (read-all-syntax input-port source)
  (let ((stx (read-syntax source input-port)))
     (if (eof-object? stx)
          '()
          (cons stx (read-all-syntax input-port source)))))

;; Build nested (cons s1 (cons s2 s3)) from a non-empty list of syntax objects.
(define (uncurry stxs)
  (if (null? (cdr stxs))
      (car stxs)
      (quasisyntax/loc (car stxs)
        (cons #,(car stxs) #,(uncurry (cdr stxs))))))

;; Build (cons s1 (cons s2 ... '())) from a list of syntax objects.
(define (consify loc-stx stxs)
  (if (null? stxs)
      (quasisyntax/loc loc-stx '())
      (quasisyntax/loc loc-stx
        (cons #,(car stxs) #,(consify loc-stx (cdr stxs))))))

;; Bind value-stxs to fresh variables; call bdy-function with the list of fresh
;; syntax identifiers and return the resulting let expression.
(define (letify loc-stx value-stxs bdy-function)
  (let* ((names (map (lambda _ (datum->syntax loc-stx (gensym 'x))) value-stxs))
         (bdy   (bdy-function names)))
    (with-syntax ([(name ...) names]
                  [(val  ...) value-stxs])
      (quasisyntax/loc loc-stx
        (let ((name val) ...) #,bdy)))))
          
