#lang racket

(require "../../actor.rkt")

(define helloworld 
  (behavior () 
      (start ()
         (displayln "hello world") 
         (terminate))))

(define helloworld-actor (spawn helloworld))
(send helloworld-actor 'start)
(wait-until-termination helloworld-actor)
