#lang racket

(provide translate)

;; "Contract-combinators" translation to
;; regular λ-calculus.
;;
;; This is similar  to CFCP but the difference
;; is that contracts are also values and do 
;; not always directly appear in contract 
;; monitors before program reduction.

(define (translate e)
  (match e
    [(quasiquote (flat ,e))
     (let ((j (gensym)) (k (gensym)) (v (gensym)))
     `(lambda (,j ,k ,v) (if (,e ,v) ,v (blame ,j (quote ,e)))))] 
    [(quasiquote (-> ,κ1 ,κ2))
     (let ((j (gensym)) (k (gensym)) (f (gensym)) (v (gensym)))
       `(lambda (,j ,k ,f) 
         (lambda (,v)
           (,(translate κ2) ,j ,k (,f (,(translate κ1) ,k ,j ,v))))))]
    [(quasiquote (mon ,j ,k ,κ ,v))
     `(,(translate κ) (quote ,j) (quote ,k) ,(translate v))]
    [(quasiquote (lambda ,x ,e))
     `(lambda ,x ,(translate e))]
    [(quasiquote (spawn ,e))
     `(spawn ,(translate e))]
    [(quasiquote (terminate))
     `(terminate)]
    [(quasiquote (self))
     `(self)]
    [(quasiquote (pair ,e1 ,e2))
     `(pair ,(translate e1) ,(translate e2))]
    [(quasiquote (parameter e))
     `(parameter ,(translate e))]
    [(quasiquote (receive ,pats))
     `(receive (map (lambda (pat) 
            (match pat 
              [(quasiquote (,pat ,e)) `(,pat ,(translate e))]))
          pats))]
    [(quasiquote (send ,e1 ,e2))
     `(send ,(translate e1) ,(translate e2))]
    [(quasiquote (if ,e1 ,e2 ,e3))
     `(if ,(translate e1) ,(translate e2) ,(translate e3))]
    [(quasiquote (begin ,@e1))
     `(begin ,@(map translate e1))]
    [(quasiquote (,es ...))
     `(,@(map translate es))]
    [x x]))

(module+ main
  (require "../tests/prelude.rkt")


   ;(displayln (translate test-1))
   ;(displayln (eval_ (translate test-1))) ;; returns 10
   ;(displayln (eval_ `(,(translate test-2) 5))) ;; returns 1/25
   ;(displayln (translate test-3))
   ;(displayln (eval_ `(,(translate test-3) (lambda (x) (* x 2))))) ;; returns 84
   ;(displayln (eval_ `(,(translate test-3) (lambda (x) (* x -2))))) ;; return blame error on k


   (displayln (eval_ (translate test-4))) ;; returns 5
   (displayln (eval_ `(,(translate test-5) 2))) ;; returns 1
   (displayln (eval_ `(,(translate test-5) 1))) ;; blame error blaming k

   )

