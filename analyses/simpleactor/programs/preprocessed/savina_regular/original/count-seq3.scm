(letrec ((producer-actor
          (actor
           "producer"
           (counter)
           (increment
            ()
            (send counter increment)
            (send counter retrieve self)
            (become producer-actor counter))
           (result
            (count)
            (if (= count 1) (display "Success!") (error "Error!"))
            (terminate))))
         (counting-actor
          (actor
           "counting"
           (count)
           (increment () (become counting-actor (+ count 1)))
           (retrieve (to) '() (terminate))))
         (counter (create counting-actor 0))
         (producer (create producer-actor counter)))
  '())
