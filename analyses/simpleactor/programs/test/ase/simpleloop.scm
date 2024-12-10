(letrec 
  ((loop (lambda (x) (if (= x 0) 1 (+ x (loop (- x 1)))))))

  (loop 5))
