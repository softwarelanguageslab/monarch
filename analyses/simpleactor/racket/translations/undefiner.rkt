#lang racket

(require syntax/parse)
(require "../utils.rkt")

;; This module transforms all `define` expressions in a program
;; to a series of (nested) `letrec` expressions.

;; List of (name-stx . value-stx) pairs accumulated before the next expression
(define *defines* (make-parameter '()))

(define (register-define name-stx expr-stx)
  (*defines* (cons (cons name-stx expr-stx) (*defines*))))

(define (is-define? stx)
  (syntax-parse stx
    #:datum-literals (define)
    [(define _ ...) #t]
    [_ #f]))

(define (surround-letrec exs-thk)
  (let ((defines (*defines*)))
    (*defines* '())
    (if (null? defines)
        (exs-thk)
        (let* ((pairs   (reverse defines))
               (names   (map car pairs))
               (vals    (map cdr pairs))
               (body    (exs-thk)))
          (with-syntax ([(name ...) names]
                        [(val  ...) vals])
            ;; Use the location of the first define as the letrec location
            (let ((loc (car names)))
              (list (quasisyntax/loc loc
                      (letrec ((name val) ...) #,@body)))))))))

(define (flatten-begin stx)
  (cond
    ((not (syntax? stx)) (list stx))
    (else
     (syntax-parse stx
       #:datum-literals (begin)
       [(begin es ...)
        (apply append (map flatten-begin (syntax->list #'(es ...))))]
       [other (list #'other)]))))

(define (undefine-sequence* stxs allowed)
  (if (null? stxs)
      '()
      (let ((current (car stxs))
            (rest    (cdr stxs)))
        (if (not (is-define? current))
            (surround-letrec
               (lambda ()
                   (let ((result (undefine current #f)))
                     (if (null? result)
                         (undefine-sequence rest allowed)
                         (cons result
                               (undefine-sequence* rest allowed))))))
            (begin (undefine current #t)
                   (undefine-sequence* rest allowed))))))

(define (undefine-sequence stxs allowed) (undefine-sequence* stxs allowed))

(define (undefine stx allowed)
  (syntax-parse stx
    #:datum-literals (letrec let let* begin lambda define if)
    [(letrec ((name val) ...) bdy ...)
     (let* ((names  (syntax->list #'(name ...)))
            (vals   (map (lambda (v) (undefine v #f))
                         (syntax->list #'(val ...))))
            (body   (parameterize [(*defines* '())]
                      (undefine-sequence (syntax->list #'(bdy ...)) #t))))
       (with-syntax ([(name2 ...) names]
                     [(val2  ...) vals])
         (quasisyntax/loc stx
           (letrec ((name2 val2) ...) #,@body))))]
    [(let ((name val) ...) bdy ...)
     (let* ((names  (syntax->list #'(name ...)))
            (vals   (map (lambda (v) (undefine v #f))
                         (syntax->list #'(val ...))))
            (body   (parameterize [(*defines* '())]
                      (undefine-sequence (syntax->list #'(bdy ...)) #t))))
       (with-syntax ([(name2 ...) names]
                     [(val2  ...) vals])
         (quasisyntax/loc stx
           (letrec ((name2 val2) ...) #,@body))))]
    [(let* ((name val) ...) bdy ...)
     (let* ((names  (syntax->list #'(name ...)))
            (vals   (map (lambda (v) (undefine v #f))
                         (syntax->list #'(val ...))))
            (body   (parameterize [(*defines* '())]
                      (undefine-sequence (syntax->list #'(bdy ...)) #t))))
       (with-syntax ([(name2 ...) names]
                     [(val2  ...) vals])
         (quasisyntax/loc stx
           (let* ((name2 val2) ...) #,@body))))]
    [(begin es ...)
     (let ((undefined-seq (undefine-sequence (flatten-begin stx) allowed)))
       (with-syntax ([(e2 ...) undefined-seq])
         (quasisyntax/loc stx (begin e2 ...))))]
    [(lambda ags bdy ...)
     (let ((body (parameterize [(*defines* '())]
                   (undefine-sequence (syntax->list #'(bdy ...)) #t))))
       (quasisyntax/loc stx (lambda ags #,@body)))]
    [(define (f ag ...) bdy ...)
     (unless allowed (error "define not allowed at this location"))
     (register-define #'f (undefine (quasisyntax/loc stx (lambda (ag ...) bdy ...)) allowed))
     '()]
    [(define x v)
     (unless allowed (error "define not allowed at this location"))
     (register-define #'x (undefine #'v #f))
     '()]
    [(if cnd csq alt)
     (quasisyntax/loc stx
       (if #,(undefine #'cnd #f)
           #,(undefine #'csq #f)
           #,(undefine #'alt #f)))]
    [(op operand ...)
     (quasisyntax/loc stx
       (#,(undefine #'op #f)
        #,@(map (lambda (o) (undefine o #f))
                (syntax->list #'(operand ...)))))]
    [other #'other]))

(define (undefine-program stxs)
  (define result (undefine-sequence stxs #t))
  (unless (null? (cdr result))
    (error (format "program should only contain a single `letrec` expression~n")))
  (car result))

(define (undefine-single stx)
  (undefine stx #t))

(module+ main
  (define test-stx
    (datum->syntax #f
      '(letrec ((x 10))
           (define x 10)
           (display (+ x 2))
           (define y 20)
           (define (foo x) (+ x y))
           (foo 20))))
  (displayln (syntax->datum (undefine-single test-stx)))
  (displayln (syntax->datum (undefine-single (datum->syntax #f 42)))))

(provide
  undefine-program
  undefine-single)
