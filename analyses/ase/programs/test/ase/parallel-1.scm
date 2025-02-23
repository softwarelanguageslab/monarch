(letrec ((loop
         (lambda (y)
           (letrec ((z (= y 0)))
           (if z
              #t
            (letrec ((v (- y 1)))
               (loop v)))))))

(parallel 
 (letrec ((in (input))) ;; 1
    (loop in))
 (letrec ((in (input))) ;; 2
    (loop in))
 (letrec ((in (input))) ;; 3
    (loop in))
 (letrec ((in (input))) ;; 4
    (loop in))
 (letrec ((in (input))) ;; 5
    (loop in))
 (letrec ((in (input))) ;; 6
    (loop in))
 (letrec ((in (input))) ;; 7
    (loop in))
 (letrec ((in (input))) ;; 8
    (loop in))
 (letrec ((in (input))) ;; 9
    (loop in))
 (letrec ((in (input))) ;; 10
    (loop in))
 (letrec ((in (input))) ;; 11
       (loop in))

 ))
