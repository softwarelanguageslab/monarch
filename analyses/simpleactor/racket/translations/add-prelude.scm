#lang racket

(require racket/runtime-path)

;; This module adds a prelude to the input file

(define-runtime-path prelude-path "../preludes/simpleactor-prelude.scm")

(define (translate stx)
  (let* ((port (open-input-file prelude-path))
         (_ (port-count-lines! port))
         (prelude-stx (read-syntax prelude-path port)))
    (quasisyntax/loc stx
      (begin #,prelude-stx #,stx))))

(provide translate)
