#lang info

(define collection "simpleactor")
(define deps '("base" "cover"))

(define cover-formats
  '(("sexp" (lib "simpleactor/coverage-sexp.rkt") generate-sexp-coverage)))
