#lang racket

;; Same as "translate-full.rkt" but also translates the input 
;; program to ANF.

(require racket/pretty)
(require (prefix-in anf: "../translations/anf.rkt"))
(require (prefix-in cc: "../translations/cc-combinator.rkt"))
(require (prefix-in ac: "../translations/actor-translation.rkt"))

(pretty-display 
   (anf:translate
      (cc:translate 
           #:meta #f
           (ac:translate (read)))))
