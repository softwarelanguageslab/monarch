;; This module does not contain executable code. Instead it contains a prelude for the simple actor language.
;; It has to be compiled to SimpleActor since SimpleActor does not understand `flat` neither does is understand `define`.

;; Built-in flat contracts
(define real/c (flat real?))
(define boolean?/c (flat boolean?))
(define number?/c (flat number?))
(define image? any/c) ;; TODO: unsupported, not sure how to support this?
(define cons?/c (flat pair?))
(define pair?/c (flat pair?))
(define integer? (flat integer?))
(define (and/c c1 c2)
   (lambda (k j) 
     (lambda (v)
        (and (c1 k j v) (c2 k j v)))))
