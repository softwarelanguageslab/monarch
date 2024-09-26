;;(letrec 
;;  (beh (lambda (x) 
;;         (receive 
;;           (('inc (begin 
;;                   (print x)
;;                   (send (self) 'inc)
;;                   (beh (inc x))))))))
;;  (begin 
;;    (send (spawn (beh 0)) 'inc)
;;    (wait-until-all-finished 0)))


;(letrec 
; ((beh (behavior (x)
;         ((inc () 
;               ;(print x)
;               (send (self) inc)
;               (become beh (+ x 1)))))))
;
; (begin
;   (send (spawn beh 0) inc)))
;   ;(wait-until-all-finished)))

; (if #f (blame 'server) 'nil)
; (letrec 
;   ((foo (mon server client (-> (flat nonzero?) (flat nonzero?)) (lambda (x) (* x x)))))
; 
;   (begin (foo 5)
;          (foo 5)))
;(letrec
;  ((f (lambda (y) (dyn x))))
;   (parametrize 
;     ((x 5))
;
;     (f 3)))
(if (bool-top)
    (if (< (if (bool-top) 10 20) 30)
      20
      30)
    20)
