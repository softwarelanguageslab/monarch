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
    (let ((lp1 2000))
      (let ((a
             (set! lp1
               (λ (i x)
                 (let ((a (= 0 i)))
                   (if a
                     x
                     (let ((lp2 1000))
                       (let ((b
                              (set! lp2
                                (λ (j f y)
                                  (let ((b (= 0 j)))
                                    (if b
                                      (lp1 (- i 1) y)
                                      (let (($tmp$3 (f y)))
                                        (lp2 (- j 1) f $tmp$3))))))))
                         (lp2 10 (λ (n) (+ n i)) x)))))))))
        (lp1 10 0)))))
