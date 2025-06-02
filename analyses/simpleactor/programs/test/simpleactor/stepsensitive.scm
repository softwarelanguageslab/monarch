;; Test to check whether we can accurately allocate addresses
;; based on the mailbox contents
;;
;; This test should be precise enough to elliminate reachability of
;; the blame statement.
(letrec
  ((tracker (lambda (l)
     (trace l)
     (receive
       (((pair 'pop _) (tracker (cdr l)))
        ('done (if (null? l) 'ok (blame "error")))))))
   (tracker-act (spawn^ (tracker (cons 1 (cons 2 '()))))))

  (send^ tracker-act (cons 'pop 1))
  (send^ tracker-act (cons 'pop 2))
  (send^ tracker-act 'done))

          
