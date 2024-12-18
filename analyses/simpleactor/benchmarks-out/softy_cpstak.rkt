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
    (define (tak x y z k)
      (if (not (< y x))
        (k z)
        (tak
         (- x 1)
         y
         z
         (lambda (v1)
           (tak
            (- y 1)
            z
            x
            (lambda (v2) (tak (- z 1) x y (lambda (v3) (tak v1 v2 v3 k)))))))))
    (define (tak-main x y z) (tak x y z (λ (x) x)))
    (begin
      ((((lambda (j3986 k3987 f3988)
           (lambda (g3983 g3984 g3985)
             (integer?
              j3986
              k3987
              (f3988
               (integer? j3986 k3987 g3983)
               (integer? j3986 k3987 g3984)
               (integer? j3986 k3987 g3985)))))
         'module
         'importer
         tak-main)
        (input)
        (input)
        (input))))))
