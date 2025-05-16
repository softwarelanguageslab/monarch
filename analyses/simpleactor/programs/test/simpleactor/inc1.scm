;; Example of a SimpleActor program.
;  should generate a blame error for the "ref"
; actor since x could be equal to 1.
(letrec 
 ((beh (lambda (x)
        (receive 
          (('inc (begin
                     (if (= x 1)
                         (blame "= x 1")
                         'ok)
                     (send^ self^ 'inc)
                     (beh (+ x 1)))))))))
 (letrec
   ((ref (spawn^ (beh 0))))
     (send^ ref 'inc)
     (send^ ref 'inc)
     (wait-until-all-finished)))
