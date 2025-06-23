(letrec ((ping-behavior
          (behavior
           ()
           ((ping
             (sender)
             (print sender)
             (send sender pong self)
             (become ping-behavior)))))
         (pong-behavior
          (behavior
           ()
           ((pong (sender) (print 'pong) '() (become pong-behavior)))))
         (ping/c
          (behavior/c
           (message/c 'ping (actor?) unspecified-recipient (ping/cm))))
         (ping/cm
          (lambda ()
            (ensures/c
             (message/c
              'pong
              (actor?)
              unspecified-recipient
              (ensures/c
               (message/c 'ping (actor?) unspecified-recipient (ping/cm))))))))
  (letrec ((ping (mon client server ping/c (spawn ping-behavior)))
           (pong (spawn pong-behavior)))
    (begin '() (wait-until-all-finished))))
