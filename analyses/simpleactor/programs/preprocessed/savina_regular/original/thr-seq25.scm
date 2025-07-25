(letrec ((N 3)
         (R 10)
         (threadring-actor
          (actor
           "thread-ring"
           (id actors-in-ring next-actor)
           (ping
            (pings-left)
            (if (> pings-left 0)
              (begin
                '()
                (become threadring-actor id actors-in-ring next-actor))
              (begin
                '()
                (become threadring-actor id actors-in-ring next-actor))))
           (data (next) (become threadring-actor id actors-in-ring next))
           (exit
            (exits-left)
            (if (> exits-left 1) (send next-actor exit (- exits-left 1)) #f)
            (terminate))))
         (ring-actors
          (vector
           (create threadring-actor 0 3 #f)
           (create threadring-actor 1 3 #f)
           (create threadring-actor 2 3 #f)))
         (loop-next
          (lambda (i)
            (if (= i N)
              'done
              (begin
                (send (vector-ref ring-actors i) data
                  (vector-ref ring-actors (modulo (+ i 1) N)))
                (loop-next (+ i 1)))))))
  (loop-next 0)
  '())
