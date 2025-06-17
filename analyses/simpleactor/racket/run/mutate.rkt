#lang racket

(require racket/pretty)
(require racket/cmdline)
(require (prefix-in mutator: "../testing/mutate.rkt"))
(require "../utils.rkt")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; When set, the mutations are random which potentially decreases the total state space and number of mutations.
(define *randomized* (make-parameter #f))

(define-values (file-to-mutate output-dir)
  (command-line
    #:program "mutator"
    #:once-each
    [("-r" "--randomized") "When set, the mutations are explored in a randomized fashion instead of exhaustively"
                           (*randomized* #t)]
    #:args (filename output)
    (values filename output)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Utilities                      
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (path-base path)
  (path-replace-extension path #""))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Entrypoint
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Write the a mutation at the given index to the output directory
(define (write-output mutation i)
  (define out-name
    (build-path output-dir (file-name-from-path (path-add-extension
      (path-add-extension mutate-base (number->string i) #"")
      mutate-ext))))
  (define out-file (open-output-file out-name #:mode 'text #:exists 'truncate))
  (if (list? mutation)
    (for-each (lambda (mut) (pretty-write mut out-file)) mutation)
    (pretty-write mutation out-file))
  (close-output-port out-file)) 

;; The "to mutate" file as a path
(define mutate-path (string->path file-to-mutate))

;; The path to the mutation file without its extension
(define mutate-base (path-base mutate-path))

;; The extension of the base file to mutate
(define mutate-ext (path-get-extension mutate-path))

;; Check if the output directory exists, and if not
;; create it.
(unless (directory-exists? output-dir)
  (make-directory output-dir))

;; Read the "to-muate" file as an expression
(define mutate-file (open-input-file file-to-mutate))
(define mutate-exp (read-all mutate-file))
(close-input-port mutate-file)

;; Compute the mutations of the file
(define mutations (mutator:collect-mutations #:randomized (*randomized*) mutate-exp))

(for-each write-output mutations (range 0 (length mutations))) 


