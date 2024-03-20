#lang racket 

(provide circuit-breaker/c)

(require "../../main.rkt")
(require "./request-reply.rkt")

(define any? (lambda (_) #t))

;; @doc
;; A constructor for a circuit braker contract 
;; 
;; @param {symbol} message-tag the tag of the message for which the circuit braker should be applied
;; @param {listof? contract} a list of contracts on the payload of the message
;; @param {any? -> boolean?} error-check a procedure that should return true if the response from the downstream module is an error
;; 
(define (circuit-breaker/c message-tag 
                           message-payload
                           error-check
                           downstream-actor)
     ;; NOTE: the message contract must be thunkified, otherwise the stateful contract is used for all potential contract monitors
     (lambda ()
        ;; the circuit breaker should understand the message given by message-tag 
        ;; and the message should match the expected contracts
        (message/c message-tag message-payload
                   any-recipient ;; actually we are the intented recipient, but this has not been specified yet at the time the contract is created 
                   ;; the circuit-breaker should forward the request to the downstream actor
                   (stateful/c (lambda (update open)
                        (if open
                          (ensures/c
                              ;; TODO: this looks like a flow pattern (such as a proxy) perhaps make the corresponding abstraction 
                              (list 
                                (request-reply/c 
                                  #;request-tag message-tag 
                                  #;reply-tag 'reply 
                                  #;request-contract message-payload 
                                  #;reply-contract (list any?)
                                  #;recipient downstream-actor
                                  #;cc (lambda (reply-payload) 
                                          (if (error-check (car reply-payload))
                                              (begin
                                                (update #;open #f)
                                                (ensures/c (list (message/c 'reply (list any?)))))
                                              (begin 
                                                (update #;open #t)
                                                (ensures/c (list message/c 'error '() any-recipient unconstrained/c))))))))
                           (only/c (list (message/c 'error '() any-recipient unconstrained/c)))))))))


(module+ main 'todo)
