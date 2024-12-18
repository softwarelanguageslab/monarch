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
    (define (g x) (λ (_) x))
    (define (twice f x y) ((f (f x)) y))
    (define (neg x) (λ (_) (- 0 (x #f))))
    (define (main n) (if (>= n 0) (twice neg (g n) 'unit) 42))
    (begin
      ((((lambda (j3984 k3985 f3986)
           (lambda (g3983)
             ((and/c integer? (>=/c 0))
              j3984
              k3985
              (f3986 (integer? j3984 k3985 g3983)))))
         'module
         'importer
         main)
        (input))))))
