#lang racket 

(require racket/runtime-path)

;; This module adds a prelude to the input file

(define-runtime-path prelude-path "../preludes/simpleactor-prelude.scm")

(define (translate exp)
  (let ((input-file (open-input-file prelude-path)))
  `(begin ,(read input-file) ,exp)))

(provide translate)

