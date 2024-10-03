#lang racket

(provide (all-defined-out))

;; flat contract test
(define test-1
   '(mon j k (flat nonzero?) 10))

;; contract on function test
(define test-2
   '(mon j k (-> (flat nonzero?) (flat positive?)) (lambda (x) (/ 1 (* x x)))))

;; higher order contract test
(define test-3 
  '(mon j k (-> (-> (flat nonzero?) (flat positive?)) (flat positive?)) (lambda (f) (f 42))))

;; higher-order contract combinator

(define test-4 
   `(letrec 
      ((nonzero/c (flat nonzero?)))

      (mon j k nonzero/c 5)))

(define test-5
  `(letrec
     ((>/c (lambda (x) (flat (lambda (v) (> v x)))))
      (nonzero/c (flat nonzero?)))

     (mon j k (-> (>/c 1) nonzero/c) (lambda (x) (- x 1)))))

;; test suites

(define cfcp 
  (list test-1 test-2 test-3))

(define cc-combinator
  (list test-4 test-5))

