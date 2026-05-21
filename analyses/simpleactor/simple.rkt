#lang simpleactor

(define (behavior)
  (receive 
    ([(cons 'test  x) 
        (begin
          (displayln x)
          (behavior))])))

(define r (spawn^ (behavior)))
(send^ r (cons 'test 10))
