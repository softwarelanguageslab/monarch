(define (foo x) (+ x 1))

(provide (contract-out
  (foo (-> integer?/c integer?/c))))
