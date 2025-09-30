(letrec ((N 3)
         (M 3)
         (rounds M)
         (num-forks N)
         (counter-actor
          (behavior
           (n)
           ((add (m) (become counter-actor (+ n m)))
            (finish () (display n) (terminate)))))
         (arbitrator-actor
          (behavior
           (forks num-exited)
           ((hungry
             (p id)
             (let ((left id) (right (modulo (+ id 1) num-forks)))
               (if (or (vector-ref forks left) (vector-ref forks right))
                 '()
                 (begin
                   (vector-set! forks left #t)
                   (vector-set! forks right #t)
                   '())))
             (become arbitrator-actor forks num-exited))
            (done
             (id)
             (displayln "done")
             (let ((left id) (right (modulo (+ id 1) num-forks)))
               (vector-set! left #f)
               (vector-set! right #f))
             (become arbitrator-actor forks num-exited))
            (exit
             ()
             (if (= (+ num-exited 1) num-forks)
               (terminate)
               (become arbitrator-actor forks (+ num-exited 1)))))))
         (philosopher-actor
          (behavior
           (id rounds-so-far local-counter)
           ((denied
             ()
             (displayln 'denied)
             '()
             (become philosopher-actor id rounds-so-far (+ local-counter 1)))
            (eat
             ()
             '()
             (if (< (+ rounds-so-far 1) rounds)
               (begin
                 '()
                 (become
                  philosopher-actor
                  id
                  (+ rounds-so-far 1)
                  local-counter))
               (begin
                 (displayln (format "done ~a" id))
                 (send arbitrator done id)
                 (terminate))))
            (start
             ()
             '()
             (become philosopher-actor id rounds-so-far local-counter)))))
         (counter (spawn counter-actor 0))
         (arbitrator (spawn arbitrator-actor (vector #f #f #f) 0))
         (phil1 (spawn philosopher-actor 0 0 0))
         (phil2 (spawn philosopher-actor 0 0 0))
         (phil3 (spawn philosopher-actor 0 0 0)))
  '()
  '()
  (send phil3 start))
