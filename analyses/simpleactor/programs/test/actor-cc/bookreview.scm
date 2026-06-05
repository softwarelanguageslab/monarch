;; Adapted from the "Book review" protocol in NEST: Network Enforced Session Types
;; it consists of 5 microservices:
;; - a client that attempts to retrieve book information
;; - a 'bookinfo' service that aggregates book information: i.e., book details and reviews
;; - a 'book review' service that aggregates reviews, which is stored internally, and ratings
;; for each book which are stored in another microservice (see below)
;; - a 'book details' service that stores the details of a book 
;; - a 'book ratings' service that stores the ratings of a book
;;
;; The protocol follows the one defined in NEST closely, but differs on some aspects:
;; - no parallel requests from the bookinfo service to the review and details service. The multiparty session protocol defined in NEST 
;; actually allows this, but the contract system from Vandenbogaerde et al. does not support this case. Instead the followed protocol proceeds
;; sequentially.
;; - request identifiers are added to correlate book information requests from the client. This correlation identifier is pushed downstream
;; as well. 
;; - special message tags are used to differentiate replies of the book details service from the book ratings service.


;;
;; Utility functions
;;

;; Remove an the item associated with the given key from the list.
(define (remassoc key lst)
  (if (null? lst)
      '()
      (if (eq? key (car (car lst)))
          (remassoc key (cdr lst))
          (cons (car lst) (remassoc key (cdr lst))))))


;; Add a client to the client list and associate it with the given correlation identfier
(define (add-client client correlaton-identifier clients)
  (cons (cons correlation-identifier) clients))

;; Find a client associated with the given correlation identifier
(define (find-client correlation-identifier clients)
  (let ((element (assoc correlation-identifier clients)))
    (if element 
      (car element)
      (error (format "could not find client with the given correlation identifier ~a" correlation-identifier)))))


;; Contracts

(define (bookreview/c corr-id k)
  (message/c 'get-book-review (actor? (and/c number?/c (=/c corr-id)))
             unspecified-recipient
             (lambda (actor-ref corr-id)
               (ensures/c 
                 (message/c 'get-ratings (actor? (and/c number?/c (=/c corr-id)))
                          unspecified-recipient
                          (lambda (actor-ref corr-id)
                            (message/c 'reply-book-ratings ((and/c (number?/c (=/c corr-id))))
                                       (specific-recipient actor-ref)
                                       k)))))))
                                       
(define (bookdetails/c corr-id k)
  (message/c 'get-details (actor? (and/c number?/c (=/c corr-id)))
             unspecified-recipient
             (lambda (actor-ref corr-id)
               (ensures/c 
                 (message/c 'reply-book-details 
                            (and/c (number?/c (=/c corr-id)))
                            (specific-recipient actor-ref)
                            k)))))
                            
(define bookinfo/c
  (behavior/c
    (message/c 'get-book-details (actor? number?/c)
               unspecified-recipient
               (lambda (client-ref corr-id)
                 (ensures/c 
                    (bookreview/c corr-id  
                        (lambda ags 
                          (ensures/c 
                            (bookdetails/c corr-id
                                (lambda ags
                                  (ensures/c
                                      (message/c 'reply-book-info
                                            ((and/c number?/c (=/c corr-id)))
                                            (specific-recipient client)
                                            unconstrained/c))))))
                                

;;
;; Behaviors
;;

(define client 
  (behavior (bookinfo)
    ((start ()
        (send bookinfo get-book-details self (fresh))
        (become client))
     (reply-bookinfo (corr-id) 
        (display 'done)
        (become client)))))


(define bookinfo 
  (behavior (book-review book-details clients)
    ((get-book-details (client correlation-id) 
        (send book-review get-reviews self correlation-id)
        (become bookinfo book-review book-details (add-client client correlation-id clients)))
     (reply-book-details (correlation-id)
        (let ((client (find-client correlation-id clients)))
          (send book-details get-details self correlation-id)
          (become bookinfo book-review book-details clients)))
     (reply-book-reviews (correlation-id)
        (let ((client (find-client correlation-id clients)))
          (send client reply-bookinfo correlation-id)
          (become bookinfo book-review book-details (remassoc correlation-id clients)))))))

(define bookreview
  (behavior (book-ratings clients)
    ((get-book-review (sender correlation-id)
        (send book-ratings get-rating correlation-id)
        (become bookreview book-ratings (add-client client correlation-id clients)))
     (reply-book-ratings (sender correlation-id)
        (let ((client (find-client correlation-id clients)))
          (send client reply-bookreview correlation-id)
          (become bookreview book-ratings (remassoc correlation-id clients)))))))


(define bookratings
  (behavior ()
    ((get-ratings (sender correlation-id) (send sender reply-book-ratings correlation-id)))))

(define bookdetails 
  (behavior ()
    ((get-details (sender correlation-id)
        (send sender reply-book-details correlation-id)))))

;;
;; Spawning actors
;;

(define bookratings-actor (spawn bookratings))
(define bookdetails-actor (spawn bookdetails))
(define bookreview-actor  (spawn bookreview bookratings-actor '()))
(define bookinfo-actor-unmonitored (spawn bookinfo bookreviw-actor bookdetails-actor '()))

;; Monitoring actors

(define bookinfo-actor (mon (loc client) (loc server) bookinfo/c bookinfo-actor-unmonitored))

;; Putting everything together

(define client-actor (spawn client-actor bookinfo-actor))
(send client-actor start)

