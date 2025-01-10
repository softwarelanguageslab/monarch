(letrec
  ((tak (lambda (x y z)
          (letrec
            ((cnd (< y x)))
            (if cnd 
              (letrec ((k1 (- x 1))
                       (k2 (- y 1))
                       (k3 (- z 1)))
                (letrec ((a (tak k1 y z))
                         (b (tak k2 z x))
                         (c (tak k3 x y)))
                  (tak a b c)))
              z)))))

  (letrec ((i1 (input)) (i2 (input)) (i3 (input)))
    (tak i1 i2 i3)))
