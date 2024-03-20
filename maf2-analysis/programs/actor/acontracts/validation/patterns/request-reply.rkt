#lang racket

(require "../../main.rkt")

(provide request-reply/c
         (all-from-out "../../main.rkt"))

;; A simple request-reply pattern that sends the response to the actor specified in the as the first argument in the paylaod of the message
;; @param {symbol} tag the request tag
;; @param {symbol} reply-tag the reply tag 
;; @param {listof contract} contracts a list of contracts on teh payload of the request message
;; @param {contract} the contract that should be satisfied by the reply payload
(define (request-reply/c tag reply-tag contracts reply-contract . rest)
  (message/c tag (cons actor? contracts)
             (or (and (pair? rest) (specific-recipient (car rest))) any-recipient)
             (lambda (payload)
                (ensures/c 
                  (list 
                    (message/c reply-tag (list reply-contract)
                              (specific-recipient (car payload) )
                              (or (and (pair? rest) (cadr rest)) unconstrained/c)))))))

(module+ main
  ;; example usage

  (define double/c 
    (behavior/c '()
      (list
        (request-reply/c 
           #;request-tag 'double 
           #;reply-tag 'answer
           #;request-contracts (list number?) 
           #;reply-contract number?))))

  (define double (behavior ()
                   (double (reply-to n) 
                           (send reply-to 'answer (* n 2))
                           (same-behavior))))

  (define requestor (behavior ()
                      (do-request () 
                        (send double-actor 'double (self) 4)
                        (same-behavior))
                      (answer (v)
                        (displayln v)
                        (terminate))))

  (define double-actor (spawn/c double/c double))
  (define requestor-actor (spawn requestor))

  (send requestor-actor 'do-request)
  (wait-until-termination requestor-actor))
