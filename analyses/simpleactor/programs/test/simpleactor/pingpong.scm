(letrec
  ((ping-behavior (lambda ()
                    (receive
                      (((pair 'ping sender) (begin (send^ sender (pair 'pong self^))
                                                  (ping-behavior)))))))
   (pong-behavior (lambda ()
                     (receive
                       (((pair 'pong sender) (begin (send^ sender (pair 'ping self^))))))))
   (ping (spawn^ (ping-behavior)))
   (pong (spawn^ (pong-behavior))))


  (send^ ping (pair 'ping pong)))

