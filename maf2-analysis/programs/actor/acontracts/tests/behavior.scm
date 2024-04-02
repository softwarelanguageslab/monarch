;; TEST

(define ping/c (behavior/c
            (message/c 'ping ((flat string?)) any-recipient unconstrained/c)))

(define ping (behavior () (ping (name) (display name) (terminate))))
(define ping-actor (mon server client ping/c (spawn ping)))
(send ping-actor ping "hello") ;; OK
; (send ping-actor ping 10) ;; blame error, blaming client
