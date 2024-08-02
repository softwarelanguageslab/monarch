(letrec 
  (beh (lambda (x) 
         (receive 
           (('inc (begin 
                   (print x)
                   (send (self) 'inc)
                   (beh (inc x))))))))
  (begin 
    (send (spawn (beh 0)) 'inc)
    (letrec (f (lambda (_) (f 42))) (f 42))))

