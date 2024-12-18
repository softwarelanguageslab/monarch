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
    (define (lock st) 1)
    (define (unlock st) 0)
    (define (f n st) (if (> n 0) (lock st) st))
    (define (g n st) (if (> n 0) (unlock st) st))
    (define (main n) (g n (f n 0)))
    (begin
      ((((lambda (j3984 k3985 f3986)
           (lambda (g3983)
             ((one-of/c 0) j3984 k3985 (f3986 (integer? j3984 k3985 g3983)))))
         'module
         'importer
         main)
        (input))))))
