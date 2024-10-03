;; Translations should be idempotent
(letrec 
 ((beh (lambda (x) 
        (receive 
          (('inc (begin 
                     (print x)
                     (send^ self^ 'inc)
                     (beh (+ x 1)))))))))
 (begin 
   (send^ (spawn^ (beh 0)) 'inc)
   (wait-until-all-finished)))
