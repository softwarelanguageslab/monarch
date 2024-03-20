#lang racket

(require "../../main.rkt")

(define double/c 
  (behavior/c '() 
    (list 
       (message/c 'double (list actor? number?) any-recipient unconstrained/c)
       (message/c 'stop '() any-recipient unconstrained/c))))

(define double (behavior () 
   (double (sender n) 
           (send sender 'answer (* n 2))
           (become double))
   (stop () (terminate))))

(define screen (behavior ()
   (answer (vlu) 
           (displayln vlu)
           (send double-actor 'stop)
           (become screen))))

(define double-actor (spawn/c double/c double))
(define display-actor (spawn screen))
(send double-actor 'double display-actor 8)

(wait-until-termination double-actor)
