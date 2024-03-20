#lang racket

(require "../../main.rkt")

;; @doc
;; A rate limited communication contract. 
;; If attached, ensures that the handler does not perform more than the given number of `request-per-second`. 
;; The contract is stateful and persists its state across handler runs. 
;;
;; @param request-per-second the number of maximally allowed requests per second
;; @return a communication contract that results in a blame if the given rate limit has been reached.
(define (rate-limit/c requests-per-second)
  (define rate-limiter 
    (behavior (number-of-requests start-time)
      ;; The communication contract is stateful it simply returns itself 
      (create (reply-to) (send reply-to 'reply (self)))
      ;; each time a message is sent the rate limit contract needs to be checked 
      (send (reply-to msg mon blame) 
            (if (> (/ (time-passed-since start-time) number-of-requests) request-per-second)
                #;then (blame) #;otherwise (send reply-to 'reply msg))
            (become rate-limiter (+ number-of-request 1) start-time))
      (finalize (reply-to blame) (send reply-to 'reply '()))))
   (spawn rate-limiter 0 (time)))


(module+ main 'todo)
