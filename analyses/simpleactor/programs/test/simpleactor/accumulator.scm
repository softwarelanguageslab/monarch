;; With a mailbox contents sensitivity this should not result
;; in a blame error.
(letrec
  ((acc-beh (lambda (acc) (receive (('done (if (null? (trace acc)) (blame "acc null") (trace 'ok)))
                                    ((pair 'next v) (acc-beh (cons  v acc)))))))
   (acc-act (spawn^ (acc-beh '()))))

  (send^ acc-act (pair 'next 4))
  (send^ acc-act (pair 'next 5))
  (send^ acc-act 'done))

