(letrec ((any? (lambda (v) #t))
         (meta (lambda (v) v))
         (member
          (lambda (v lst)
            (begin
              (match
               lst
               ((() #f) ((pair v1 vs) (if (eq? v v1) #t (member v vs))))))))
         (unconstrained/c #f)
         (actor? (lambda (k j) (lambda (v) v)))
         (nonzero? (lambda (v) (not (= v 0)))))
  (begin
    (define (f g) (λ (x y) (g (+ x 1) (+ y 1))))
    (define (unzip x k) (if (= x 0) (k 0 0) (unzip (- x 1) (f k))))
    (define (zip x y)
      (if (= x 0)
        (if (= y 0) 0 'fail)
        (if (= y 0) 'fail (+ 1 (zip (- x 1) (- y 1))))))
    (define (main n) (unzip n zip))
    (begin
      ((((lambda (j3984 k3985 f3986)
           (lambda (g3983)
             ((lambda (j3989 k3990 f3991)
                (lambda (g3987 g3988)
                  (integer?
                   j3989
                   k3990
                   (f3991
                    (integer? j3989 k3990 g3987)
                    (integer? j3989 k3990 g3988)))))
              j3984
              k3985
              (f3986
               ((lambda (j3994 k3995 f3996)
                  (lambda (g3992 g3993)
                    (integer?
                     j3994
                     k3995
                     (f3996
                      (integer? j3994 k3995 g3992)
                      (integer? j3994 k3995 g3993)))))
                j3984
                k3985
                g3983)))))
         'module
         'importer
         f)
        (input))
       (((lambda (j3998 k3999 f4000)
           (lambda (g3997)
             (integer? j3998 k3999 (f4000 (integer? j3998 k3999 g3997)))))
         'module
         'importer
         main)
        (input))))))
