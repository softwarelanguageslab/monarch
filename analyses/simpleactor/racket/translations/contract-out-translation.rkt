#lang racket

;; This module translates files containing `contract-out`
;; definitions to equivalent files ready for verification. 
;;
;; To this end, contract-out definitions are compiled 
;; to function definitions that are then applied with symbolic 
;; inputs.


;; Attempt to derrive the arity of the function
;; monitored by the contract, returns an arity of 
;; zero if the contract does not depict a function 
;; but is a constant, in that case a function 
;; call is not generated
(define (contract-arity contract)
  (match contract
    [(quasiquote (-> ,@contracts))
     (- (length contracts) 1)]
    [_ 0]))

;; Translate a single contract
(define (translate-contract contract)
  (match contract
    [(quasiquote (,identifier ,contract))
     (let ((monitor `(mon module importer ,contract ,identifier))
           (arity (contract-arity contract)))
       (if (= arity 0)
           monitor
           `(,monitor ,@(build-list arity (lambda ags '(input))))))]
    [_ (error "invalid contract-out specification")]))

;; Translate a list of contracts
(define (translate-contracts contracts)
  (map translate-contract contracts))

;; Translate a program that could contain a contract-out statement
(define (translate exp) 
  (match exp 
    [(quasiquote (contract-out ,@contracts))
     (translate-contracts contracts)]
    [(quasiquote (,exp1 ,@exs))
     `(,(translate exp1) ,@(map translate exs))]
    [literal literal]))

(provide 
  translate)
