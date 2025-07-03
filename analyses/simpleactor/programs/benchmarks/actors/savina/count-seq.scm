;; Bound: producer-actor: 1, counting-actor: 2
;; Error: not reachable
(letrec ((producer-actor
          (behavior (counter)
                 ((increment ()
                             (send counter increment)
                             (send counter retrieve self)
                             (become producer-actor counter))
                  (result (count)
                          (if (= count 1)
                              (display "Success!")
                              (error "Error!"))
                          (terminate)))))
         (counting-actor
          (behavior (count)
                 ((increment ()
                             (become counting-actor (+ count 1)))
                  (retrieve (to)
                            (send to result count)
                            (terminate)))))
         (counter (spawn counting-actor 0))
         (producer (spawn producer-actor counter)))
  (send producer increment))
