#lang simpleactor
;; With a mailbox contents sensitivity this should not result
;; in a blame error.
(letrec
  ((acc-beh (lambda (acc) (receive (('done (if (null? (trace acc)) (blame "acc null") (trace 'ok)))
                                    ((pair 'next v) (acc-beh (cons  v acc)))))))
   (acc-act (spawn^ (acc-beh '())))
   (test-act (spawn^ (receive ((x (begin 'ok)))))))

  (send^ acc-act (cons 'next 4))
  (send^ acc-act (cons 'next 5))
  (send^ acc-act 'done))

