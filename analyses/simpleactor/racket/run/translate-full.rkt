#lang racket


(require racket/pretty)
(require (prefix-in an: "../translations/anf.rkt"))
(require (prefix-in un: "../translations/undefiner.rkt"))
(require (prefix-in st: "../translations/structs-to-pair.rkt"))
(require (prefix-in cc: "../translations/cc-combinator.rkt"))
(require (prefix-in ac: "../translations/actor-translation.rkt"))
(require (prefix-in co: "../translations/contract-out-translation.rkt"))
(require (prefix-in ap: "../translations/add-prelude.scm"))

;; A full translation from Racket actors 
;; with their contracts to λα/c
;;
;; Language syntax:
;; 
;; e ::= send^ e e | receive with { p -> e ; ... } 
;;     | spawn^ e  | λx . e | e e | if e e e 
;;     | parametrize { x = e ; ... } in e 
;;     | letrec { x = e ; ... } in e 
;;     | blame e | self^ | v
;; p ∈ Pattern ::= x | (pat, pat) | v
;; v ∈ Value   ::= n | b
;; n ∈ ℕ       b ∈ 𝔹 ::= true | false
;;


;(pretty-display 
;  (un:undefine-single
;     (st:translate
;        (cc:translate 
;           #:meta #f
;           (ac:translate (ap:translate (co:translate (read))))))))
; (pretty-display (st:translate (ap:translate (co:translate (read)))))
(pretty-write (an:translate (un:undefine-single (st:translate (cc:translate #:meta #f (ac:translate (ap:translate (co:translate (read)))))))))
