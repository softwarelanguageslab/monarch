#lang racket

(require syntax/parse)
(require "../utils.rkt")

;; This module translates files containing `contract-out`
;; definitions to equivalent files ready for verification.
;;
;; To this end, contract-out definitions are compiled
;; to function definitions that are then applied with symbolic
;; inputs.

(define (contract-arity contract-stx)
  (syntax-parse contract-stx
    #:datum-literals (->)
    [(-> contracts ...) (- (length (syntax->list #'(contracts ...))) 1)]
    [_ 0]))

(define (initial stxs)
  (if (null? (cdr stxs))
      '()
      (cons (car stxs) (initial (cdr stxs)))))

(define (argument-contracts contract-stx)
  (syntax-parse contract-stx
    #:datum-literals (->)
    [(-> contract ...) (initial (syntax->list #'(contract ...)))]
    [_ '()]))

(define (derive-input-shape contract-stx)
  (syntax-parse contract-stx
    #:datum-literals (listof)
    [(listof _) (quasisyntax/loc contract-stx (input))]
    [name:id
     (let ((contract (assoc (syntax-e #'name) *struct-contracts*)))
       (if contract
           (let ((struct-name (caadr contract))
                 (fields      (cdadr contract)))
             (consify contract-stx
               (cons (quasisyntax/loc contract-stx '#,(datum->syntax contract-stx struct-name))
                     (map derive-input-shape fields))))
           (quasisyntax/loc contract-stx (input))))]
    [_ (quasisyntax/loc contract-stx (input))]))

(define (translate-contract stx)
  (syntax-parse stx
    [(identifier contract)
     (let* ((monitor (quasisyntax/loc stx
                       (mon (loc 'module) (loc 'importer) #,#'contract #,#'identifier)))
            (arity   (contract-arity #'contract)))
       (if (= arity 0)
           monitor
           (let ((arg-shapes (map derive-input-shape (argument-contracts #'contract))))
             (quasisyntax/loc stx (#,monitor #,@arg-shapes)))))]
    [_ (error "invalid contract-out specification")]))

(define (translate-contracts stx contract-stxs)
  (with-syntax ([(translated ...) (map translate-contract contract-stxs)])
    (quasisyntax/loc stx (parallel translated ...))))

;; Association list mapping struct contract names (symbols) to their fields.
(define *struct-contracts* '())

(define (translate stx)
  (syntax-parse stx
    #:datum-literals (define contract-out provide/contract provide)
    [(define contractname (struct/c name field ...))
     (set! *struct-contracts*
           (cons (list (syntax-e #'contractname)
                       (cons (syntax-e #'name) (syntax->list #'(field ...))))
                 *struct-contracts*))
     stx]
    [(contract-out contract ...)
     (translate-contracts stx (syntax->list #'(contract ...)))]
    [(provide/contract contract ...)
     (translate-contracts stx (syntax->list #'(contract ...)))]
    [(provide export ...)
     (with-syntax ([(translated ...) (map translate (syntax->list #'(export ...)))])
       (quasisyntax/loc stx (parallel translated ...)))]
    [(e es ...)
     (quasisyntax/loc stx
       (#,(translate #'e) #,@(map translate (syntax->list #'(es ...)))))]
    [other #'other]))

(provide translate)
