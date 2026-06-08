#lang racket

(require syntax/parse)
(require "../utils.rkt")

;; This module compiles structs to tagged nested pairs,
;; it generates `define` expressions so it should be
;; executed before the undefiner.

(define ((translate-field structname) fieldname-stx i)
  (define (gen-car i of-stx loc)
    (if (= i -1)
        of-stx
        (quasisyntax/loc loc (orig-cdr #,(gen-car (- i 1) of-stx loc)))))

  (let* ((fieldname (syntax-e fieldname-stx))
         (getter    (string->symbol
                      (string-append (symbol->string structname)
                                     "-"
                                     (symbol->string fieldname))))
         (struct-var (datum->syntax fieldname-stx (gensym structname))))
    (quasisyntax/loc fieldname-stx
      (define (#,(datum->syntax fieldname-stx getter) #,struct-var)
        (orig-car #,(gen-car i struct-var fieldname-stx))))))

(define (translate-constructor loc-stx structname fields)
  (define (gen-params fields)
    (if (null? fields)
        '()
        (cons (datum->syntax (car fields) (gensym (syntax-e (car fields))))
              (gen-params (cdr fields)))))
  (define (gen-conses params loc)
    (if (null? params)
        (quasisyntax/loc loc '())
        (quasisyntax/loc loc
          (orig-cons #,(car params) #,(gen-conses (cdr params) loc)))))
  (let ((params (gen-params fields)))
    (with-syntax ([(param ...) params])
      (quasisyntax/loc loc-stx
        (define (#,(datum->syntax loc-stx structname) param ...)
          (orig-cons '#,(datum->syntax loc-stx structname)
                     #,(gen-conses params loc-stx)))))))

(define (translate stx)
  (syntax-parse stx
    #:datum-literals (struct)
    [(struct name (field ...) annotation ...)
     (let* ((structname  (syntax-e #'name))
            (field-stxs  (syntax->list #'(field ...)))
            (nam         (datum->syntax stx (gensym structname)))
            (pred-name   (datum->syntax stx
                           (string->symbol
                             (string-append (symbol->string structname) "?"))))
            (constructor (translate-constructor stx structname field-stxs))
            (predicate   (quasisyntax/loc stx
                           (define (#,pred-name #,nam)
                             (eq? (car #,nam) '#,(datum->syntax stx structname)))))
            (getters     (map (translate-field structname)
                              field-stxs
                              (build-list (length field-stxs) values))))
       (quasisyntax/loc stx
         (begin #,constructor #,predicate #,@getters)))]
    [(e es ...)
     (quasisyntax/loc stx
       (#,(translate #'e) #,@(map translate (syntax->list #'(es ...)))))]
    [other #'other]))

(module+ main
  (displayln (syntax->datum (translate (datum->syntax #f '(struct person (name surname)))))))

(provide translate)
