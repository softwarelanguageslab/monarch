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
    (define (mk-list n x) (if (< n 0) empty (cons x (mk-list (- n 1) x))))
    (define (mem x xs)
      (if (empty? xs) #f (or (= x (car xs)) (mem x (cdr xs)))))
    (begin
      (((->d
         integer?
         integer?
         (lambda (_ x)
           (and/c
            (listof integer?)
            (lambda (l) (or (empty? l) (member x l))))))
        'module
        'importer
        mk-list)
       (((lambda (j3985 k3986 f3987)
           (lambda (g3983 g3984)
             (boolean?
              j3985
              k3986
              (f3987
               (integer? j3985 k3986 g3983)
               ((listof integer?) j3985 k3986 g3984)))))
         'module
         'importer
         mem)
        (input)
        (input))))))
