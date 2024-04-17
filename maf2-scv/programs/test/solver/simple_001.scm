(test-spec 
   ;; All reachable paths are supposed to return "True"
   "(unsymbolic result) `shouldBe` (unsymbolic $ inject True)")

(define x (fresh (random 4)))
(define y (if (> x 0)
    (if (< x 0)
         #f
         #t)
    #t))
y
