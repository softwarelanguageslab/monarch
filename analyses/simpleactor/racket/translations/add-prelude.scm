#lang racket 

;; This module adds a prelude to the input file

(define (translate exp)
  (let ((input-file (open-input-file "../racket/simpleactor-prelude.scm")))
  `(begin ,(read input-file) ,exp)))

(provide translate)

