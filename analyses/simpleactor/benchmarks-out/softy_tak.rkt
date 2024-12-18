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
    (define (tak x y z)
      (if (< y x)
        (tak (tak (- x 1) y z) (tak (- y 1) z x) (tak (- z 1) x y))
        z))
    (begin
      ((((lambda (j3986 k3987 f3988)
           (lambda (g3983 g3984 g3985)
             (number?
              j3986
              k3987
              (f3988
               (number? j3986 k3987 g3983)
               (number? j3986 k3987 g3984)
               (number? j3986 k3987 g3985)))))
         'module
         'importer
         tak)
        (input)
        (input)
        (input))))))
