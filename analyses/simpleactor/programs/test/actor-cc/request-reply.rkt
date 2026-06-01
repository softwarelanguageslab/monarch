;; The request-reply pattern is straightforward and consists of only two actors: a client and server.
;;
;; The message protocol is as follows:
;; - the client sends a request to the server
;; - the server replies to the client with a response.
;;
;; We model this protocol as a contract on the server behavior.

(define server/c 
  (behavior/c 
    (message/c* 
      ;; The request should contain a reference to the client + some additional data  (omitted here for brevity)
      ['request (actor?) any-recipient]
      ;; The reply should go to the client specifically, no other constraints apply.
      [(client-ref) 'reply () (specific-recipient client-ref)])))

;; The behavior of the server actor
(define server-behavior
  (behavior ()
      ((request (sender) (send sender reply)
                         (become server-behavior)))))

(define client-behavior 
  (behavior () 
      ((start (server) (send server request self) 
                        (become client-behavior))
       (reply () (displayln 'reply-received)))))


;; Actor instances of the behaviors

(define client (spawn client-behavior))

;; Unmonitored server
(define server-unmonitored (spawn server-behavior))
;; Monitored server
(define server (mon (loc 'client) (loc 'server) server/c server-unmonitored))

;; Setting everything in motion
(send client start server)

  

