#lang racket

(provide translate)

(define (invalid-syntax for e)
  (error (format "invalid syntax for ~a at ~a" for e)))

(define (translate e)
  (match e
   [(quasiquote (behavior ,ags ,handlers))
    `(lambda ,ags 
       (parametrize 
         ((self (lambda (m) (send^ self^ m))))
          (receive 
            ,(map translate-handler handlers))))]
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
    `(lambda (msg) 
       (letrec ((act (spawn^ (,beh ,@ags))))
         (send^ act msg)))]
   [(quasiquote (spawn ,@es))
    (invalid-syntax "spawn" e)]
   [(quasiquote self)
    '(dyn self)]
   [(quasiquote (,es ...))
     `(,@(map translate es))]
   [x x]))

(define (uncurry ags)
  (cond
    ((null? (cdr ags)) (car ags))
    ((pair? ags) `(pair ,(car ags) ,(uncurry (cdr ags))))))

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
