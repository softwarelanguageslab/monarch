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
    (define (foldr f z xs)
      (if (empty? xs) z (f (car xs) (foldr f z (cdr xs)))))
    (define (map f xs) (foldr (λ (x ys) (cons (f x) ys)) empty xs))
    (begin
      ((((lambda (j3986 k3987 f3988)
           (lambda (g3983 g3984 g3985)
             (any/c
              j3986
              k3987
              (f3988
               ((lambda (j3991 k3992 f3993)
                  (lambda (g3989 g3990)
                    (any/c
                     j3991
                     k3992
                     (f3993
                      (any/c j3991 k3992 g3989)
                      (any/c j3991 k3992 g3990)))))
                j3986
                k3987
                g3983)
               (any/c j3986 k3987 g3984)
               ((listof any/c) j3986 k3987 g3985)))))
         'module
         'importer
         foldr)
        (input)
        (input)
        (input))
       (((lambda (j3996 k3997 f3998)
           (lambda (g3994 g3995)
             ((listof any/c)
              j3996
              k3997
              (f3998
               ((lambda (j4000 k4001 f4002)
                  (lambda (g3999)
                    (any/c j4000 k4001 (f4002 (any/c j4000 k4001 g3999)))))
                j3996
                k3997
                g3994)
               ((listof any/c) j3996 k3997 g3995)))))
         'module
         'importer
         map)
        (input)
        (input))))))
