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
    (define (mult n m) (if (or (<= n 0) (<= m 0)) 0 (+ n (mult n (- m 1)))))
    (define (sqr n) (mult n n))
    (begin
      ((((lambda (j3985 k3986 f3987)
           (lambda (g3983 g3984)
             ((and/c integer? (>=/c 0))
              j3985
              k3986
              (f3987
               (integer? j3985 k3986 g3983)
               (integer? j3985 k3986 g3984)))))
         'module
         'importer
         mult)
        (input)
        (input))
       ((->d integer? (lambda (n) (and/c integer? (>=/c n))))
        'module
        'importer
        sqr)))))
