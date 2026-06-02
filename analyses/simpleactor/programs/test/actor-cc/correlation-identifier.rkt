;; The correlation identifier pattern is similar to the request-reply pattern except that 
;; the payload now also contains a unique "correlation identifier" that can be used by the 
;; client to associate a reply with an earlier request.
;;
;; This pattern is well-suited for architectures where the client might have requested other 
;; resources whose results it is awaiting asynchronously. The correlation identifier pattern
;; allows the client to fire all requests simultanously and associate their replies using
;; their correlation identifiers afterwards.
;;
;; The message protocol is as as follows:
;; - the client sends a request with a reference to itself and the correlation identifier as its payload
;; - the server handles the request ands sends the reply together with the correlation identifier it 
;; received back to the client.


;; We model this protocol as a contract on the server behavior
(define server/c
  (behavior/c 
    (message/c*
      ['request (actor? number?/c) (any-recipient)]
      [(client-ref corr-id) 'reply ((=/c corr-id)) (specific-recipient client-ref)])))

;; The behavior of the server actor 
(define server-behavior 
  (behavior ()
      ((request (ref identifier) 
                #;mutation
                (send ref reply #;mutation identifier)
                (become server-behavior)))))

(define client-behavior
  (behavior ()
      ((reply (identifier)
              (displayln 'reply)
              (displayln identifier)))))

;; Actor instances of the behaviors

;; Unmonitored server
(define unmonitored-server (spawn server-behavior))

;; Client
(define client (spawn client-behavior))

;; Monitored server
(define server (mon (loc 'client)
                    (loc 'server)
                    server/c
                    unmonitored-server))

(send server request client (fresh))
