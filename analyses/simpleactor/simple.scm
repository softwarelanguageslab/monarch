(letrec
   ((foo (lambda () (receive (('test (foo))))))
    (foo-act (spawn^ (foo))))

   (send^ foo-act 'test))
