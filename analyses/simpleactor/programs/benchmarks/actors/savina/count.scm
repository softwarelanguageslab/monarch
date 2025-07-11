;; Adapted from Savina benchmarks ("Counting Actor" benchmarks, coming from Theron)
;; counting-actor will receive 10 increment and one retreive: bound is 11 (or N+1)
(letrec ((N 10)
         (producer-actor
          (behavior (counter)
                 ((increment ()
                            (letrec ((loop (lambda (n)
                                             (if (> n 0)
                                                 (begin
                                                   (send counter increment)
                                                   (loop (- n 1)))
                                                 'done))))
                              (loop N)
                              (send counter retrieve self)
                              (become producer-actor counter)))
                  (result (count)
                         (if (= count N)
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
         (producer (spawn  producer-actor counter)))
  (send producer increment))
