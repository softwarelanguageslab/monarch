(define (mapx f lst)
  (if (null? lst)
      '()
      (cons (f (car lst)) (mapx f (cdr lst)))))


(define (inc n) (+ n 1))
(mapx inc '(1 2 3))