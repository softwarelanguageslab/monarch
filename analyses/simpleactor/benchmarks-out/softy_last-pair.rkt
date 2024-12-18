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
    (define (lastpair x) (if (pair? (cdr x)) (lastpair (cdr x)) x))
    (begin
      ((((lambda (j3984 k3985 f3986)
           (lambda (g3983)
             (pair? j3984 k3985 (f3986 (pair? j3984 k3985 g3983)))))
         'module
         'importer
         lastpair)
        (input))))))
