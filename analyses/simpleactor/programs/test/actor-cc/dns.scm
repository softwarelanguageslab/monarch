;; Adapted from the "DNS" protocol in NEST: Network Enforced Session Types
;; The protocol simulates a typical message chain that is performed by recursive DNS servers:
;; - the recursive DNS server sends a DNS query to the root domain name servers
;; - the root domain name server then replies with information on the domain name servers
;; of the top-level domain names (e.g., .com, .be, ...)
;; - the recursive DNS server then queries the top-level domain name server
;; - the top-level domain name server then replies with the address of the authoritive servers
;; - the recursive DNS server then sends a final query to the authorative server to get the 
;; actual query result.
;;
;; In the NEST paper, this protocol is defined using three four local session types: one 
;; for the local recursive DNS server, one for the root server, one for the top-level domain name server
;; and one for the authorative server.
;;
;; The architecture here uses the same actors, but defines its contract differently. Instead of 
;; hard-coding the message chain as described in the protocol above, the contract is defined **recursively**
;; on local DNS server. Based on the response of each server, it either enforces sending a follow-up query or replies with
;; the query result to the client.
;;
;;
;; We also add the concept of a DNS "cookie" to the requests and replies. In the DNS protocol, this cookie
;; serves as a correlation identifier, so that the recursive DNS server can correlate replies with their 
;; original senders.

;;
;; Auxilary functions
;;


;; Answers are pairs of a symbol, indicating the type of answer, 
;; and an arbitrary value containing the answer itself.

;; Returns 'true' if the DNS answer is authorative.
;;
;; An answer is authorative if the first item of the pair 
;; is equal to the symbol "authorative"
(define (authorative? answer)
  (eq? (car answer) 'authorative))

;; Returns 'true' if the DNS answer requires recursion
(define (requires-recursion? answer)
  (eq? (car answer) 'requires-recursion))

;; Remove an the item associated with the given key from the list.
(define (remassoc key lst)
  (if (null? lst)
      '()
      (if (eq? key (car (car lst)))
          (remassoc key (cdr lst))
          (cons (car lst) (remassoc key (cdr lst))))))


;; Add a client to the client list and associate it with the given correlation identfier
(define (add-client client correlation-identifier clients)
  (cons (cons correlation-identifier client) clients))

;; Find a client associated with the given correlation identifier
(define (find-client correlation-identifier clients)
  (let ((element (assoc correlation-identifier clients)))
    (if element 
      (cdr element)
      (error (format "could not find client with the given correlation identifier ~a" correlation-identifier)))))

;;
;; Contracts
;;

;; Checks whether the given value is a valid answer
(define answer?/c (flat (lambda (value) 
                          (and (pair? value) 
                               (or (eq? (car value) 'authorative)
                                   (eq? (car value) 'requires-recursion))))))

;; The recursive contract
(define (recursive-dns/cm sender cookie)
  (ensures/c 
    (message/c 'query (actor? (and/c number?/c (=/c cookie)))
               unspecified-recipient
               (lambda (self-actor cookie)
                 (ensures/c
                     (message/c 'answer ((and/c number?/c (=/c cookie)) answer?/c)
                                (specific-recipient self-actor)
                                (lambda (cookie answer)
                                  (if (requires-recursion? answer)
                                    (recursive-dns/cm sender cookie)
                                    (ensures/c 
                                      (message/c 'answer (answer?/c)
                                                 (specific-recipient sender)
                                                 unconstrained/c))))))))))

;; Describes the entrypoint from the client
(define recursive-dns/c
  (behavior/c 
    (message/c 'query (actor? number?/c)
               unspecified-recipient
               recursive-dns/cm)))

;;
;; Behaviors
;;

(define client 
  (behavior (recursive-dns)
    ((start ()
        (send recursive-dns query self (fresh))
        (become client recursive-dns))
     (answer (answer)
        (displayln 'got-answer)
        (terminate)))))

(define recursive-dns
  (behavior (root-server clients)
    ((query (sender cookie)
        (send root-server query self cookie)
        (become recursive-dns root-server (add-client sender cookie clients)))
     (answer (cookie answer)
        (trace answer)
        (if (authorative? answer)
          (let ((client (find-client cookie clients)))
            (send client answer answer))
          (send (cdr answer) query self cookie))
        ;; NOTE: this duplication of the if expression is due to technical limitations
        ;; in the SimpleActor translation (see racket/translations/cc-combinator).
        (if (authorative? answer)
            (become recursive-dns root-server (remassoc cookie clients))
            (become recursive-dns root-server clients))))))
        
(define root-server
  (behavior (tld-server)
    ((query (sender cookie) 
        (send sender answer cookie (cons 'requires-recursion tld-server))
        (become root-server tld-server)))))


;; NOTE: this is actually equivalent to the root-server, but is kept seperate
;; for clarity.
(define tld-server
  (behavior (authorative-server)
    ((query (sender cookie)
        (trace 'tld-server)
        (send sender answer cookie (cons 'requires-recursion authorative-server))
        (become tld-server authorative-server)))))

(define authorative-server
  (behavior ()
    ((query (sender cookie)
            (trace 'authorative-server)
            (send sender answer cookie (cons 'authorative 'dns-result))
            (become authorative-server)))))

;;
;; Actors
;;

(define authorative-actor (spawn authorative-server))
(define tld-actor (spawn tld-server authorative-actor))
(define root-actor (spawn root-server tld-actor))
(define recursive-unmonitored (spawn recursive-dns root-actor '()))

;;
;; Monitored actors
;;

(define recursive-actor (mon (loc 'client) (loc 'server) recursive-dns/c recursive-unmonitored))
(define client-actor (spawn client recursive-actor))
(send client-actor start)
