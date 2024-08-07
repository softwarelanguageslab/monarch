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

((lambda (g1518) (letrec ((g1519 ((lambda (f) (f 42)) (lambda (g1520) (letrec ((g1521 (g1518 (letrec ((g1522 g1520)) (if (nonzero? g1522) g1522 (blame (quote j) (quote nonzero?))))))) (if (positive? g1521) g1521 (blame (quote k) (quote positive?)))))))) (if (positive? g1519) g1519 (blame (quote j) (quote positive?))))) (lambda (x) (* x -1)))
