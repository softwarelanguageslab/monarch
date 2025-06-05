#lang racket

;; Single-threaded continuation based actors

;; A mailbox of an actor
(struct mailbox (messages) #:mutable)

;; A representation of the actor itself with a mutable
;; mailbox included.
(struct actor (mailbox exp))

;; A queue of processes that need to be scheduled
(define *queue* '())



