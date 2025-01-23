;; An example of a program where backtracking would be necessary
(letrec ((x (input))
         (y (= x 10)))
  (if y
    20
    30))
