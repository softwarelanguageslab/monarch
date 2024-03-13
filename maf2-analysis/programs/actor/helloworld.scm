(define helloworld-behavior 
   (behavior ()
      (hello () (quote world))))

(define actor (spawn helloworld-behavior))
(send actor hello)
