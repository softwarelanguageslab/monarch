(letrec 
  ((x (input))
   (y (> x 10))
   (z (< x 10)))

  (if y 
    (if z 
       (blame 'server)
       'done)
    'done))
