#lang simpleactor

(define (test-behavior)
  (receive
    (('do (blame 'server) 'done))))

; (error "hello world")
(displayln "ok")

(define test-actor (spawn^ (test-behavior)))
(send^ test-actor 'do)

(wait-until-terminated test-actor)
