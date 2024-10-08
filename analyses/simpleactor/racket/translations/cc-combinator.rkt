#lang racket

;; Translation from SimpleActor with λα/c contracts 
;; to SimpleActor. It is expected  that `actor-translation`
;; is run first, so that the input does not contain
;; constructs from the λα language.

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
(define (enhanced-message msg κ j) 
  ;; TODO: use a different tag 
  ;; than "enhanced" since this 
  ;; might clash with user-level
  ;; programs, or enforce 
  ;; that "enhance" is a protected
  ;; tag and cannot be used.
  (uncurry (list '(quote enhanced) κ j msg)))

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

           `(,(uncurry (cons tag ps)) ,(enhanced-message (uncurry (cons tag nmsg)) communication j)))])))

;; Translate a communication contract to
;; a equivalent SimpleActor construct.
;;
;; The translation proceeds as follows. 
;; First the message contracts within the communication
;; contract are translated to equivalent constructs
;; in the SimpleActor language. Next, depending on the 
;; type of communication contract used, the contract
;; is translated to a stateful actor that keeps track
;; of message traces (in case of an ensures/c) or 
;; prohibits messages from being sent (in case of an only/c contracts)
(define (translate-communication/c κ)
  ;; same as @translate-message/c@ but adds the tag 
  ;; of the message to the reference cell for keeping 
  ;; tracking of message traces.
  (define (translate-aux message behavior rcv current-value)
    (lambda (contract)
       (let*
         ((tag (car contract))
          (translated     (translate-message/c contract))
          (pattern        (car translated))
          (enhanced-msg   (cdr translated)))

         `(,pattern  (begin (send^ ,rcv ,enhanced-msg)
                            (,behavior (pair ,tag ,current-value)))))))

        
         
  ;; Communication contracts are always structured 
  ;; as a list tagged with the type of communication
  ;; contract used, hence the `car` indicates the 
  ;; type of communication contract and the `cdr`
  ;; its contents. Similar to Vandenbogaerde et al. 
  ;; each type of communication contract expects
  ;; a list of message contracts.
  (let* ((tpy (car κ))
         ;; the blame labels that are going to be used 
         ;; as variables since they can be passed 
         ;; dynamically since the communication contracts
         ;; are values that can flow through the program.
         (k   (gensym "k"))
         (j   (gensym "j"))
         (τ   (gensym "tag"))
         (message   (gensym "message"))
         (rcv       (gensym "rcv"))
         (trace     (gensym "trace"))
         (contracts (cdr κ)))

    ;; Communication contracts only accept a single blame label.
    `(lambda (,j)
       ;; every communication contract acts
       ;; a "sending" process that incercepts
       ;; message sends from the `send` construct
       ;; in the λα language. Thus, the communication
       ;; contract is translated to a function that accepts
       ;; a message and checks whether the contract
       ;; holds for that message.
       (letrec 
         ((r (lambda (,trace)
                (receive 
                  ((pair ,rcv ,message)
                    ,(case tpy
                       ((ensures/c) 
                        ;; TODO: we match the message against our contracts
                        ;; first, if the message is already "enhanced"
                        ;; the enhanced parts are skipped to uncover
                        ;; the actual message tag which is similar
                        ;; to the stacking rules in Vandenbogaerde et al. (2024).
                        ;;
                        ;; "skip-enhanced" is a function preluded to the 
                        ;; transformed program (see @preluded@).
                        `(match ,message
                            ,(map (translate-aux message 'r rcv trace)
                                  contracts)))))))))

         (spawn (r))))))
               

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

     `(lambda (,k ,j ,a)    ;; blame labels and actor reference
        (lambda (,v) ;; message intercept
          (letrec
            ((,message (match ,v ,(map (translate-message/c k j) messages))))
            (,a ,message)))))]))

;; Enhances patterns in the `receive` construct
;; with patterns with the enhanced counter-parts 
;; of those messages.
;;
;; The "enhancing" process entails adding support
;; for messages tagged with "enhanced" and then 
;; inserting the appropriate monitoring code 
;; in its handler.
(define (enhanced-receive-patterns pats)
  (define (enhance-pattern pat) 
    (match pat 
      [(quasiquote (,message ,bdy))
         (let ((κ (gensym "k"))
               (κc (gensym "kc"))
               (rcv (gensym "rcv"))
               (msg (gensym "msg"))
               (j  (gensym "j"))
               (old-send (gensym "old-send"))
               (k  (gensym "k")))
          `(,(uncurry (append (list ''enhanced κ j) (list message))) 
             ;; TODO: we assume that there is only one instrumented 
             ;; send^ but it is possible that enhanced messages get 
             ;; nested meaning that multiple communication contracts
             ;; can be active at the same time. But in practice
             ;; more than one can be active due to wrapped actor
             ;; references, so we will need do dynamically add 
             ;; calls to `parametrize` using some kind of CPS.
             (letrec 
               ((,κc (,κ ,j))
                (,old-send send^))
                (parametrize 
                  ((send^ (lambda (,rcv ,msg) (,old-send ,κc (pair ,rcv ,msg)))))
                  (begin ,bdy
                         (,old-send ,κc 'finish))))))]))

  (map enhance-pattern pats))


;; Create a monotolically increasing reference 
;; cell as a process in the system.
;;
;; This is used for keeping track of 
;; message traces in communication contracts.
(define (create-ref-cell initial-value)
  `(letrec 
     ((ref-cell-beh (lambda (value)
                      (receive 
                        ((pair 'set new-value) (ref-cell-beh new-value))
                        ((pair 'add extra-value)
                         (ref-cell-beh (pair extra-value value)))
                        ((pair 'get sender) (begin 
                                              (send sender value)
                                              (ref-cell-beh value)))))))
     (spawn (ref-cell-beh ,initial-value))))


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
    [(quasiquote (receive ,pats))
     `(receive ,(append pats (enhanced-receive-patterns pats)))]
    [(quasiquote (,es ...))
     `(,@(map translate-aux es))]
    [x x]))

(define (preluded e)
  `(letrec 
     ((any? (lambda (v) #t))
      (meta (lambda (v) v))
      (unconstrained/c #f) ;; todo
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
