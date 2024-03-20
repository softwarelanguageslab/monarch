#lang racket

(require "../../main.rkt")

(define any? (lambda (v) #t))

;; A contract for the ask pattern

;;; Contract constructor for the ask pattern
;;; 
;;; @param {symbol} tag the tag of the message that the actor is supposed to receive 
;;; @param {symbol} reply-tag the tag of the message that the actor is supposed to send as a reply
;;; @return {contract}
(define (ask/c tag reply-tag request-contracts reply-contract) 
  (message/c tag (append (list actor? any?) request-contracts)
                 any-recipient 
                 (lambda (payload) 
                   ;; the payload consists of a sender and a correlation ID
                   ;; the recipient should equal the first value of the payload
                   ;; and the correlation id in the second argument should match the correlation ID in the reply 
                   (define reply-to (car payload))
                   (define correlation-id (cadr payload))
                   (ensures/c 
                     (list (message/c reply-tag (list (same-as? correlation-id) reply-contract)
                                      (specific-recipient reply-to)
                                      unconstrained/c))))))

;; example usage
(module+ main 
    ;; Utilities
    (define (uuid) (random))

    ;; @doc
    ;; Correlation list ADT; internally represented as an association list
    ;; empty-correlation-ids :: correlation-ids
    (define (empty-correlation-ids) '())

    ;; @doc 
    ;; Add a correlation id to the correlation list 
    (define (add-correlation-id correlation-id value correlation-ids)
      (cons (list correlation-id value) correlation-ids))
    
    ;; @doc 
    ;; Remove a correlation id from the correlation list 
    (define (remove-correlation-id correlation-id correlation-ids) 
      (filter (lambda (corr-id) (not (eq? correlation-id corr-id))) correlation-ids))

    ;; @doc 
    ;; Lookup a correlation id from the correlation id list
    (define (lookup-correlation correlation-ids correlation-id)
      (let ((result (assoc correlation-id correlation-ids)))
        (and (pair? result) (cadr result))))
   
    ;; The contract 
    (define double/c 
      (behavior/c '()
        (list (ask/c 'double 'answer (list number?) number?))))

    ;; The actors
    (define double 
      (behavior ()
         (double (reply-to correlation-id n)
                 (send reply-to 'answer correlation-id (* n 2))
                 (same-behavior))))

    (define double-gateway 
                     (behavior (correlation-ids)
                        (do-request (reply-to n) 
                          (define correlation-id (uuid))
                          (send double-actor 'double (self) correlation-id n)
                          (become double-gateway (add-correlation-id correlation-id reply-to correlation-ids)))
                        (answer (correlation-id v)
                          (send (lookup-correlation correlation-ids correlation-id) 'reply v)
                          (become double-gateway (remove-correlation-id correlation-id correlation-ids)))))

    (define client 
      (behavior () 
         (do-request (n)
            (let  ((answer (await (ask double-gateway-actor 'do-request n))))
              (displayln answer)
              (terminate)))))

   (define client-actor (spawn client))
   (define double-actor (spawn/c double/c double))
   (define double-gateway-actor (spawn double-gateway (empty-correlation-ids)))
   (send client-actor 'do-request 4)
   (wait-until-termination client-actor))


