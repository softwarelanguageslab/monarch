; Higher-level λα
;(letrec 
; ((beh (behavior (x)
;         ((inc () 
;               ;(print x)
;               (send self inc)
;               (become beh (+ x 1)))))))
;
; (begin
;   (send (spawn beh 0) inc)))
;   ; (wait-until-all-finished)))

(behavior/c 
  (message/c 'inc (number?/c) any-recipient unconstrained/c))

;; Higher-level contract language
; (if #f (blame 'server) 'nil)
; (letrec 
;   ((foo (mon server client (-> (flat nonzero?) (flat nonzero?)) (lambda (x) (* x x)))))
; 
;   (begin (foo 5)
;          (foo 5)))

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
;(letrec 
;  ((inc/c (behavior/c (message/c 'inc (list number?) unspecified-recipient unconstrained/c)))
;   (inc-behavior (behavior (x) ((inc () (become inc-behavior (+ x 1))))))
;   (inc-actor (mon server client inc/c (spawn inc-behavior 0))))
;
;  (send inc-actor inc))
