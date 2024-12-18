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
    (define (f g x) (if (>= x 0) (g x) (f (λ (x) (f g x)) (g x))))
    (define (main n) (f add1 n))
    (begin
      ((((lambda (j3985 k3986 f3987)
           (lambda (g3983 g3984)
             (integer?
              j3985
              k3986
              (f3987
               ((lambda (j3989 k3990 f3991)
                  (lambda (g3988)
                    (integer?
                     j3989
                     k3990
                     (f3991 (integer? j3989 k3990 g3988)))))
                j3985
                k3986
                g3983)
               (integer? j3985 k3986 g3984)))))
         'module
         'importer
         f)
        (input)
        (input))
       (((lambda (j3993 k3994 f3995)
           (lambda (g3992)
             ((and/c integer? (>=/c 0))
              j3993
              k3994
              (f3995 (integer? j3993 k3994 g3992)))))
         'module
         'importer
         main)
        (input))))))
