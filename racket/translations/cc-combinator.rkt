#lang racket

(provide translate)

;; Indicates whether to compile meta annotations in the 
;; output
(define *is-meta* (make-parameter #f))

;; Generate a meta instruction if the `*is-meta* parameter is #t,
(define (instrument-meta e)
  (if (*is-meta*)
   `(meta ,e)
   e))

;; "Contract-combinators" translation to
;; regular λ-calculus.
;;
;; This is similar  to CFCP but the difference
;; is that contracts are also values and do 
;; not always directly appear in contract 
;; monitors before program reduction.

(define (translate-aux e) 
  (match e
    [(quasiquote (flat ,e))
     (let ((j (gensym)) (k (gensym)) (v (gensym)))
        (instrument-meta `(lambda (,j ,k ,v) (if (,e ,v) ,v (blame ,j (quote ,e))))))] 
    [(quasiquote (-> ,κ1 ,κ2))
     (let ((j (gensym)) (k (gensym)) (f (gensym)) (v (gensym)))
       (instrument-meta 
         `(lambda (,j ,k ,f) 
            (lambda (,v)
              ,(instrument-meta `(,(translate-aux κ2) ,j ,k (,f ,(instrument-meta `(,(translate-aux κ1) ,k ,j ,v)))))))))]
    [(quasiquote (mon ,j ,k ,κ ,v))
     (instrument-meta `(,(translate-aux κ) (quote ,j) (quote ,k) ,(translate-aux v)))]
    [(quasiquote (,es ...))
     `(,@(map translate-aux es))]
    [x x]))

(define (preluded e)
  `(letrec 
     ((any? (lambda (v) #t))
      (meta (lambda (v) v))
      (nonzero? (lambda (v) (not (= v 0)))))
     ,e))

(define (translate e #:meta [meta #f])
  (parameterize ([*is-meta* meta])
     (preluded (translate-aux e))))

(module+ main
  (require "../tests/prelude.rkt")


   ;(displayln (translate test-1))
   ;(displayln (eval_ (translate test-1))) ;; returns 10
   ;(displayln (eval_ `(,(translate test-2) 5))) ;; returns 1/25
   ;(displayln (translate test-3))
   ;(displayln (eval_ `(,(translate test-3) (lambda (x) (* x 2))))) ;; returns 84
   ;(displayln (eval_ `(,(translate test-3) (lambda (x) (* x -2))))) ;; return blame error on k

   (displayln (translate test-4 #:meta #t))
   (displayln (eval_ (translate test-4 #:meta #t))) ;; returns 5
   (displayln (eval_ `(,(translate test-5) 2))) ;; returns 1
   (displayln (eval_ `(,(translate test-5) 1))) ;; blame error blaming k

   )

