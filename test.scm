(letrec 
  (beh (lambda (x) 
         (receive 
           (('inc (begin 
                   (print x)
                   (send (self) 'inc)
                   (beh (inc x))))))))
  (begin 
    (send (spawn (beh 0)) 'inc)
    (wait-until-all-finished 0)))

