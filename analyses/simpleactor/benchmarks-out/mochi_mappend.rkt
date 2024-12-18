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
    (define (mappend xs ys)
      (if (empty? xs) ys (cons (car xs) (mappend (cdr xs) ys))))
    (define (map-append f xs)
      (if (empty? xs) empty (mappend (f (car xs)) (map-append f (cdr xs)))))
    (begin
      ((((lambda (j3985 k3986 f3987)
           (lambda (g3983 g3984)
             ((listof any/c)
              j3985
              k3986
              (f3987
               ((lambda (j3989 k3990 f3991)
                  (lambda (g3988)
                    ((listof any/c)
                     j3989
                     k3990
                     (f3991 (any/c j3989 k3990 g3988)))))
                j3985
                k3986
                g3983)
               ((listof any/c) j3985 k3986 g3984)))))
         'module
         'importer
         map-append)
        (input)
        (input))
       (((lambda (j3994 k3995 f3996)
           (lambda (g3992 g3993)
             ((listof any/c)
              j3994
              k3995
              (f3996
               ((listof any/c) j3994 k3995 g3992)
               ((listof any/c) j3994 k3995 g3993)))))
         'module
         'importer
         mappend)
        (input)
        (input))))))
