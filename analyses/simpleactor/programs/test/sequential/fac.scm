;; Example of a program that computes the factorial
(letrec ((fac (lambda (x)
           (if (= x 0)
               1
               (* x (fac (- x 1)))))))

  (fac (fresh (random 42))))

