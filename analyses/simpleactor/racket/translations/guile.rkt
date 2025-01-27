#lang racket

;; This module translates expressions from the simpleactor
;; language to a Guile Scheme compatible form.
;;
;; Our semantics mostly overlap with Guile Scheme, however,
;; our language has some diverging semantics from the standard 
;; R5RS specification and the Guile Scheme specification.
;;
;; The following changes are required to transform a SimpleActor
;; program to a Guile Scheme program:
;; - all `letrec` expressions have to be translated into a `letrec*` 
;; expression. This type of expression is not supported in R5RS but 
;; it is supported in Guile Scheme. 
;; - `match` expressions are not supported in Guile Scheme and have 
;; to be translated to other special forms.
;; - process `spawn` and `send` expressions are not supported by Guile 
;; scheme and have to be translated to an equivalent thread model.

;; Apply a list of transformations to a value
(define (apply-k ks e)
  (foldr (lambda (k r) (k r)) e ks))

;; Generate a condition for the given pattern and value.
(define (translate-pattern v e k)
   (match e 
     [(quasiquote (pair ,car-exp ,cdr-exp))
      (let-values ([(test1 bds1) (translate-pattern v car-exp (cons (lambda (x) `(car ,x)) k))]
                   [(test2 bds2) (translate-pattern v cdr-exp (cons (lambda (x) `(cdr ,x)) k))])
        (values `(and ,test1 ,test2) (append bds1 bds2)))]
     [(quasiquote ()) (values `(null? ,(k v)) '())]
     [(quasiquote _) (values #t '())]
     [x (if (symbol? x) 
            (values #t (list (list x (apply-k k v))))
            (values `(equal? ,x ,(apply-k k v)) '()))]))

;; Translate a match clause into a equivalent expression 
;; in Guile Scheme.
(define ((translate-match-clause v) clause)
  (let-values ([(test bds) (translate-pattern v (car clause) '())])
    `(,test (letrec* ,bds ,@(cdr clause)))))


;; A match expression is translated into a conditional.
(define (match->cond exp) 
  (match exp
    [(quasiquote (match ,v ,clauses))
     (let ((xv (gensym "v")))
     `(letrec* ((,xv ,v))
        ,(let* ((translated-clauses (map (translate-match-clause xv) clauses)))
           `(cond ,@translated-clauses
              (else (error "no match found"))))))]))

(define (translate exp)
  (match exp 
    [(quasiquote (match ,@rst)) (match->cond exp)]
    [(quasiquote (letrec ,@ags)) `(letrec* ,@(map translate ags))]
    [(quasiquote (,operator ,@operands))
     `(,(translate operator) ,@(map translate operands))]
    [x x]))


(module+ main
  (writeln (translate `(match 10 ((x (+ x 1)) (_ 42)))))
  (writeln (translate `(match (cons 10 30) ((10 1) ((pair x 30) x) (_ 3)))))
  (writeln (translate `(match (cons (cons 40 50) 60) ((10 1) ((pair (pair x z) 60) z))))))

(provide translate)

