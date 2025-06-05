(letrec
  ((ping-behavior (behavior ()
                    ((ping (sender) 
                        (print 'ping)
                        (send sender pong (self^)) 
                        (become ping-behavior)))))
   (pong-behavior (behavior ()
                   ((pong (sender)
                        (print 'pong)
                        (send sender ping (self^))
                        (become pong-behavior)))))
   (ping/c (lambda () 
              (behavior/c 
                  (message/c 'ping (actor?) 
                             unspecified-recipient
                             (ensures/c (message/c 'pong 
                                                   (actor?)
                                                   unspecified-recipient
                                                   (ping/c))))))))

  (letrec ((ping (mon client server (ping/c) (spawn ping-behavior)))
           (pong (spawn pong-behavior)))
    (begin (send ping ping pong)
           (wait-until-all-finished))))
