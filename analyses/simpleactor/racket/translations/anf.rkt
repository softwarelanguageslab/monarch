#lang racket

#|
Translate a SimpleCc program into ANF form for analysis 
in an ANF small-step machine. 

The syntax of the ANF language is as follows:

l ∈ Literal ::= ℕ | true | false
ae ::= λx . e | l | self | blame | x | dyn x 
e ::= ae | if ae e e | let x = e in e | ae ae ... | match ae with (pat => e) ... | pair ae ae
|#

(define (empty-begin? beg)
  (match beg
    [(quasiquote (begin)) #t]
    [_ #f]))

(define (nonempty-begin? beg) (not (empty-begin? beg)))

(define (translate-parts lst)
  (if (null? lst)
    (values '() '() '())
    (let-values ([(aes xs es) (translate-parts (cdr lst))])
      (cond
        ((atomic? (car lst)) (values (cons (car lst) aes) xs es))
        ((lambda? (car lst)) (values (cons (translate (car lst)) aes) xs es))
        (else 
          (letrec ((x (gensym "x")))
            (values (cons x aes) (cons x xs) (cons (translate (car lst)) es))))))))

(define (translate exp)
  (match exp 
    [(quasiquote (lambda (,@xs) ,@exs))
     `(lambda (,@xs) ,(translate `(begin ,@exs)))]
    [(quasiquote (spawn ,e))
     (let ((x (gensym)))
     `(letrec ((,x ,(translate e))) (spawn ,x)))]
    [(quasiquote (letrec ,bds ,@bdy))
     `(letrec ,(map (lambda (bdn) (list (car bdn) (translate (cadr bdn)))) bds)
             ,(translate `(begin ,@bdy)))]
    [(quasiquote (terminate)) `(terminate)]
    [(quasiquote (self)) `(self)]
    ; [(quasiquote (pair ,e1 ,e2))
    ;  (letrec ((x_e1 (gensym "e1"))
    ;           (x_e2 (gensym "e2")))
    ;    `(letrec ((,x_e1 ,(translate e1))
    ;              (,x_e2 ,(translate e2)))
    ;       (pair ,x_e1 ,x_e2)))]
    [(quasiquote (blame ,e))
     (letrec ((x (gensym "blame")))
       `(letrec ((,x ,(translate e)))
          (blame ,x)))]
    [(quasiquote (if ,e1 ,e2 ,e3))
     (if (atomic? e1)
        `(if ,e1 ,(translate e2) ,(translate e3))
         (letrec ((x-cnd (gensym "x-cnd")))
           `(letrec ((,x-cnd ,(translate e1)))
              (if ,x-cnd ,(translate e2) ,(translate e3)))))]
    [(quasiquote (dyn ,x)) `(dyn ,x)]
    [(quasiquote (begin ,@es0))
     (if (null? es0) 
       '() 
        (let ((es (filter nonempty-begin? es0)))
           (letrec ((xs (map (lambda ign (gensym)) es)))
             `(letrec
                (,@(map (lambda (x e) (list x (translate e))) xs es))
                ,(last xs)))))]
    [(quasiquote (meta ,e)) `(meta ,(translate e))]
    ;[(quasiquote (receive ,@xs)) (error "translate: receive not implemented")]
    [(quasiquote (match ,e ,clauses)) 
      (letrec ((x-e (gensym "x-e")))
        `(letrec ((,x-e ,(translate e)))
           (match ,x-e ,(map (lambda (clause) (list (car clause) (translate (cadr clause)))) clauses))))]

    [(quasiquote (parallel ,@es))
     `(parallel ,@(map translate es))]
    ;[(quasiquote (parametrize ,@xs)) (error "translate: parametrize not implemented")]
    [(quasiquote (,operator ,@operands))

     (let-values ([(aes xs es) (translate-parts (cons operator operands))])
       (if (null? xs)
           aes
          `(letrec
             (,@(map list xs es))
               ,aes)))]
    [x x]))

(define (lambda? x) (match x 
                      [(quasiquote (lambda ,xs ,@bdy)) #t] [_ #f]))
(define (atomic? x) 
  (match x 
    [(quasiquote (quote ,x)) #t]
    [_  (or (null? x) (boolean? x) (number? x) (symbol? x) (string? x))]))

(provide translate)
