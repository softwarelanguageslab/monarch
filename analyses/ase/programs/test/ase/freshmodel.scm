;; Program to test whether the solved model generates 
;; a top value for symbolic variables that have been 
;; widened to a "fresh" value.
;;
;; To this end, we use the "fresh" function, which 
;; generates a synthetic variable together with 
;; a random value, but associates the top symbolic
;; value with it instead of the symbolic variable itself.
(letrec
   ((x (fresh))
    (c1 (number? x))
    (c2 (symbol? x)))

   ;; output should be 1,2,3 due to approximation
   ;; of "fresh"
   (if c1
     (if c2 1 2) 3))
       
