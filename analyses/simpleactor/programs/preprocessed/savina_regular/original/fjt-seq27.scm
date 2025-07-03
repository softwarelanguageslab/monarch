(letrec ((N 10)
         (A 3)
         (perform-computation
          (lambda (theta) (let ((sint (+ 1 theta))) (* sint sint))))
         (throughput-actor
          (actor
           "throughput"
           (processed)
           (message
            ()
            (perform-computation 37.2)
            (if (= (+ processed 1) N)
              (terminate)
              (become throughput-actor (+ processed 1))))))
         (actor1 (create throughput-actor 0))
         (actor2 (create throughput-actor 0))
         (actor3 (create throughput-actor 0))
         (loop
          (lambda (n) (if (= n N) 'done (begin '() '() '() (loop (+ n 1)))))))
  (loop 0))
