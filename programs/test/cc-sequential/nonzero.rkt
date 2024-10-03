;; Higher-level contract language
(letrec 
  ((foo (mon server client (-> (flat nonzero?) (flat nonzero?)) (lambda (x) (* x x)))))

  (begin (foo 5)
         (foo 6)))
