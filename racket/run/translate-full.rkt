#lang racket


(require (prefix-in cc: "../translations/cc-combinator.rkt"))
(require (prefix-in ac: "../translations/actor-translation.rkt"))

;; A full translation from Racket actors 
;; with their contracts to λα/c

(display (cc:translate (ac:translate (read))))
