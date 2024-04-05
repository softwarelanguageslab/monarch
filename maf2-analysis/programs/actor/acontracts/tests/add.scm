;; SAFE
(define add 
  (behavior ()
     (add (a b reply-to)
        (send result reply-to (+ a b)))))

(define add/c 
  (behavior/c
    (message/c 'add 
               (number?/c number?/c) 
               any-recipient
               (lambda (a b reply-to)
                 (ensures/c
                     (message/c 'result 
                           ((>/c a))
                           (lambda (result) 
                              (specific-recipient reply-to))
                           unconstrained/c))))))

(define add-actor (spawn add))
(define display-actor (spawn (behavior (result (a) (display a)))))

(send add-actor 10 20 display-actor)
