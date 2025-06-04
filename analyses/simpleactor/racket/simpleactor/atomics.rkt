#lang racket

(provide make-atomic
         atomic-modify
         atomic-gets)

(struct atomic (value mutex) #:mutable)


(define (make-atomic initial-value)
  (atomic initial-value (make-semaphore 1)))

(define (atomic-modify atomic proc)
  (semaphore-wait (atomic-mutex atomic))
  (set-atomic-value! atomic (proc (atomic-value atomic)))
  (semaphore-post (atomic-mutex atomic)))

(define (atomic-gets atomic proc)
  (semaphore-wait (atomic-mutex atomic))
  (let ((value (proc (atomic-value atomic))))
    (semaphore-post (atomic-mutex atomic))
    value))
