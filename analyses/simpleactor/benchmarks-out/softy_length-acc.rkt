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
    (define (len xs) (len-acc xs 0))
    (define (len-acc xs acc) (if (empty? xs) acc (len-acc (cdr xs) (+ 1 acc))))
    (begin
      ((((lambda (j3984 k3985 f3986)
           (lambda (g3983)
             ((and/c integer? (>=/c 0))
              j3984
              k3985
              (f3986 ((listof any/c) j3984 k3985 g3983)))))
         'module
         'importer
         len)
        (input))))))
