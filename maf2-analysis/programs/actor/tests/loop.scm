;; TEST: 
;; - should spawn an actor with behavior 'test'
;; - should send a message 'hello'
;; - should terminate
(define test (behavior () (hello () (become test))))
(define actor (spawn test))
(send actor hello)
