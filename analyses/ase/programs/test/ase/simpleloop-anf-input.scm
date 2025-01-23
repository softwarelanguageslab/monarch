(letrec ((loop
         (lambda (y)
           (letrec ((z (= y 0)))
           (if z
              #t
            (letrec ((v (- y 1)))
               (loop v)))))))

 (letrec ((in (input)))
    (loop in)))
