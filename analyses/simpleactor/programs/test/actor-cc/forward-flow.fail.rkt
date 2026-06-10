;; Forward-flow example adapted from "Blame-Correct Support for Receiver Properties in Recursively-Structured Actor Contracts"
(define router/c 
 (behavior/c 
   (message/c*
     ;; initial request
     ['request (actor?) any-recipient]
     ;; the router should forward the request
     [(client-ref) 'request (actor?) any-recipient]
     ;; the server should reply directly back to the actor of the original payload
     [_ 'reply (integer?/c) (specific-recipient client-ref)])))

(define (pick-service services)
  (list-ref services (random (length services))))

(define client-behavior 
  (behavior (router) 
            ((main () 
                   (trace 'main)
                   (send router request self) 
                   (become client-behavior router))
             (reply (answer) 
                    (trace 'reply)
                    (displayln answer)
                    (terminate)))))

(define router-behavior 
  (behavior (services)
      ((request (sender) 
         (trace 'request)
         (send (pick-service services) request sender)
         (become router-behavior services)))))

(define service-behavior 
  (behavior ()
      ((request (sender) 
            (trace 'request-in-service)
            'do-work
            ;; (send self reply 42)
            (become service-behavior))
       (reply (answer) (trace 'reply-wrong) (become service-behavior)))))

(define service (spawn service-behavior)) 
(define router (mon (loc 'client) (loc 'server) router/c (spawn router-behavior (list service))))
(define client (spawn client-behavior router))
(send client main)
(wait-until-all-finished)
