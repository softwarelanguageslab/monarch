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
  (let* ((port   (current-input-port))
         (source (or (object-name port) 'input))
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
