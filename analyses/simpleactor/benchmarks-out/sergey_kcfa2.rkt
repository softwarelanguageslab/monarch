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
       ((λ (f2) (let ((b (f2 #t))) (let ((c (f2 #f))) (f2 #t))))
        (λ (x2) ((λ (z) (z x1 x2)) (λ (y1 y2) y1))))))))
