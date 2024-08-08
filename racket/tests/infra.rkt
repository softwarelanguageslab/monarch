#lang racket

(provide eval_ nonzero? blame)

;; Contract infrastructure
(define (nonzero? x) (not (= x 0)))
(define (blame lbl κ) 
  (error (format "blaming ~a for violating contract ~a" lbl κ)))

;; For `eval` to work with specific syntathic sugar forms
(define-namespace-anchor anc)
(define ns (namespace-anchor->namespace anc))
(define (eval_ e)
  (eval e ns))

;; Test runners

(define (run-suite suite)
  (map displayln (map eval_ suite)))
