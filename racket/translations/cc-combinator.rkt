#lang racket

(provide translate)
(require "../utils.rkt")

;; Indicates whether to compile meta annotations in the 
;; output
(define *is-meta* (make-parameter #f))

;; Generate a meta instruction if the `*is-meta* parameter is #t,
(define (instrument-meta e)
  (if (*is-meta*)
   `(meta ,e)
   e))

;; Created an "enhanced" message 
;; by prepending the message tag 
;; with "enhanced".
(define (enhanced-message msg κ) 
  ;; TODO: use a different tag 
  ;; than "enhanced" since this 
  ;; might clash with user-level
  ;; programs, or enforce 
  ;; that "enhance" is a protected
  ;; tag and cannot be used.
  (uncurry (list '(quote enhanced) κ msg)))

;; Translate a meta level 
;; message to base level assertions.
;;
;; This is similar to the translation
;; for higher order contracts in 
;; the sequential contract setting 
;; but creates an enhanced message
;; if a communication contract is 
;; used.
(define (translate-message/c k j) 
    (lambda (exp)
        (match exp
          [(quasiquote (message/c ,tag ,payload ,recipient ,communication))
           (let* ((ps   (map (lambda ags (gensym "x")) payload))
                  (nmsg (map (lambda (κ arg) `((,κ ,k ,j) ,arg)) payload ps)))

           `(,(uncurry (cons tag ps)) ,(enhanced-message (uncurry (cons tag nmsg)) communication)))])))

;; Translate a behavior contract to 
;; a base-level construct.
;;
;; The meta construct is translated to 
;; a lambda accepting a set of blame labels, 
;; and a message. This message is then transformed
;; to a contracted message if applicable. 
;;
;; If a message is received that does not 
;; match any expected tag the appropriate
;; blame message is generated.
(define (translate-behavior/c exp) 
  (match exp
    [(quasiquote (behavior/c ,@messages))
     (let ((message (gensym "message"))
           (a (gensym "a"))
           (k (gensym "k"))
           (j (gensym "j"))
           (v (gensym "v")))

     `(lambda (,k ,j)    ;; blame labels
        (lambda (,a)    ;; actor reference
           (lambda (,v) ;; message intercept
             (letrec
               ((,message (match ,v ,(map (translate-message/c k j) messages))))
               (,a ,message))))))]))

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
    [(quasiquote (behavior/c ,@messages))
     (translate-behavior/c e)]
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

