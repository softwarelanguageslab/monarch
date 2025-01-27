#lang racket

(require "../translations/guile.rkt")
(require racket/pretty)

(pretty-write (translate (read)))
