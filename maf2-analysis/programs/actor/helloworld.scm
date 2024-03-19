(define helloworld-behavior 
   (behavior ()
      (hello () 'world)))

(define actor (spawn helloworld-behavior))
(send actor hello)
