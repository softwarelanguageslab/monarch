(letrec
   ((test-actor (lambda ()
     (receive
       (('test
         (letrec ((test2 (spawn^ (test2-actor))))
           (send^ test2 'try)
           (send^ test2 'done)
           (test-actor)))))))
   (test2-actor (lambda ()
     (receive
       (('try (test2-actor))
        ('done 'done))))))

  (send^ (spawn^ (test-actor)) 'test)) 
