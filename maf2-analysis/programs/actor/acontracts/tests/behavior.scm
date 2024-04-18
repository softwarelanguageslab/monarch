;; TEST

(define ping/c (behavior/c
            (message/c 'ping ((flat string?)) (lambda (_) any-recipient) unconstrained/c)))

(define ping (behavior () (ping (name) (display name) (terminate))))
(define ping-actor (mon supplier consumer ping/c (spawn ping)))
(send ping-actor ping "hello") ;; OK
(send ping-actor ping 10) ;; blame error, blaming client
