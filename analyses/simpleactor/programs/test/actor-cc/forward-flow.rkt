#lang racket

(define (forward-flow/c request-tag request-contracts reply-tag reply-contracts)
  (message/c request-tag (cons actor? request-contracts)
             any-recipient
             (lambda (payload)
               (ensures/c 
                 (list (message/c request-tag (cons actor? request-contracts) 
                                  any-recipient
                                  (ensures/c 
                                    (list (message/c reply-tag reply-contracts
                                               (specific-recipient (car payload))
                                               unconstrained/c)))))))))
