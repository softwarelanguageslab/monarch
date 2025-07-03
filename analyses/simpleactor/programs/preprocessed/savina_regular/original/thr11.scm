(letrec ((N 3)
         (R 10)
         (threadring-actor
          (behavior
           (id actors-in-ring next-actor)
           ((ping
             (pings-left)
             (if (> pings-left 0)
               (begin
                 (send next-actor ping (- pings-left 1))
                 (become threadring-actor id actors-in-ring next-actor))
               (begin
                 '()
                 (become threadring-actor id actors-in-ring next-actor))))
            (data (next) (become threadring-actor id actors-in-ring next))
            (exit
             (exits-left)
             (if (> exits-left 1) (send next-actor exit (- exits-left 1)) #f)
             (terminate)))))
         (build-vector
          (lambda (n f)
            (letrec ((v (make-vector n #f))
                     (loop
                      (lambda (i)
                        (if (< i n)
                          (begin (vector-set! v i (f i)) (loop (+ i 1)))
                          v))))
              (loop 0))))
         (ring-actors
          (build-vector N (lambda (i) (spawn threadring-actor i N #f))))
         (loop-next
          (lambda (i) (if (= i N) 'done (begin '() (loop-next (+ i 1)))))))
  (loop-next 0)
  '())
