#lang racket

(provide collect-mutations)

;; SUMMARY
;;
;; Mutate a Racket program (NOT a SimpleActor program)
;; do non-determnistically remove some message sends.
;;
;; This can then be used to perform **soundness testing**
;; to check whether the abstract interpreter agrees with the
;; concrete interpreter.
;;
;; NOTE ON SIMPLEACTOR PROGRAMS
;;
;; SimpleActor programs do not feature the `send` special form,
;; instead they use a primitive called `send^` and `dyn send^` 
;; which can be shadowed by its lexical or dynamic scope making
;; it more difficult to known which ones we can remove.
;;
;; Moreover, specific sends might be essential for contract
;; checking, removing them might break the contract checking
;; mechanism itself, making the mutations less useful.


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Non-determinism
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; The current next failure continuation
(define *failure-continuation* '())

;; Randomly decided whether to skip the item
(define (skip-item)
  (< (random) 0.2))


;; Choose an item from the list non-determnistically
;;
;; @param lst the list to choose an item from
(define (choose lst)
  (when (null? lst)
     ;; no items to choose from, call the other failure continuation
     (*failure-continuation* #f))
  (let ((old-k *failure-continuation*)
        (k (call-with-current-continuation (lambda (k) k))))
    ;; First time the continuation is called
    (if k
        ;; return the first item of the list,
        ;; and set the current failure continuation
        (begin
          ;; If we are not exploring exhaustively,
          ;; randomily skip item
          (when (and *randomized* (skip-item))
            (*failure-continuation* #f))
          (set! *failure-continuation* k)
          (car lst)) 
        ;; call choose again with the next item
        (begin
          (set! *failure-continuation* old-k)
          (choose (cdr lst))))))

;; Non-deterministically chooses to return the first argumnt or the second argument
;;
(define (optional value default)
  (choose (list value default)))

;; Collects the results  of executing 'thunk' non-deterministically into a list
(define (collect thunk)
  (define *result* '())
  (let ((k (call-with-current-continuation (lambda (k) k))))
    (when k 
      (set! *failure-continuation* k)
      (set! *result* (cons (thunk) *result*))
      (*failure-continuation* #f))
    (reverse *result*)))

;; Whether the non-determinism should be exhaustive or not based on randomness
(define *randomized* #f)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Mutations
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (mutate exp)
  (match exp
    ;; at the 'send' case, non-deterministically choose
    ;; to (not) include it
    [(quasiquote (send ,rcv ,tag ,@payload))
     (optional `(send ,(mutate rcv) ,(mutate tag) ,@(map mutate payload)) ''())]
    ;; catch-all case, call "mutate" recursively
    [(quasiquote (,operator ,@operands))
     `(,(mutate operator) ,@(map mutate operands))]
    [x x])) 

(define (collect-mutations exp #:randomized [randomized #f])
  (set! *randomized* randomized)
  (collect (lambda () (mutate exp))))

(module+ main
  (write
    (collect-mutations
       (mutate '(begin (send test foo 'bar)
               (send test foo 'baz)))))
  (displayln (collect (lambda ()
                        (let ((i (choose '(1 2 3)))
                              (j (choose '(4 5 6))))
                          (* i j))))))
