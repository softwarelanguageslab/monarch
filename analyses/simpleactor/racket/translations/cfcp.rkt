#lang racket

(provide translate)

;; CFCP translation to regular
;; λ-calculus. 

(define (translate e)
  (match e
    [(quasiquote (mon ,j ,k (flat ,e) ,v))
     (let ((v1 (gensym)))
     `(letrec 
       ((,v1 ,(translate v)))

       (if (,e ,v1) ,v1 (blame (quote ,j) (quote ,e)))))]
    [(quasiquote (mon ,j ,k (-> ,κ1 ,κ2) ,f))
     (letrec ((v (gensym)))
        `(lambda (,v) 
          ,(translate 
            `(mon ,j ,k ,κ2 (,f (mon ,k ,j ,κ1 ,v))))))]
    [(quasiquote (mon ,i1 ,i2 ,i3 ,i4))
     (error (format "invalid monitoring form given ~a" e))]
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


   ;; tests
   (displayln (eval_ (translate test-1))) ;; returns 10
   (displayln (eval_ `(,(translate test-2) 5))) ;; returns 1/25
   (displayln (translate test-3))
   (displayln (eval_ `(,(translate test-3) (lambda (x) (* x 2))))) ;; returns 84
   (displayln (eval_ `(,(translate test-3) (lambda (x) (* x -2))))) ;; return blame error on k
   )


