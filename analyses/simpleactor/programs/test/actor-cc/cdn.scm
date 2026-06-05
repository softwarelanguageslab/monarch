;; Adapted from the "CDN" protocol in NEST: Network Enforced Session Types.
;;
;; It consists of the following microservices:
;; - a local DNS server that sends an internal server a query to get the hostname
;; - an internal DNS server that is used to obtain a hostname
;; - an external DNS server that is used to obtain the IP address of that hostname
;; 
;; The idea is that this implements a content distribution network, where the internal
;; server applies some load balancing (e.g., through CNAME records) and returns a 
;; different hostname each time based on the load of the host associated with that name 
;; or based on geographical location of the user.
;;
;; The protocol is specified as a contract on the local DNS server

;;
;; Auxilary function
;;

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
;

(define local-dns/c
  (behavior/c 
    (message/c 'query (actor? number?/c)
               unspecified-recipient
               (lambda (sender cookie)
                 (ensures/c
                     (message/c 'get-hostname (actor? (and/c number?/c (=/c cookie)))
                                unspecified-recipient
                                (lambda (self-actor cookie)
                                  (ensures/c 
                                    (message/c 'reply-hostname (string?/c (and/c number?/c (=/c cookie)))
                                               (specific-recipient self-actor)
                                               (lambda (hostname cookie)
                                                 (ensures/c 
                                                   (message/c 'get-ip (actor? (and/c string?/c (string=?/c hostname)) (and/c number?/c (=/c cookie)))
                                                              unspecified-recipient
                                                              (lambda (self-actor hostname cookie)
                                                                (ensures/c
                                                                  (message/c 'reply-ip (number?/c (and/c number?/c (=/c cookie)))
                                                                             (specific-recipient self-actor)
                                                                             (lambda (ip cookie)
                                                                               (ensures/c
                                                                                 (message/c 'reply ((and/c number?/c (=/c ip)))
                                                                                            (specific-recipient sender)
                                                                                            unconstrained/c))))))))))))))))))



;;
;; Behaviors
;;


(define client
  (behavior (local-dns)
    ((start () (send local-dns query self (fresh))
               (become client local-dns))
     (reply (ip) (displayln ip)
                 (terminate)))))

(define local-dns 
  (behavior (internal external clients)
    ((query (sender cookie)
        (send internal get-hostname self cookie)
        (become local-dns internal external (add-client sender cookie clients)))
     (reply-hostname (hostname cookie)
        (send external get-ip self hostname cookie)
        (become local-dns internal external clients))
     (reply-ip (ip cookie)
        (let ((client (find-client cookie clients)))
          (send client reply ip))
        (become local-dns internal external (remassoc cookie clients))))))

(define internal-server 
  (behavior ()
    ((get-hostname (sender cookie)
        (send sender reply-hostname (fresh-string) cookie)
        (become internal-server)))))

(define external-server
  (behavior ()
    ((get-ip (sender hostname cookie)
        (send sender reply-ip (fresh) cookie)
        (become external-server)))))

;;
;; Actors
;;

(define internal-actor (spawn internal-server))
(define external-actor (spawn external-server))
(define local-dns-unmonitored (spawn local-dns internal-actor external-actor '()))

;;
;; Monitoring
;;

(define local-dns-actor (mon (loc 'client) (loc 'server) local-dns/c local-dns-unmonitored))

;;
;; Main
;;

(define client-actor (spawn client local-dns-actor))
(send client-actor start)
