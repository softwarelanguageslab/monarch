;; This examples demonstrates that path constraints can be shared across actor boundaries. 
;; We do so only partially by tracing which symbolic variables are part of the message and 
;; keeping only those parts in the set of constraints.
;;
;; We rely on the "+" being monitored by a contract "(-> integer? integer?)" so that 
;; a blame is generated whenever the message payload is not an integer. 
;;
;; A fully precise analysis must validate this program as "safe", as the fresh variable 
;; "x" is constrained to an integer before sending the message.
(letrec
  ((original-+ +))

  (letrec
    ((x (trace (fresh)))
     (+ (lambda (a b) (if (if (integer? (trace a))
                              (integer? (trace b))
                              #f)
                        (original-+ a b)
                        (blame (loc 'cilent) '()))))
     (behavior (lambda () 
                 (receive
                   (((cons 'test payload) (trace (+ x 1))
                                          (behavior))))))
     (act (spawn^ (behavior))))

    (if (integer? x)
      (send^ act (cons 'test x))
      'done)))
