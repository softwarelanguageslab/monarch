#lang racket

(require racket/pretty)
(require (prefix-in un: "../translations/undefiner.rkt"))
(require (prefix-in st: "../translations/structs-to-pair.rkt"))
(require (prefix-in cc: "../translations/cc-combinator.rkt"))
(require (prefix-in ac: "../translations/actor-translation.rkt"))
(require (prefix-in co: "../translations/contract-out-translation.rkt"))
(require (prefix-in ap: "../translations/add-prelude.scm"))
(require "../utils.rkt")

(define (read-input)
  (let* ((args   (current-command-line-arguments))
         (port   (if (= (vector-length args) 0)
                     (current-input-port)
                     (open-input-file (vector-ref args 0))))
         (source (if (= (vector-length args) 0)
                     (or (object-name (current-input-port)) 'input)
                     (string->path (vector-ref args 0))))
         (_      (port-count-lines! port))
         (stxs   (read-all-syntax port source)))
    (with-syntax ([(s ...) stxs])
      (datum->syntax #f #'(begin s ...)))))

(displayln "#lang simpleactor")
(pretty-write
  (syntax->datum
    (un:undefine-single
      (st:translate
        (cc:translate
          #:meta #f
          (ac:translate
            (ap:translate
              (co:translate
                (read-input)))))))))
