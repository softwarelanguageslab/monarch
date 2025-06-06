#lang racket

(provide
  atomic-counter
  make-atomic-counter
  atomic-counter-increment
  atomic-counter-decrement
  atomic-counter-zero?)

(struct atomic-counter ((value #:mutable) mutex zero) #:property prop:evt (struct-field-index zero) #:transparent)

(define (make-atomic-counter initial-value)
  (atomic-counter initial-value (make-semaphore 1) (make-semaphore 0)))

(define (atomic-counter-increment counter)
  (semaphore-wait (atomic-counter-mutex counter))
  (set-atomic-counter-value! counter (+ (atomic-counter-value counter) 1))
  (semaphore-post (atomic-counter-mutex counter)))

(define (atomic-counter-zero? counter)
  (semaphore-wait (atomic-counter-mutex counter))
  (let ((val (atomic-counter-value counter)))
    (semaphore-post (atomic-counter-mutex counter))
    val))  

(define (atomic-counter-decrement counter)
  (semaphore-wait (atomic-counter-mutex counter))
  (set-atomic-counter-value! counter (- (atomic-counter-value counter) 1))
  (when (= (atomic-counter-value counter) 0)
      (semaphore-post (atomic-counter-zero counter)))
   (semaphore-post (atomic-counter-mutex counter)))
  

