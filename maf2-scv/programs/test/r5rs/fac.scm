(test-spec
  ;; due to overapproximation, the result should 
  ;; be of type Int
  "result `shouldSatisfy` (isTrue . hasType @(CP Bool) IntKey . leftValue)")

(define (fac x)
  (if (= x 0)
      1
      (* x (fac (- x 1)))))

(fac 5)
