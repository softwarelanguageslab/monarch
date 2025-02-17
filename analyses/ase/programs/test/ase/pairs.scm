;; Output should be 2 and "Top" but not 3
(letrec 
  ((x (input))
   (c1 (pair? x))
   (c2 (string? x)))
  
  (if c1
      (if c2
          3
          (car x))
      2))
