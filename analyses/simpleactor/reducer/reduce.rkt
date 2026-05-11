#lang racket

(define input (read))

(define (translate exp) 
  (match exp
    [(quasiquote (letrec ,bds ,@bdy))
     (if (null? bds)
         `(letrec ,bds ,@(map translate bdy))
         `(letrec ,(cdr bds) ,bdy))]
    [(quasiquote (,@es))
     (map translate es)]))


(pretty-write (translate input))
