;; Adapted from the Savina benchmarks (for the original benchmark program, see programs/benchmarks/actors/savina/phil.scm)
;; 
;; The contracts are on the philosophers and arbitrator. The protocol is as follows:
;; - if the philosopher gets a "denied" message it should send the "hungry" message
;; to the arbitrator.
;; - if the philosopher gets an "eat" message, it should send the "start" message to itself, then 
;; eat, and send "hungry" to the arbitrator again.
;; 
;; The missing part in this contract is the arbitrator itself, however this requires a 
;; different type of contract, which is the "or/c" contract on a message level. This is because
;; the arbitrator must send a "denied" or "eat" message depending on its internal state to
;; the original sender. Unfortunately, the contract system in the SimpleActor language does not 
;; currently support this type of message contract 
;;
;; The difference with the "programs/benchmarks/actors/savina/phil.scm" program is that this 
;; version is not designed to terminate. The philosophers will keep eating until the program
;; is killed externally. Hence the message "done", and "exit" are not implemented, and neither
;; the arbitrator, nor the philosophers, track a number of turn count.

;;
;; Contracts
;;

;; The contracts primarily showcase the following contract system features:
;; - higher-order contracts on actor references
;; - multiple messages in an ensures/c contract

;; Parameterized by the arbitrator so that outgoing 'hungry' messages
;; can name it as the specific recipient, and 'start' sent to self can
;; name self as the specific recipient.
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


;; TODO: contracts on the arbitrator (unused due to limitations in the contract system)

;;
;; Constants
;;

(define num-forks 3)

;;
;; Behaviors
;;


(define arbitrator
  (behavior (forks)
    ((hungry (p id)
          (let ((left id) (right (modulo (+ id 1) num-forks)))
            (if (or (vector-ref forks left) (vector-ref forks right))
                (send p denied)
                (begin
                  (trace 'sending-eat)
                  ;; Modeled as side effects, probably not the best thing to do...
                  ;; but since there is only one arbitrator, that should be fine
                  (vector-set! forks left #t)
                  (vector-set! forks right #t)
                  (send p eat))))
          (become arbitrator forks))
     (done (id)
          (let ((left id) (right (modulo (+ id 1) num-forks)))
            (vector-set! forks left #f)
            (vector-set! forks right #f))
          (become arbitrator forks)))))


(define philosopher
  (behavior (arb id)
    ((start ()
         (trace 'start)
         (send arb hungry self id)
         (become philosopher arb id))
     (denied ()
         (trace 'denied)
         (send arb hungry self id)
         (become philosopher arb id))
     (eat ()
         (trace 'eat)
         (send arb done id)
         (send self start)
         (become philosopher arb id)))))


;; Actor instances

(define arbitrator-actor (spawn arbitrator (vector #f #f #f)))

(define phil1 (mon (loc 'client) (loc 'server) (philosopher/c arbitrator-actor 0) (spawn philosopher arbitrator-actor 0)))
(define phil2 (mon (loc 'client) (loc 'server) (philosopher/c arbitrator-actor 1) (spawn philosopher arbitrator-actor 1)))
(define phil3 (mon (loc 'client) (loc 'server) (philosopher/c arbitrator-actor 2) (spawn philosopher arbitrator-actor 2)))

(send phil1 start)
(send phil2 start)
(send phil3 start)
