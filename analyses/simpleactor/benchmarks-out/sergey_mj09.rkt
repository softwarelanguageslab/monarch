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
    (let ((h
           (λ (b)
             (let ((g (λ (z) z)))
               (let ((f (λ (k) (if b (k 1) (k 2)))))
                 (let ((y (f (λ (x) x)))) (g y)))))))
      (let* ((x (h #t)) (y (h #f))) y))))
