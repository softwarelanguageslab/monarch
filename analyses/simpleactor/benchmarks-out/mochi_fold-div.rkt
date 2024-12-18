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
    (define (foldl f z l) (if (empty? l) z (foldl f (f z (car l)) (cdr l))))
    (define (randpos rand) (let ((n (rand))) (if (> n 0) n (randpos rand))))
    (define (mk-list rand n)
      (if (<= n 0) empty (cons (randpos rand) (mk-list rand (- n 1)))))
    (define (main rand n m) (foldl / m (mk-list rand n)))
    (begin
      ((((lambda (j3986 k3987 f3988)
           (lambda (g3983 g3984 g3985)
             (real?
              j3986
              k3987
              (f3988
               ((lambda (j3989 k3990 f3991)
                  (lambda () (integer? j3989 k3990 (f3991))))
                j3986
                k3987
                g3983)
               (integer? j3986 k3987 g3984)
               (integer? j3986 k3987 g3985)))))
         'module
         'importer
         main)
        (input)
        (input)
        (input))))))
