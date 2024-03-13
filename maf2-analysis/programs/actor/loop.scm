(define test (behavior () (hello () (become test))))
(define actor (spawn test))
(send actor hello)
