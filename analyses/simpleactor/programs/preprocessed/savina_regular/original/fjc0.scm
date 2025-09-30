(letrec ((N 3)
         (perform-computation
          (lambda (theta) (let ((sint (+ 1 theta))) (* sint sint))))
         (forkjoin-actor
          (behavior () ((message () (perform-computation 37.2) (terminate)))))
         (loop
          (lambda (n)
            (if (= n N)
              'done
              (begin (send (spawn forkjoin-actor) message) (loop (+ n 1)))))))
  (loop 0))
