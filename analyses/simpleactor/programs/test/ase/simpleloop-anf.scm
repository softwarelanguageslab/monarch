(letrec ((any? (lambda (v) #t))
         (meta (lambda (v) v))
         (member
          (lambda (v lst)
            (letrec ((g3990
                      (letrec ((x-e3991 lst))
                        (match
                         x-e3991
                         ((() #f)
                          ((pair v1 vs)
                           (letrec ((x-cnd3992 (eq? v v1)))
                             (if x-cnd3992 #t (member v vs)))))))))
              g3990)))
         (unconstrained/c #f)
         (actor? (lambda (k j) (lambda (v) v)))
         (nonzero? (lambda (v) (letrec ((g3993 (= v 0))) (not g3993)))))
  (letrec ((loop
            (lambda (x)
              (letrec ((x-cnd3994 (= x 0)))
                (if x-cnd3994
                  1
                  (letrec ((g3995 (letrec ((g3996 (- x 1))) (loop g3996))))
                    (+ x g3995)))))))
    (loop 5)))
