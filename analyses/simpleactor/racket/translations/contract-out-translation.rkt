#lang racket

(require "../utils.rkt")

;; This module translates files containing `contract-out`
;; definitions to equivalent files ready for verification. 
;;
;; To this end, contract-out definitions are compiled 
;; to function definitions that are then applied with symbolic 
;; inputs.


;; Attempt to derive the arity of the function
;; monitored by the contract, returns an arity of 
;; zero if the contract does not depict a function 
;; but is a constant, in that case a function 
;; call is not generated
(define (contract-arity contract)
  (match contract
    [(quasiquote (-> ,@contracts))
     (- (length contracts) 1)]
    [_ 0]))

(define (initial xs)
  (if (null? (cdr xs))
    '()
    (cons (car xs) (initial (cdr xs)))))
      

;; Get the contracts on the arguments
(define (argument-contracts contract)
  (match contract
    [(quasiquote (-> ,@contract))
     (initial contract)]
    [_ '()]))

;; Derive the shape of the input
(define (derive-input-shape contract)
  (match contract 
    [(quasiquote (listof ,contract)) '(input)] ; TODO: provide a better representation here
    [(quasiquote ,contract-name)
      (let ((contract (assoc contract-name *struct-contracts*)))
         (if contract
             (let ((name (caadr contract))
                   (fields (cdadr contract)))
               (consify (cons `(quote ,name) (map derive-input-shape fields))))
             '(input)))]))
        
;; Translate a single contract
(define (translate-contract contract)
  (match contract
    [(quasiquote (,identifier ,contract))
     (let ((monitor `(mon (loc (quote module)) (loc (quote importer)) ,contract ,identifier))
           (arity (contract-arity contract)))
       (if (= arity 0)
           monitor
           `(,monitor ,@(map derive-input-shape (argument-contracts contract)))))]
    [_ (error "invalid contract-out specification")]))

;; Translate a list of contracts
(define (translate-contracts contracts)
  `(begin ,@(map translate-contract contracts)))

;; Contract definitions for structs represented as an association 
;; list mapping the names of the contract to the fields of the contract
(define *struct-contracts* '())

;; Translate a program that could contain a contract-out statement
(define (translate exp) 
  (match exp 
    ;; this is a little "hack" to know whether there are contracts 
    ;; for structs in scope, normally we should do proper modelling of 
    ;; the environment but this should be sufficient to detect top-level
    ;; contracts on structs.
    [(quasiquote (define ,contractname (struct/c ,name ,@fields)))
     (set! *struct-contracts* (cons (list contractname (cons name fields)) *struct-contracts*))
     exp]
    [(quasiquote (contract-out ,@contracts))
     (translate-contracts contracts)]
    [(quasiquote (provide ,@exports))
     `(begin ,@(map translate exports))]
    [(quasiquote (,exp1 ,@exs))
     `(,(translate exp1) ,@(map translate exs))]
    [literal literal]))

(provide 
  translate)
