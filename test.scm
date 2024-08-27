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


(letrec 
 ((beh (behavior (x)
         ((inc () 
               (print x)
               (send (self) inc)
               (become beh (inc x)))))))

 (begin
   (send (spawn beh 0) inc)
   (wait-until-all-finished)))

;;(letrec 
;;  ((foo (mon server client (-> (flat nonzero?) (flat nonzero?)) (lambda (x) (+ x x)))))
;;
;;  (begin (foo 5)
;;         (foo 0)))
