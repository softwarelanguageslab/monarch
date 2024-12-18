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
    (define (Y f)
      (λ (y)
        (((λ (x) (f (λ (z) ((x x) z)))) (λ (x) (f (λ (z) ((x x) z))))) y)))
    (define (last l)
      ((Y (λ (f) (λ (x) (if (empty? (cdr x)) (car x) (f (cdr x)))))) l))
    (begin
      ((((lambda (j3984 k3985 f3986)
           (lambda (g3983)
             (any/c
              j3984
              k3985
              (f3986 ((cons/c any/c (listof any/c)) j3984 k3985 g3983)))))
         'module
         'importer
         last)
        (input))))))
