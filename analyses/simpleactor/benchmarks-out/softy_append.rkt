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
    (define (append xs ys)
      (if (empty? xs) ys (cons (car xs) (append (cdr xs) ys))))
    (begin
      ((((lambda (j3985 k3986 f3987)
           (lambda (g3983 g3984)
             ((listof any/c)
              j3985
              k3986
              (f3987
               ((listof any/c) j3985 k3986 g3983)
               ((listof any/c) j3985 k3986 g3984)))))
         'module
         'importer
         append)
        (input)
        (input))))))
