;; same as parallel-1 but replaces `parallel` with sequential execution

(letrec ((loop
         (lambda (y)
           (letrec ((z (= y 0)))
           (if z
              #t
            (letrec ((v (- y 1)))
               (loop v)))))))

 (letrec 
   ((_1 (letrec ((in (input)))
          (loop in)))
    (_2 (letrec ((in (input)))
          (loop in)))
    (_3  (letrec ((in (input)))
          (loop in)))
    (_4  (letrec ((in (input)))
          (loop in)))
    (_5  (letrec ((in (input)))
          (loop in)))
    (_6  (letrec ((in (input)))
          (loop in)))
    (_7  (letrec ((in (input)))
          (loop in)))
    (_8  (letrec ((in (input)))
          (loop in)))
    (_9  (letrec ((in (input)))
          (loop in)))
    (_10  (letrec ((in (input)))
          (loop in)))
    (_11  (letrec ((in (input)))
          (loop in)))
  ) 
  _2))

