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
    (define (nth n xs) (if (= n 0) (car xs) (nth (- n 1) (cdr xs))))
    (define (mk-list n) (if (< n 0) empty (cons n (mk-list (- n 1)))))
    (define (main n) (let ((xs (mk-list n))) (if (empty? xs) 0 (nth 0 xs))))
    (begin
      ((((lambda (j3984 k3985 f3986)
           (lambda (g3983)
             (integer? j3984 k3985 (f3986 (integer? j3984 k3985 g3983)))))
         'module
         'importer
         main)
        (input))))))
