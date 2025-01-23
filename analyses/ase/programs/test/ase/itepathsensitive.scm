;; An example of a program where backtracking would be necessary
(letrec ((x (input))
         (y (= x 10))
         (z (= x 20)))
  (if y
    (if z
       40
       20)
    30))
