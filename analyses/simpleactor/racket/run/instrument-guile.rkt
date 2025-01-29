#lang racket

(require "../translations/guile.rkt")
(require racket/pretty)
(require syntax/strip-context)	


(define argv (current-command-line-arguments))
(unless (>= (vector-length argv) 1)
    (error "please provide a filename to convert to Guile compatible source code"))

(define filename (vector-ref argv 0))
(define input-port (open-input-file filename))
(port-count-lines! input-port)
;; The call to replace-context is needed here so that we can match against 
;; reserved keywords from this file (see @syntax-case@ in @translations/guile.rkt@)
(define exp (replace-context #'here (read-syntax filename input-port)))
(close-input-port input-port)

(pretty-write (syntax->datum (instrument exp)))
