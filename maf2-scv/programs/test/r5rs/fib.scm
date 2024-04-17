(test-spec
  ;; due to overapproximation, the result should 
  ;; be of type Int
  "result `shouldSatisfy` (isTrue . hasType @(CP Bool) IntKey . leftValue)")

(define (fib n)
  (if (< n 2)
      1 
      (+ (fib (- n 1)) 
         (fib (- n 2)))))

(fib 4)
