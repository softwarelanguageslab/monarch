(letrec ((create-n (lambda (n)
                     
                     (letrec ((loop (lambda (n a)
                                      
                                      (if (= n 0)
                                          a
                                          (loop (- n 1) (cons '() a))))))
                       (loop n '())))))
  (letrec ((recursive-div2 (lambda (l)
                             
                             (if (null? l)
                                 '()
                                 (cons (car l) (recursive-div2 (cddr l)))))))
    (let ((result '(() () () () () () () () () () () () () () () () () () () ()
                    () () () () () () () () () () () () () () () () () () () ()
                    () () () () () () () () () () () () () () () () () () () ()
                    () () () () () () () () () () () () () () () () () () () ()
                    () () () () () () () () () () () () () () () () () () () ())))
      (equal? (recursive-div2 (create-n 200)) result))))
