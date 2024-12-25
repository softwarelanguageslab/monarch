#lang racket

(require racket/pretty)

;; This module transforms all `define` expression in a program 
;; to a series of (nested) `letrec` expressions.

;; List of define expressions before a regular Scheme expression
(define *defines* (make-parameter '()))

;; Register a definition in the list of definitions
(define (register-define name expr)
   (*defines* (cons (cons name (list expr)) (*defines*))))

;; Returns true if the expression is a define expression
(define (is-define? exp)
  (match exp 
    [(quasiquote (define ,x ,v)) #t]
    [(quasiquote (define (,f ,@ags) ,@bdy)) #t]
    [(quasiquote (define (,f . ,arg) ,@bdy)) #t]
    [_ #f]))
    
;; Surround the given expressions with a letrec consisting of 
;; all registered defines
(define (surround-letrec exs-thk)
  (let ((defines (*defines*)))
    (*defines* '())
    (if (null? defines)
        (exs-thk)
       (list `(letrec ,(reverse defines) ,@(exs-thk))))))

;; Undefine a sequence of expressions
(define (undefine-sequence* exs allowed) 
  (if (null? exs)
      '()
      (let ((current (car exs))
            (rest (cdr exs)))
        (if (not (is-define? current))
            (surround-letrec
               (lambda ()
                   (let ((result (undefine current #f)))
                     (if (null? result)
                         (undefine-sequence rest allowed)
                         (cons (undefine current #f)
                               (undefine-sequence* rest allowed))))))
            (begin (undefine current #t) (undefine-sequence* rest allowed))))))

(define (undefine-sequence exs allowed) (undefine-sequence* exs allowed))

;; Undefine the given expression while taking into account that `define` 
;; expressions are allowed at that location
(define (undefine exp allowed)
   (match exp 
     [(quasiquote (letrec ,bds ,bdy)) 
      (let ((names (map car bds))
            (values (map cadr bds)))

      (parameterize [(*defines* '())] `(letrec ,(map (lambda (name value) `(,name ,(undefine value #f))) names values) 
                                              ,(undefine-sequence bdy #t))))]
     [(quasiquote (let ,bds ,bdy)) 
      (let ((names (map car bds))
            (values (map cadr bds)))

      (parameterize [(*defines* '())] `(let ,(map (lambda (name value) `(,name ,(undefine value #f))) names values) 
                                            ,(undefine-sequence bdy #t))))]
     [(quasiquote (let* ,bds ,bdy))
      (let ((names (map car bds))
            (values (map cadr bds)))

      (parameterize [(*defines* '())] `(let* ,(map (lambda (name value) `(,name ,(undefine value #f))) names values) 
                                            ,(undefine-sequence bdy #t))))]
     [(quasiquote (begin ,@exs))
       (undefine-sequence exs allowed)]
     [(quasiquote (lambda ,ags ,@bdy))
      (parameterize [(*defines* '())] `(lambda ,ags ,@(undefine-sequence bdy #t)))]
     [(quasiquote (define (,f ,@ags) ,@bdy))
      (unless allowed (error "define not allowed at this location"))
      (register-define f (undefine `(lambda ,ags ,@bdy) allowed))]
     [(quasiquote (define ,x ,v)) 
      (unless allowed (error "define not allowed at this location")) 
      (register-define x (undefine v #f))]
     ;[(quasiquote (define (,f . ,ags) ,@bdy)) 
     ; (unless allowed (error "define not allowed at this location"))
     ; (register-define f `(lambda ] ...
     [(quasiquote (if ,cnd ,csq ,alt)) 
      `(if ,(undefine cnd #f) 
           ,(undefine csq #f)
           ,(undefine alt #f))]
     [(quasiquote (,operator ,@operands))
      `(,(undefine operator #f) ,@(map (lambda (operand) (undefine operand #f)) operands))]
     [l l]))

(define (undefine-program program)
  ;; if the undefiner functions correctly the program
  ;; should only contain a single expression
  (define result (undefine-sequence program #t))
  (unless (null? (cdr result)) 
    (pretty-display result)
    (error (format "program should only contain a single `letrec` expression ~a~n" result)))

  (car result))

(define (undefine-single program)
  (undefine program #t))

(module+ main 
  (define test-program 
    `((define x 10)
      (display (+ x 2))
      (define y 20)
      (define (foo x) (+ x y))
      (foo 20)))
  (displayln (undefine-program test-program))
  (displayln (undefine-program '(42))))


(provide
  undefine-program
  undefine-single)
