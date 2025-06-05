#lang simpleactor



(letrec ((test-behavior (lambda ()
            (receive
              (('do (begin (blame 'server) 'done)))))))
        (let 
           ((test-actor (spawn^ (test-behavior))))

             (displayln "ok")
             (send^ test-actor 'do)))

