(letrec ((num-messages 10)
         (num-workers 2)
         (vector-foreach
          (lambda (f v)
            (letrec ((loop
                      (lambda (i)
                        (if (< i (vector-length v))
                          (begin (f (vector-ref v i)) (loop (+ i 1)))
                          'done))))
              (loop 0))))
         (big-actor
          (behavior
           (id num-pings sink exp-pinger neighbors)
           ((ping
             (sender-id)
             (send (vector-ref neighbors sender-id) pong id)
             (become big-actor id num-pings sink exp-pinger neighbors))
            (pong
             (sender)
             (if (= sender exp-pinger)
               (if (= num-pings num-messages)
                 (begin
                   (send sink exit)
                   (become big-actor id num-pings sink exp-pinger neighbors))
                 (let ((target-id (random (vector-length neighbors)))
                       (target (vector-ref neighbors target-id)))
                   '()
                   (become
                    big-actor
                    id
                    (+ num-pings 1)
                    sink
                    target-id
                    neighbors)))
               (error
                (format
                 "expected ~a, but received ping from ~a"
                 exp-pinger
                 sender))))
            (exit () (terminate))
            (neighbors
             (new-neighbors)
             (become big-actor id num-pings sink exp-pinger new-neighbors)))))
         (sink-actor
          (behavior
           (num-messages neighbors)
           ((exit
             ()
             (if (= (+ num-messages 1) num-workers)
               (begin
                 (vector-foreach (lambda (a) (send a exit)) neighbors)
                 (terminate))
               (become sink-actor (+ num-messages 1) neighbors)))
            (neighbors
             (new-neighbors)
             (become sink-actor num-messages new-neighbors)))))
         (sink (spawn sink-actor 0 #f))
         (big-actors
          (vector
           (spawn big-actor 0 0 sink -1 #f)
           (spawn big-actor 1 0 sink -1 #f))))
  '()
  (vector-foreach (lambda (a) (send a neighbors big-actors)) big-actors)
  (vector-foreach (lambda (a) '()) big-actors))
