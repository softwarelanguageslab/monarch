;; Checks whether Scheme predicates are added to the path constraint, so that the blame expressions in this program are unreachable.
(letrec 
   ((a (input))
    (cnd1 (real? a))
    (cnd2 (string? a)))

   (if cnd1
       (if cnd2 
           (blame 'test 'a)
           #f)
       #f))
