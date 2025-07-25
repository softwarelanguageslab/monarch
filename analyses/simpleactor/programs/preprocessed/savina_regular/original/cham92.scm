(letrec ((n-meetings 3)
         (n-chameneos 10)
         (n-mailboxes 1)
         (complement
          (lambda (color other-color)
            (case color
              ((red)
               (case other-color
                 ((red) 'red)
                 ((yellow) 'blue)
                 ((blue) 'yellow)
                 ((faded) 'faded)))
              ((yellow)
               (case other-color
                 ((red) 'blue)
                 ((yellow) 'yellow)
                 ((blue) 'red)
                 ((faded) 'faded)))
              ((blue)
               (case other-color
                 ((red) 'yellow)
                 ((yellow) 'red)
                 ((blue) 'blue)
                 ((faded) 'faded)))
              ((faded) 'faded))))
         (pick-color
          (lambda (i)
            (case i ((0) 'red) ((1) 'yellow) ((2) 'blue) ((3) 'faded))))
         (mall-actor
          (behavior
           (waiting-chameneo n sum-meetings num-faded)
           ((meeting-count
             (count sender)
             (if (= (+ num-faded 1) n-chameneos)
               (begin (log "mall done~n") (terminate))
               (become
                mall-actor
                waiting-chameneo
                n
                (+ sum-meetings count)
                (+ num-faded 1))))
            (meet
             (color sender)
             (if (> n 0)
               (if waiting-chameneo
                 (begin
                   '()
                   (become mall-actor #f (- n 1) sum-meetings num-faded))
                 (become mall-actor sender n sum-meetings num-faded))
               (begin
                 (send sender exit self)
                 (become
                  mall-actor
                  waiting-chameneo
                  n
                  sum-meetings
                  num-faded)))))))
         (create-mall
          (lambda ()
            (letrec ((mall (spawn mall-actor #f n-meetings 0 0))
                     (loop
                      (lambda (i)
                        (if (= i n-chameneos)
                          'done
                          (begin
                            (create-chameneo mall (pick-color (modulo i 3)) i)
                            (loop (+ i 1)))))))
              (loop 0)
              mall)))
         (chameneo-actor
          (behavior
           (mall meetings color id)
           ((meet
             (other-color sender)
             (let ((new-color (complement color other-color)))
               '()
               '()
               (become chameneo-actor mall meetings new-color id)))
            (change
             (new-color)
             '()
             (become chameneo-actor mall (+ meetings 1) new-color id))
            (exit
             (sender)
             (send sender meeting-count meetings self)
             (terminate)))))
         (create-chameneo
          (lambda (mall color id)
            (let ((chameneo (spawn chameneo-actor mall 0 color id)))
              (send mall meet color chameneo)
              chameneo))))
  (create-mall))
