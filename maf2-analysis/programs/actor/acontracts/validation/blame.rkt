#lang racket

(require "patterns/request-reply.rkt")
(define double/c 
   (behavior/c '() (list (request-reply/c 'double 'answer (list number?) number?))))
(define double (behavior () (double (reply-to n) (become double)))) ;; server
;; client 
(define double-actor (spawn/c double/c double))
(send double-actor 'double double-actor 4)
(wait-until-termination double-actor)

