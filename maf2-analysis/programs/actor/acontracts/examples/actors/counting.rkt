(define N 10)

(define counter
  (behavior (count)
      (step () 
       (if (> count N)
           (terminate)
           (begin 
             (displayln (format "count ~a" count))
             (send counter-actor step)
             (become counter (+ count 1)))))))


(define counter-actor (spawn counter 0))
(send counter-actor step)
; (wait-until-termination counter-actor)
