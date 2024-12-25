#lang racket

;; This module compiles structs to tagged nested pairs, 
;; it generates `define` expressions so it should be 
;; executed before the undefiner.


;; Translate a single field, this means that a accessors fopr that 
;; field and setters are generator
(define ((translate-field structname) fieldname i) 
  (define (gen-car i of)
    (if (= i -1)
        of 
        `(cdr ,(gen-car (- i 1) of))))

  (let
    ((getter (string->symbol (string-append (symbol->string structname) "-" (symbol->string fieldname))))
     (structVar (gensym structname)))

  `(define (,getter ,structname)
      (car ,(gen-car i structname)))))

;; Generate a constructor for the given struct name with the given number of fields
(define (translate-constructor structname fields)
  (define (generate-parameters fields)
    (if (null? fields)
      '()
      (cons (gensym (car fields)) (generate-parameters (cdr fields)))))

  (define (generate-conses parameters)
    (if (null? parameters)
        ''()
        `(cons ,(car parameters) ,(generate-conses (cdr parameters)))))

  (define parameters (generate-parameters fields))
  `(define (,structname ,@parameters)
     ,`(cons (quote ,structname) ,(generate-conses parameters))))
   

(define (field-name field)
  (if (symbol? field)
      field 
      (error (string-append "field format not supported" field))))

(define (translate exp)
  (match exp
    [(quasiquote (struct ,name ,fields ,@annotations)) 
     (define nam (gensym name))
     `(,(translate-constructor name (map field-name fields))
       (define (,(string->symbol (string-append (symbol->string name) "?")) ,nam)
         (eq? (car ,nam) (quote ,name)))
       ,@(map (translate-field name) (map field-name fields) (build-list (length fields) values)))]
    ;; other special forms
    [(quasiquote (,operator ,@operands)) 
     `(,(translate operator) ,@(map translate operands))]
    ;; literals or symbols
    [l l]))

(module+ main
  (translate `(struct person (name surname))))

(provide translate)
