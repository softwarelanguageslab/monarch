#lang simpleactor
;; This example program test the "self^" functionality of the SimpleActor language.
(letrec
  ((a (lambda () 
        (receive 
          ((sender (send^ sender 'reply)
                   (a))))))
   (b (lambda (a)
        (parametrize 
          ((self (self^)))
            (receive
              (('start (send^ a (dyn self)) (b a))
               ('reply (trace 'done) (b a)))))))
   (a-actor (spawn^ (a)))
   (b-actor (spawn^ (b a-actor))))

  (send^ b-actor 'start))
