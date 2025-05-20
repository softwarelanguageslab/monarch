(letrec
  ((acc-beh (lambda (acc) (receive (('done (if (trace (null? acc)) (blame "acc null") 'ok))
                                    ((pair 'next v) (acc-beh (cons  v acc)))))))
  (acc-act (spawn^ (acc-beh '()))))

  (send^ acc-act (pair 'next 4))
  (send^ acc-act (pair 'next 5))
  (send^ acc-act 'done))

