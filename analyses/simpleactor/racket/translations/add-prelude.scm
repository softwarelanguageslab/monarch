#lang racket 

;; This module adds a prelude to the input file

(define current-path 
  (path->string (path-only (path->complete-path (find-system-path 'run-file)))))

(define-runtime-path prelude-path "../preludes/simpleactor-prelude.scm")

(define (translate exp)
  (let ((input-file (open-input-file prelude-path)))
  `(begin ,(read input-file) ,exp)))

(provide translate)

