(letrec
  ((ping-behavior (behavior ()
                    ((ping (sender) 
                        (send sender 'pong) 
                        (become ping-behavior)))))
   (pong-behavior (behavior ()
                   ((pong (sender)
                        (send sender 'ping)
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

    (send ping 'ping pong)))
