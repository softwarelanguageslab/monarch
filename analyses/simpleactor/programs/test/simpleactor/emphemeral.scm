(letrec
   ((test-actor (lambda ()
     (receive
       (('test
         (letrec ((test2 (spawn^ (test2-actor))))
           (send^ test2 'try)
           (send^ test2 'done)
           (test-actor)))
        ('finish
          'done)))))      
   (test2-actor (lambda ()
     (receive
       (('try (test2-actor))
        ('done 'done)))))
   (test-inst (spawn^ (test-actor))))

  (send^ test-inst 'test)
  (send^ test-inst 'test)
  (send^ test-inst 'finish)
  (send^ test-inst test-inst))
