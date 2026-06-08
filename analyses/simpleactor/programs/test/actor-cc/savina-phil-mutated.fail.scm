;; Mutated version of savina-phil.scm.
;;
;; Mutation: philosopher 1 sends 42 as the id in the 'hungry' and 'done' messages
;; instead of its actual id (1). This should trigger a blame error on the (=/c id)
;; contract checks in the 'hungry' and 'done' payload positions.

(define (philosopher/c arb id)
  (behavior/c
    (message/c 'start  ()
               unspecified-recipient
               (lambda ()
                 (ensures/c
                   (message/c 'hungry ((philosopher/c arb id) (=/c id))
                              (specific-recipient arb)
                              unconstrained/c))))
    (message/c 'denied ()
               unspecified-recipient
               (lambda ()
                 (ensures/c
                   (message/c 'hungry ((philosopher/c arb id) (=/c id))
                              (specific-recipient arb)
                              unconstrained/c))))
    (message/c 'eat    ()
               unspecified-recipient
               (lambda ()
                 (ensures/c
                   (message/c 'done ((=/c id))
                              (specific-recipient arb)
                              unconstrained/c)
                   (message/c 'start ()
                              unspecified-recipient
                              unconstrained/c))))))

(define num-forks 3)

(define arbitrator
  (behavior (forks)
    ((hungry (p id)
          (let ((left id) (right (modulo (+ id 1) num-forks)))
            (if (or (vector-ref forks left) (vector-ref forks right))
                (send p denied)
                (begin
                  (vector-set! forks left #t)
                  (vector-set! forks right #t)
                  (send p eat))))
          (become arbitrator forks))
     (done (id)
          (let ((left id) (right (modulo (+ id 1) num-forks)))
            (vector-set! forks left #f)
            (vector-set! forks right #f))
          (become arbitrator forks)))))

;; Mutated philosopher: sends 42 instead of id in hungry and done messages.
(define philosopher-mutated
  (behavior (arb id)
    ((start ()
         (send arb hungry self 42)   ;; BUG: should be id, not 42
         (become philosopher-mutated arb id))
     (denied ()
         (send arb hungry self 42)   ;; BUG: should be id, not 42
         (become philosopher-mutated arb id))
     (eat ()
         (send arb done 42)          ;; BUG: should be id, not 42
         (send self start)
         (become philosopher-mutated arb id)))))

(define philosopher
  (behavior (arb id)
    ((start ()
         (send arb hungry self id)
         (become philosopher arb id))
     (denied ()
         (send arb hungry self id)
         (become philosopher arb id))
     (eat ()
         (send arb done id)
         (send self start)
         (become philosopher arb id)))))

(define arbitrator-actor (spawn arbitrator (vector #f #f #f)))

;; phil1 uses the mutated behavior — its contract says id=1 but it sends 42.
(define phil1 (mon (loc 'client) (loc 'server) (philosopher/c arbitrator-actor 1) (spawn philosopher-mutated arbitrator-actor 1)))
(define phil2 (mon (loc 'client) (loc 'server) (philosopher/c arbitrator-actor 1) (spawn philosopher arbitrator-actor 1)))
(define phil3 (mon (loc 'client) (loc 'server) (philosopher/c arbitrator-actor 2) (spawn philosopher arbitrator-actor 2)))

(send phil1 start)
(send phil2 start)
(send phil3 start)
