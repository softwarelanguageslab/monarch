#lang racket

(require syntax/module-reader)

(provide (all-from-out syntax/module-reader))

(module-reader "simpleactor/main")
