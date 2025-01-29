#lang racket

(require racket/runtime-path)
(require "../utils.rkt")
(require racket/pretty)
(require racket/syntax-srcloc)

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

(define-runtime-path guile-prelude-path "../preludes/guile-prelude.scm")


;; Instrument a clause from a conditional expression
(define (instrument-clause exp)
  (syntax-case exp (else)
    [(else ex ...)
     (with-syntax
       ([(ex* ...) (map instrument (syntax->list #'(ex ...)))])

       #'(else ex* ...))]
    [(cnd ex ...)
     (with-syntax
       ([(ex* ...) (map instrument (syntax->list #'(ex ...)))])

       #`(#,(instrument #'cnd) ex* ...))]))

;; Instrument the given expression so that the state of the program 
;; and its actions are printed to the standard output.
;;
;; Currently this prints:
;; * the location of each function application
;; * the location of each blame invocation
(define (instrument exp)
  (syntax-case exp (use-modules letrec letrec* lambda if blame input begin define set! cond)
    [(letrec ((x v) ...) expr ...) 
     (with-syntax 
       ([(v* ...)  (map instrument (syntax->list #'(v ...)))]
        [(ex* ...) (map instrument (syntax->list #'(expr ...)))])

        #'(letrec ((x v*) ...) ex* ...))]
    [(letrec* ((x v) ...) expr ...) 
     (with-syntax 
       ([(v* ...)  (map instrument (syntax->list #'(v ...)))]
        [(ex* ...) (map instrument (syntax->list #'(expr ...)))])

        #'(letrec* ((x v*) ...) ex* ...))]
    [(lambda (x ...) e ...) 
     (with-syntax
       ([(e* ...) (map instrument (syntax->list #'(e ...)))])

       #'(lambda (x ...) e* ...))]
    [(if cnd csq alt)
     #`(if #,(instrument #'cnd) #,(instrument #'csq) #,(instrument #'alt))]
    [(begin ex ...)
     (with-syntax 
       ([(ex* ...) (map instrument (syntax->list #'(ex ...)))])

       #'(begin ex* ...))]
    [(define x e) 
     #`(define x #,(instrument #'e))]
    [(define (f x ...) e ...)
     (with-syntax
       ([(e* ...) (map instrument (syntax->list #'(e ...)))])

       #`(define (f x ...) e* ...))]
    [(set! x e) #`(set! x #,(instrument #'e))]
    [(blame lbl a) #`(begin 
                   (write (quote #,(list 'blame (syntax->datum #'lbl) (syntax-line exp) (syntax-column exp))))
                   (display "\n")
                   (error (format "contract violation, blaming ~a~n" lbl)))]
    [(input) #'(input)]
    [(cond clause ...)
     (with-syntax
       ([(clause* ...) (map instrument-clause (syntax->list #'(clause ...)))])

       #'(cond clause* ...))]
    [(use-modules operands ...)
     #'(use-modules operands ...)]
    [(operator operands ...)
     (with-syntax
       ([(operands* ...) (map instrument (syntax->list #'(operands ...)))])
        #`(begin (write (quote #,(list 'funapp (syntax-line #'operator) (syntax-column #'operator))))
                 (display "\n") 
                 (#,(instrument #'operator) operands* ...)))]
    [_ exp]))

;; Add Guile's Scheme prelude to the program, this does not 
;; require that the program is translated to ANF again 
;; since Guile supports define epressions natively.
(define (add-prelude e)
  (let ((input-file (open-input-file guile-prelude-path)))
  `(begin ,@(read-all input-file) ,e)))


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
     [(quasiquote ()) (values `(null? ,(apply-k k v)) '())]
     [(quasiquote _) (values #t '())]
     [x (if (symbol? x) 
            (values #t (list (list x (apply-k k v))))
            (values `(equal? ,x ,(apply-k k v)) '()))]))


;; Translate a match clause into a equivalent expression 
;; in Guile Scheme.
(define ((translate-match-clause v) clause)
  (let-values ([(test bds) (translate-pattern v (car clause) '())])
    `(,test (letrec* ,bds ,@(map translate (cdr clause))))))


;; A match expression is translated into a conditional.
(define (match->cond exp) 
  (match exp
    [(quasiquote (match ,v ,clauses))
     (let ((xv (gensym "v")))
     `(letrec* ((,xv ,(translate v)))
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

(define (translate-preluded exp)
  (add-prelude (translate exp)))


(module+ main
  (writeln (translate `(match 10 ((x (+ x 1)) (_ 42)))))
  (writeln (translate `(match (cons 10 30) ((10 1) ((pair x 30) x) (_ 3)))))
  (writeln (translate `(match (cons (cons 40 50) 60) ((10 1) ((pair (pair x z) 60) z))))))

(provide (rename-out [translate-preluded translate]) instrument)

