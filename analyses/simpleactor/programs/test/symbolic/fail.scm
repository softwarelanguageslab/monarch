;; This is a motivating example for keeping track of abstract 
;; counts for each address. 
;;
;; The key insight is that using addresses as symbolic variables
;; results in the undesirable property that the constraint
;; must be valid for all concrete addresses represented 
;; by that abstract address, instead, we want to say
;; that there should **exist** a concrete address 
;; for which the constraint holds.
;;
(letrec
   ((foo (lambda ()
           (letrec
             ((x (fresh (random 42))))
              (if (= x 10)
                  10
                  20)))))

   ;; Output should be {43, 44, 45} but 
   ;; {43} is missing without the abstract count
   (if (= (foo) 10)
       (if (= (foo) 20)
           43
           44)
       45))
               

