;; The output of this test should be that for rcv-act the count of tst-act is infinity
;; since both rcv-act and main actor have access to it.
(letrec
  ((rcv-beh (lambda ()
              (receive
                ( (ref (begin (send^ ref 'foo) (rcv-beh)) ))) ))
  (rcv-act (spawn^ (rcv-beh)))
  (tst-act (spawn^ 'test)))

(send^  rcv-act tst-act))
