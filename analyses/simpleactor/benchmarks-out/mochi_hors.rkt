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
    (define (c _) 'unit)
    (define (b x _) (x 1))
    (define (a x y q) (if (= q 0) (begin (x 0) (y 0)) (error 'invalid)))
    (define (f n x q)
      (if (<= n 0) (x q) (a x (λ (p) (f (- n 1) (λ (_) (b x _)) p)) q)))
    (define (s n q) (f n c q))
    (define (main n) (s n 0))
    (begin
      ((((lambda (j3984 k3985 f3986)
           (lambda (g3983)
             (any/c j3984 k3985 (f3986 (integer? j3984 k3985 g3983)))))
         'module
         'importer
         main)
        (input))))))
