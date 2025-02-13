(letrec 
  ((x (input))
   (c (pair? x)))
  
  (if c
      (car x)
      2))
