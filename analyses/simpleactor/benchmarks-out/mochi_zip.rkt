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
    (define (zip xs ys)
      (cond
       ((and (empty? xs) (empty? ys)) empty)
       ((and (cons? xs) (cons? ys))
        (cons (cons (car xs) (car ys)) (zip (cdr xs) (cdr ys))))
       (else 'fail)))
    (define (mk-list n) (if (< n 0) empty (cons n (mk-list (- n 1)))))
    (define (main n) (let ((xs (mk-list n))) (zip xs xs)))
    (begin
      ((((lambda (j3984 k3985 f3986)
           (lambda (g3983)
             ((listof integer?)
              j3984
              k3985
              (f3986 (integer? j3984 k3985 g3983)))))
         'module
         'importer
         mk-list)
        (input))
       (((lambda (j3988 k3989 f3990)
           (lambda (g3987)
             ((listof (cons/c integer? integer?))
              j3988
              k3989
              (f3990 (integer? j3988 k3989 g3987)))))
         'module
         'importer
         main)
        (input))))))
