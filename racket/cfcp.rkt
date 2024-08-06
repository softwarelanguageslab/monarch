#lang racket


;; A translation from CFCP to untyped λ-calculus
(define (translate e)
  (match e
    [(quasiquote (flat ,e)) e]))

(translate (read))
