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
    ((λ (f1) (let ((a (f1 #t))) (f1 #f)))
     (λ (x1)
       ((λ (f2) (let ((b (f2 #t))) (f2 #f)))
        (λ (x2)
          ((λ (f3) (let ((c (f3 #t))) (f3 #f)))
           (λ (x3) ((λ (z) (z x1 x2 x3)) (λ (y1 y2 y3) y1))))))))))
