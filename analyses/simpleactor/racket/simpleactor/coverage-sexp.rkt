#lang racket/base

;;
;; Custom cover output format for simpleactor.
;;
;; Produces a single S-expression file where each item is:
;;   (FILE LINE COVERED?)
;;
;; FILE is the absolute path of the source file as a string.
;; COVERED? is #t if any position on the line is 'covered,
;; #f if all relevant positions are 'uncovered.
;; Lines with only 'irrelevant positions are omitted.
;;
;; Registration: this module is listed in info.rkt under cover-formats.
;;

(require racket/file
         racket/string)

(provide generate-sexp-coverage)

;; coverage : (-> any/c exact-positive-integer? (or/c 'covered 'uncovered 'irrelevant))
;; files    : (listof path-string?)
;; dir      : path-string?   (output directory, defaults to "coverage")
(define (generate-sexp-coverage coverage files [dir "coverage"])
  (make-directory* dir)
  (define out-path (build-path dir "coverage.coverage"))
  (call-with-output-file out-path #:exists 'truncate
    (lambda (out)
      (for ([file (in-list files)])
        (define file-str (path->string (simplify-path (path->complete-path file))))
        (define (covered? pos) (coverage file pos))
        (define entries (collect-line-coverage covered? file file-str))
        (for ([entry (in-list entries)])
          (write entry out)
          (newline out))))))

;; Returns #t if the only covered characters on the line are closing
;; delimiters ) ] }, which cover can spuriously mark as covered because
;; they belong to the span of a surrounding expression.
(define (only-closing-parens-covered? line statuses)
  (define closing? (lambda (c) (member c '(#\( #\[ #\) #\] #\}))))
  (for/and ([ch  (in-string line)]
            [st  (in-list statuses)])
    (or (not (eq? st 'covered))   ; not covered — irrelevant to the check
        (closing? ch))))          ; covered but it's a closing delimiter

;; Returns a list of (FILE LINE COVERED?) for every line that has at least one
;; relevant position. COVERED? is #t if any position on the line is 'covered,
;; but lines where the only covered characters are closing delimiters are
;; treated as uncovered to avoid false positives from cover.
(define (collect-line-coverage covered? file file-str)
  (define lines (string-split (file->string file) "\n" #:trim? #f))
  (define-values (entries _pos)
    (for/fold ([acc '()] [pos 1])              ; pos: 1-based absolute char offset
              ([line (in-list lines)]
               [line-num (in-naturals 1)])
      (define len (string-length line))
      (define statuses
        (for/list ([i (in-range len)])
          (covered? (+ pos i))))
      (define relevant (filter (lambda (s) (not (eq? s 'irrelevant))) statuses))
      (define covered
        (and (pair? relevant)
             (ormap (lambda (s) (eq? s 'covered)) relevant)
             (not (only-closing-parens-covered? line statuses))))
      (define entry
        (and (pair? relevant) `(,file-str ,line-num ,covered)))
      (values (if entry (cons entry acc) acc)
              (+ pos len 1))))                 ; +1 for the newline
  (reverse entries))
