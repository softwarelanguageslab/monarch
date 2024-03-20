#lang racket

(provide forward-flow/c)
(require "../../main.rkt")

(define (forward-flow/c request-tag request-contracts reply-tag reply-contracts server)
  (message/c request-tag (cons actor? request-contracts)
             any-recipient
             (lambda (payload)
               (ensures/c 
                 (list (message/c request-tag (cons actor? request-contracts) 
                                  (specific-recipient server)
                                  (ensures/c 
                                    (message/c reply-tag reply-contracts
                                               (specific-recipient (car payload))
                                               unconstrained/c))))))))


(module+ main 'todo)
