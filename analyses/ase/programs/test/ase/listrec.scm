(letrec
  ((rec (lambda (xs)
    (letrec ((c (null? xs)))
      (if c
          0
          (letrec ((rest (cdr xs))
                   (res (rec rest)))
              (+ 1 res)))))))


  (letrec
     ((i1 (input))
      (i2 (input))
      (c (pair? i1)))

  (if c 
    (rec i1)
    (blame 1 2)))) 
