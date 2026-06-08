#lang racket

;; Translation from SimpleActor with λα/c contracts
;; to SimpleActor. It is expected that `actor-translation`
;; is run first, so that the input does not contain
;; constructs from the λα language.
;;
;; Current limitations:
;; - message/c contracts need to be in the ensures/c contract directly instead of
;;   referring to them through variables or other means, this is because the ensures/c
;;   contract needs to extract the message tag from the message and therefore needs to
;;   have at-compile-time information about the messages in the contract.

(provide translate)
(require syntax/parse)
(require syntax/stx)
(require "../utils.rkt")

;; Indicates whether to compile meta annotations in the output
(define *is-meta* (make-parameter #f))

;; Emit a CSV row to stderr: type,source,line,column[,extra...]
(define (emit-contract-csv type stx . extras)
  (let* ((src (let ((s (syntax-source stx)))
                (cond ((path? s)   (path->string s))
                      ((symbol? s) (symbol->string s))
                      ((string? s) s)
                      (else        "unknown"))))
         (quoted-src (string-append "\"" (string-replace src "\"" "\"\"") "\""))
         (line (or (syntax-line stx) ""))
         (col  (or (syntax-column stx) "")))
    (fprintf (current-error-port) "~a,~a,~a,~a~a\n"
             type quoted-src line col
             (if (null? extras) ""
                 (apply string-append (map (lambda (e) (format ",~a" e)) extras))))))

;; Generate a meta instruction if `*is-meta*` is #t
(define (instrument-meta loc-stx e-stx)
  (if (*is-meta*)
      (quasisyntax/loc loc-stx (meta #,e-stx))
      e-stx))

;; Create an "enhanced" message by prepending the 'enhanced tag.
(define (enhanced-message loc-stx msg-stx κ-stx j-stx)
  (uncurry (list (quasisyntax/loc loc-stx 'enhanced) κ-stx j-stx msg-stx)))

;; Build a blame expression with static source location embedded.
(define (make-blame loc-stx j-stx)
  (let ((src (let ((s (syntax-source loc-stx)))
               (cond ((path? s)   (path->string s))
                     ((symbol? s) (symbol->string s))
                     ((string? s) s)
                     (else        "unknown")))))
    (quasisyntax/loc loc-stx
      (blame #,j-stx
             (quote (position-in-file-loc #,src
                              #,(syntax-line loc-stx)
                              #,(syntax-column loc-stx)))))))

;; Parse a message/c form and return (values pattern-stx enhanced-body-stx vars)
;; where:
;;   pattern-stx      — the match pattern for the raw message
;;   enhanced-msg-fn  — a function (vars -> stx) producing the enhanced message
;;   ps               — the fresh payload variable syntax identifiers
(define (message/c-parts exp-stx k j)
  (emit-contract-csv "message/c" exp-stx)
  (syntax-parse exp-stx
    #:datum-literals (message/c)
    [(message/c tag (payload-contract ...) recipient communication)
     (let* ((ps   (map (lambda _ (datum->syntax exp-stx (gensym "x")))
                       (syntax->list #'(payload-contract ...))))
            (nmsg (map (lambda (contract arg)
                         (emit-contract-csv "contract-check" contract)
                         (quasisyntax/loc exp-stx (#,contract #,k #,j #,arg)))
                       (syntax->list #'(payload-contract ...))
                       ps))
            (pat  (uncurry (cons #'tag ps)))
            (enhanced-body
             (letify exp-stx nmsg
               (lambda (vars)
                 (enhanced-message exp-stx
                   (uncurry (cons (quasisyntax/loc exp-stx #,#'tag) vars))
                   (quasisyntax/loc exp-stx
                     (#,(translate-aux #'communication) #,@vars))
                   j)))))
       (values pat enhanced-body))]))

;; Translate a message contract to a lambda (k j v) -> enhanced-msg-or-#f
(define (translate-message/c contract-stx)
  (let* ((k (datum->syntax contract-stx (gensym "k")))
         (j (datum->syntax contract-stx (gensym "j")))
         (v (datum->syntax contract-stx (gensym "v"))))
    (define-values (pat enhanced-body) (message/c-parts contract-stx k j))
    (quasisyntax/loc contract-stx
      (lambda (#,k #,j #,v)
        (match #,v ((#,pat #,enhanced-body) (_ #f))))))
)

;; The message/c* special form — see original for full documentation.
(define (translate-message/c* exp-stx)
  (define (translate-handler handler-stx rest)
    (syntax-parse handler-stx
      [(ids tag (payload-contract ...) recipient-contract)
       (quasisyntax/loc handler-stx
         (lambda ids
           (ensures/c
             (message/c tag (payload-contract ...) recipient-contract
                        #,(translate-message/c*-aux rest)))))]))

  (define (translate-message/c*-aux handlers)
    (if (null? handlers)
        (datum->syntax (if (null? handlers) exp-stx (car handlers)) 'unconstrained/c)
        (let ((handler (car handlers)))
          (syntax-parse handler
            #:datum-literals (and-then)
            [(and-then e) #'e]
            [_ (translate-handler handler (cdr handlers))]))))

  (syntax-parse exp-stx
    [(message/c* first-msg rest-msg ...)
     (syntax-parse #'first-msg
       [(tag (payload-contract ...) recipient-contract)
        (quasisyntax/loc exp-stx
          (message/c tag (payload-contract ...) recipient-contract
                     #,(translate-message/c*-aux (syntax->list #'(rest-msg ...)))))])]
    [_ (error "a message/c* contract requires at least one message")]))


;; Translate a communication contract to equivalent SimpleActor construct.
(define (translate-communication/c κ-stx)
  (if (and (syntax? κ-stx) (symbol? (syntax-e κ-stx)))
      κ-stx
      (translate-communication/c-aux κ-stx)))

(define (translate-communication/c-aux κ-stx)
  (syntax-parse κ-stx
    #:datum-literals (ensures/c)
    ((ensures/c msg-contract ...)
     (emit-contract-csv "ensures/c" κ-stx (length (syntax->list #'(msg-contract ...))))))
  ;; Builds a match clause: (pattern (begin (send^ rcv enhanced) (r (cons tag trace))))
  (define (make-ensures-clause message-stx r-stx rcv-stx trace-stx j-stx msg-contract-stx)
    (define-values (pat enhanced-body)
      (message/c-parts msg-contract-stx j-stx j-stx))
    (syntax-parse msg-contract-stx
      #:datum-literals (message/c)
      [(message/c tag . _)
       (quasisyntax/loc msg-contract-stx
         (#,pat
          (begin ((dyn send^) #,rcv-stx #,enhanced-body)
                 (#,r-stx (cons #,#'tag #,trace-stx)))))]))

  (define (check-member trace-stx j-stx contract-stx)
    (lambda (msg-contract-stx)
      (syntax-parse msg-contract-stx
        #:datum-literals (message/c)
        [(message/c tag . _)
         (quasisyntax/loc contract-stx
           (if (member #,#'tag #,trace-stx)
               #t
               #,(make-blame contract-stx j-stx)))])))

  (syntax-parse κ-stx
    #:datum-literals (ensures/c)
    ((ensures/c msg-contract ...)
     (let* ((j       (datum->syntax κ-stx (gensym "j")))
            (message (datum->syntax κ-stx (gensym "message")))
            (rcv     (datum->syntax κ-stx (gensym "rcv")))
            (trace   (datum->syntax κ-stx (gensym "trace")))
            (r       (datum->syntax κ-stx (gensym "r")))
            (contracts (syntax->list #'(msg-contract ...)))
            (match-clauses
             (map (lambda (c)
                    (make-ensures-clause message r rcv trace j c))
                  contracts)))
       (let* ((checks (map (check-member trace j κ-stx) contracts))
              (wildcard (quasisyntax/loc κ-stx
                          (_ (begin ((dyn send^) #,rcv #,message)
                                    (#,r #,trace))))))
         (with-syntax ([(check ...) checks])
           (quasisyntax/loc κ-stx
             (lambda (#,j)
               (letrec
                 ((#,r (lambda (#,trace)
                         (receive
                           (('finish
                             (begin check ...))
                            ((pair #,rcv #,message)
                             (match #,message
                               #,(append match-clauses (list wildcard)))))))))
                 (spawn^ (#,r (list))))))))))
    (_ (error (format "expected ensures/c, got ~a" (syntax->datum κ-stx))))))


;; Translate a behavior contract to a base-level construct.
(define (translate-behavior/c contract-stx)
  (syntax-parse contract-stx
    #:datum-literals (behavior/c)
    [(behavior/c msg ...)
     (emit-contract-csv "behavior/c" contract-stx (length (syntax->list #'(msg ...))))])
  (define (clauses->if k j a v message-contract-stxs otherwise)
    (if (null? message-contract-stxs)
        otherwise
        (let ((result (datum->syntax contract-stx (gensym "result"))))
          (quasisyntax/loc contract-stx
            (letrec ((#,result (#,(car message-contract-stxs) #,k #,j #,v)))
              (if #,result
                  (#,a #,result)
                  #,(clauses->if k j a v (cdr message-contract-stxs) otherwise)))))))

  (syntax-parse contract-stx
    #:datum-literals (behavior/c)
    [(behavior/c msg ...)
     (let ((a                (datum->syntax contract-stx (gensym "a")))
           (k                (datum->syntax contract-stx (gensym "k")))
           (j                (datum->syntax contract-stx (gensym "j")))
           (v                (datum->syntax contract-stx (gensym "v")))
           (message-contracts (map translate-aux (syntax->list #'(msg ...)))))
       (quasisyntax/loc contract-stx
         (lambda (#,k #,j #,a)
           (lambda (#,v)
             #,(clauses->if k j a v message-contracts
                            (make-blame contract-stx k))))))]))


;; Enhance receive patterns with enhanced message counterparts.
(define (enhanced-receive-patterns pats-stx)
  (define (enhance-pattern pat-stx)
    (syntax-parse pat-stx
      [(message bdy ...)
       (let* ((κ        (datum->syntax pat-stx (gensym "k")))
              (κc       (datum->syntax pat-stx (gensym "kc")))
              (rcv      (datum->syntax pat-stx (gensym "rcv")))
              (msg      (datum->syntax pat-stx (gensym "msg")))
              (j        (datum->syntax pat-stx (gensym "j")))
              (old-send (datum->syntax pat-stx (gensym "old-send")))
              (bdy-list (syntax->list #'(bdy ...)))
              (bdy-init (if (null? bdy-list) '() (drop-right bdy-list 1)))
              (bdy-last (if (null? bdy-list) #f (last bdy-list))))
         (quasisyntax/loc pat-stx
           [#,(uncurry (list (quasisyntax/loc pat-stx 'enhanced)
                             κ j #'message))
            (letrec
              ((#,κc (#,κ #,j))
               (#,old-send (dyn send^)))
              (parametrize
                ((send^ (lambda (#,rcv #,msg) (#,old-send #,κc (cons #,rcv #,msg)))))
                #,@(if (null? bdy-init)
                       '()
                       (list (quasisyntax/loc pat-stx
                               (begin #,@bdy-init (#,old-send #,κc 'finish)))))
                #,bdy-last))]))]))

  (map enhance-pattern (syntax->list pats-stx)))

(define (last stxs)
  (if (null? (cdr stxs)) (car stxs) (last (cdr stxs))))

(define (translate-aux-arrowd stx)
  (emit-contract-csv "->d" stx)
  (let* ((κ-list     (cdr (syntax->list stx)))
         (ags        (drop-right κ-list 1))
         (ret        (last κ-list))
         (vs         (map (lambda _ (datum->syntax stx (gensym))) ags))
         (j          (datum->syntax stx (gensym "j")))
         (k          (datum->syntax stx (gensym "k")))
         (f          (datum->syntax stx (gensym "f")))
         (xs         (map (lambda _ (datum->syntax stx (gensym "x"))) ags))
         (letrec-bds (map (lambda (arg v x)
                            (list x (instrument-meta stx
                                      (quasisyntax/loc stx
                                        (#,(translate-aux arg) #,k #,j #,v)))))
                          ags vs xs)))
    (with-syntax ([(v ...) vs]
                  [(x ...) xs]
                  [(bd ...) letrec-bds])
      (instrument-meta stx
        (quasisyntax/loc stx
          (lambda (#,j #,k #,f)
            (lambda (v ...)
              (letrec (bd ...)
                #,(instrument-meta stx
                    (quasisyntax/loc stx
                      ((#,(translate-aux ret) x ...) #,j #,k (#,f x ...))))))))))))

(define (translate-aux stx)
  ;; ->d must be handled before syntax-parse since ->d is a macro in #lang racket
  ;; and syntax-parse would try to expand it as a transformer.
  (if (and (stx-pair? stx)
           (let ((head (stx-car stx)))
             (and (identifier? head) (eq? (syntax-e head) '->d))))
      (translate-aux-arrowd stx)
      (syntax-parse stx
        #:datum-literals (flat -> mon behavior/c ensures/c message/c message/c*
                          one-of/c struct/c receive)
        ((flat e)
     (emit-contract-csv "flat" stx)
     (let ((j (datum->syntax stx (gensym)))
           (k (datum->syntax stx (gensym)))
           (v (datum->syntax stx (gensym))))
       (instrument-meta stx
         (quasisyntax/loc stx
           (lambda (#,j #,k #,v)
             (if (#,#'e #,v)
                 #,v
                 #,(make-blame stx j)))))))
    ((-> κs ...)
     (emit-contract-csv "->" stx)
     (let* ((κ-list (syntax->list #'(κs ...)))
            (len    (length κ-list)))
       (if (= len 2)
           (let ((j (datum->syntax stx (gensym)))
                 (k (datum->syntax stx (gensym)))
                 (f (datum->syntax stx (gensym)))
                 (v (datum->syntax stx (gensym))))
             (instrument-meta stx
               (quasisyntax/loc stx
                 (lambda (#,j #,k #,f)
                   (lambda (#,v)
                     #,(instrument-meta stx
                         (quasisyntax/loc stx
                           (#,(translate-aux (cadr κ-list)) #,j #,k
                            (#,f #,(instrument-meta stx
                                     (quasisyntax/loc stx
                                       (#,(translate-aux (car κ-list)) #,k #,j #,v))))))))))))
           (let* ((ags (drop-right κ-list 1))
                  (ret (last κ-list))
                  (vs  (map (lambda _ (datum->syntax stx (gensym))) ags))
                  (j   (datum->syntax stx (gensym "j")))
                  (k   (datum->syntax stx (gensym "k")))
                  (f   (datum->syntax stx (gensym "f"))))
             (with-syntax ([(v ...) vs])
               (instrument-meta stx
                 (quasisyntax/loc stx
                   (lambda (#,j #,k #,f)
                     (lambda (v ...)
                       #,(instrument-meta stx
                           (quasisyntax/loc stx
                             (#,(translate-aux ret) #,j #,k
                              (#,f #,@(map (lambda (arg v-stx)
                                             (instrument-meta stx
                                               (quasisyntax/loc stx
                                                 (#,(translate-aux arg) #,k #,j #,v-stx))))
                                           ags vs)))))))))))))
)
    ((mon j k κ v)
     (emit-contract-csv "mon" stx)
     (let ((xj (datum->syntax stx (gensym "xj")))
           (xk (datum->syntax stx (gensym "xk"))))
       (quasisyntax/loc stx
         (letrec ((#,xj #,(if (symbol? (syntax-e #'j))
                              (quasisyntax/loc stx '#,#'j)
                              #'j))
                  (#,xk #,(if (symbol? (syntax-e #'k))
                              (quasisyntax/loc stx '#,#'k)
                              #'k)))
           #,(instrument-meta stx
               (quasisyntax/loc stx
                 (#,(translate-aux #'κ) #,xj #,xk #,(translate-aux #'v))))))))
    ((behavior/c msg ...)
     (translate-behavior/c stx))
    ((ensures/c msg ...)
     (translate-communication/c stx))
    ((message/c . _)
     (translate-message/c stx))
    ((message/c* . _)
     (translate-aux (translate-message/c* stx)))
    ((one-of/c option ...)
     (let ((v (datum->syntax stx (gensym "v"))))
       (define (gen-oneof option-stxs)
         (if (null? (cdr option-stxs))
             (quasisyntax/loc stx (eq? #,(car option-stxs) #,v))
             (quasisyntax/loc stx
               (if (eq? #,(car option-stxs) #,v)
                   #t
                   #,(gen-oneof (cdr option-stxs))))))
       (translate-aux
         (quasisyntax/loc stx
           (flat (lambda (#,v) #,(gen-oneof (syntax->list #'(option ...)))))))))
    ((struct/c name field ...)
     (define (gen-field-checks j k field-stxs v-stx checked-v)
       (let ((checked (datum->syntax stx (gensym "checked"))))
         (if (null? field-stxs)
             (consify stx (reverse checked-v))
             (quasisyntax/loc stx
               (letrec ((#,checked (#,(translate-aux (car field-stxs)) #,j #,k (orig-car #,v-stx))))
                 #,(gen-field-checks j k (cdr field-stxs)
                                     (quasisyntax/loc stx (orig-cdr #,v-stx))
                                     (cons checked checked-v)))))))
     (let ((v (datum->syntax stx (gensym "v")))
           (j (datum->syntax stx (gensym "j")))
           (k (datum->syntax stx (gensym "k"))))
       (quasisyntax/loc stx
         (lambda (#,j #,k #,v)
           #,(gen-field-checks j k (syntax->list #'(field ...))
                               (quasisyntax/loc stx (orig-cdr #,v))
                               (list #'name))))))
    ((receive (pat ...))
     (let ((enhanced (enhanced-receive-patterns #'(pat ...))))
       (with-syntax ([(orig-pat ...) (syntax->list #'(pat ...))]
                     [(enh-pat ...)  enhanced])
         (quasisyntax/loc stx
           (receive (orig-pat ... enh-pat ...))))))
    ((e ...)
     (with-syntax ([(translated ...) (map translate-aux (syntax->list #'(e ...)))])
       (quasisyntax/loc stx (translated ...))))
    (other #'other))))

(define (preluded stx)
  (quasisyntax/loc stx
    (letrec
      ((any? (lambda (v) #t))
       (meta (lambda (v) v))
       (member (lambda (v lst)
                 (begin
                   (match lst
                     (((list) #f)
                      ((pair v1 vs)
                       (if (eq? v v1) #t (member v vs))))))))
       (loopy-actor (lambda ()
                      (receive
                        (((cons rcv msg) (send^ rcv msg)
                                         (loopy-actor))
                         ('finish (terminate))))))
       (unconstrained/c (lambda payload (lambda j (spawn^ (loopy-actor)))))
       (actor? (lambda (k j v) v))
       (nonzero? (lambda (v) (not (= v 0)))))
      #,stx)))

(define (translate stx #:meta [meta #f])
  (parameterize ([*is-meta* meta])
    (preluded (translate-aux stx))))

(module+ main
  (require "../tests/prelude.rkt")
  (require racket/pretty)

  (pretty-display (syntax->datum (translate
    (datum->syntax #f
      '(message/c*
        [ping (actor?) any-recipient]
        [(ref) pong (actor?) (specific-recipient ref)]
        [and-then ping/c]))))))
