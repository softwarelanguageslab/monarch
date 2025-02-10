#lang racket

(provide translate)

(require "../utils.rkt")

(define (invalid-syntax for e)
  (error (format "invalid syntax for ~a at ~a" for e)))

(define (translate-cond clauses)
  (if (null? clauses)
      '()
      (let* ((clause (car clauses))
             (cnd (car clause))
             (bdy (cdr clause)))
        (if (eq? cnd 'else)
          `(begin ,@bdy)
          `(if ,cnd 
               (begin ,@bdy)
               ,(translate-cond (cdr clauses)))))))

(define (translate-and conditions)
  (cond 
    ((null? conditions) #f)
    ((null? (cdr conditions)) (translate (car conditions)))
    (else `(if ,(translate (car conditions)) ,(translate-and (cdr conditions)) #f))))

(define (translate-or conditions)
  (cond 
    ((null? conditions) #t)
    ((null? (cdr conditions)) (translate (car conditions)))
    (else 
      (let ((val (gensym "val")))
      `(letrec ((,val ,(translate (car conditions))))
         (if ,val
             ,val
             ,(translate-or (cdr conditions))))))))

(define (translate e)
  (match e
   [(quasiquote (behavior ,ags ,handlers))
    `(lambda ,ags 
       (letrec
         ((real-self self^))
         (parametrize 
            ((self (lambda (m) (send^ real-self m))))
             (receive 
               ,(map translate-handler handlers)))))]
   [(quasiquote (behavior ,@es))
    (invalid-syntax "behavior" e)]
   [(quasiquote (become ,b ,@ags))
    `(,b ,@ags)]
   [(quasiquote (become ,@es))
    (invalid-syntax "become" e)]
   [(quasiquote (send ,rcv  ,tag ,@payload))
    `(,(translate rcv) ,(uncurry (cons `(quote ,tag) (translate payload))))]
   [(quasiquote (send ,@es))
    (invalid-syntax "send" e)]
   [(quasiquote (spawn ,beh ,@ags))
    `(letrec ((act (spawn^ (,beh ,@ags))))
      (lambda (msg) 
          (send^ act msg)))]
   [(quasiquote (spawn ,@es))
    (invalid-syntax "spawn" e)]
   [(quasiquote (let ,bds ,@bdy))
    `(letrec ,(map (lambda (bdn) (list (car bdn) (translate (cadr bdn)))) bds) ,@(map translate bdy))]
   [(quasiquote (let* ,bds ,@bdy))
    `(letrec ,(map (lambda (bdn) (list (car bdn) (translate (cadr bdn)))) bds) ,@(map translate bdy))]
   [(quasiquote (cond ,@clauses))
    (translate-cond clauses)]
   [(quasiquote (and ,@conditions))
    (translate-and conditions)]
   [(quasiquote (or ,@conditions))
    (translate-or conditions)]
   [(quasiquote self)
    '(dyn self)]
   [(quasiquote (,es ...))
     `(,@(map translate es))]
   [x x]))


(define (translate-handler e)
  (match e 
    [(quasiquote (,tag ,ags ,@bdy))
     `(,(uncurry (cons `(quote ,tag) ags)) (begin ,@(translate bdy)))]
    [_ (error "invalid handler syntax")]))

(module+ main
   (displayln (translate '(behavior (x) ((ping () (print "ok"))))))
   (displayln (translate 
                '(letrec
                   ((counter (behavior (x) ((inc (n) (print x) (become counter (+ x n))))))
                    (actor (spawn counter)))

                   (send actor inc 1)))))


#|
(define inc/c (behavior/c 
                (message/c 'inc
                           (list)
                           any-recipient
                           unconstrained/c)))

(define inc/c (lambda (k j) 
                (lambda (m)
                  (match m 
                    (pair 'inc v)  
|#
