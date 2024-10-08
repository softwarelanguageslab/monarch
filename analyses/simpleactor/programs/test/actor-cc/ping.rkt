(letrec
  ((ping-behavior (behavior ()
                    ((ping (sender) 
                        (print "ping")
                        (send sender pong) 
                        (become ping-behavior)))))
   (pong-behavior (behavior ()
                   ((pong (sender)
                        (print "pong")
                        (send sender ping)
                        (become pong-behavior)))))
   (ping/c (lambda () 
              (behavior/c 
                  (message/c 'ping () 
                             unspecified-recipient
                             (ensures/c (message/c 'pong 
                                                   ()
                                                   unspecified-recipient
                                                   (ping/c))))))))

  (letrec ((ping (spawn (mon client server (ping/c) ping-behavior)))
           (pong (spawn pong-behavior)))
    (send ping ping pong)
    (wait-until-all-finished)))
