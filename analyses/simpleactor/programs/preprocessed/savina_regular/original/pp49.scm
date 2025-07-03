(letrec ((ping-actor
          (behavior
           (count pong)
           ((start () '() (become ping-actor (- count 1) pong))
            (ping () '() (become ping-actor (- count 1) pong))
            (send-pong
             ()
             (if (> count 0)
               (begin (send self ping) (become ping-actor count pong))
               (begin (send pong stop) (terminate)))))))
         (pong-actor
          (behavior
           (count)
           ((stop () (terminate))
            (send-ping
             (to)
             (send to send-pong)
             (become pong-actor (+ count 1))))))
         (pong (spawn pong-actor 0))
         (N 5)
         (ping (spawn ping-actor N pong)))
  '())
