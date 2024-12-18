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
    (define id (λ (x) x))
    (define blur (λ (y) y))
    (define lp
      (λ (a)
        (λ (n)
          (if (zero? n)
            (id a)
            (let* ((r ((blur id) #t)) (s ((blur id) #f)))
              (not (((blur lp) s) (sub1 n))))))))
    ((lp #f) 2)))
