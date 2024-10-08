;(letrec
;  ((inc/c (behavior/c (message/c 'inc () any-recipient unconstrained/c))))
;  (letrec 
;    ((beh (behavior (x)
;            ((inc () 
;                  (print x)
;                  (send self inc)
;                  (become beh (+ x 1)))))))
;    (letrec 
;      ((inc-actor (mon client server inc/c (spawn beh 0))))
;      (begin
;         (send inc-actor inc)
;         (wait-until-all-finished)))))

;; Experiments with the `parametrize` special form
;(letrec
;  ((f (lambda (y) (dyn x))))
;   (parametrize 
;     ((x 5))
;
;     (f 3)))

;; Path-sensitivity experiments
;(if (bool-top)
;    (if (< (if (bool-top) 10 20) 30)
;      20
;      30)
;    20)

;; Actor contract language
;; 
(letrec 
  ((inc/c (behavior/c (message/c 'inc (number?) unspecified-recipient unconstrained/c)))
   (inc-behavior (behavior (x) ((inc () (become inc-behavior (+ x 1))))))
   (inc-actor (mon server client inc/c (spawn inc-behavior 0))))

  (send inc-actor inc))


