;; Example of a SimpleActor program. 
(letrec 
 ((beh (lambda (x) 
        (receive 
          (('inc (begin 
                     (trace x)
                     (send^ self^ 'inc)
                     (beh (+ x 1)))))))))
 (begin 
   (send^ (spawn^ (beh 0)) 'inc)
   (send^ (spawn^ (beh 0)) 'inc)
   (wait-until-all-finished)))
