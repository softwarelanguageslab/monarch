;; This module does not contain executable code. Instead it contains a prelude for the simple actor language.
;; It has to be compiled to SimpleActor since SimpleActor does not understand `flat` neither does is understand `define`.

(begin 
   ;; Original functions
   (define orig-+ +)
   (define orig-- -)
   (define orig-* *)
   (define orig-/ /)
   (define orig-car car)
   (define orig-cdr cdr)
   (define orig-cons cons)
   (define orig-vector-ref vector-ref)
   (define orig-vector-set vector-set!)

   ;; break letrec chain
   '()

   ;; Built-in flat contracts
   (define real/c (flat real?))
   (define boolean?/c (flat boolean?))
   (define number?/c (flat number?))
   (define any/c (flat (lambda (v) #t)))
   (define any?/c (flat (lambda (v) #t)))
   (define image? any/c) ;; TODO: unsupported, not sure how to support this?
   (define cons?/c (flat pair?))
   (define pair?/c (flat pair?))
   (define integer?/c (flat integer?))
   (define (and/c c1 c2)
      (lambda (k j v) 
           (and (c1 k j v) (c2 k j v))))
   (define (list-of contract)
     (lambda (k j v)
       (if (null? v)
           '()
           (cons (contract k j (car v)) ((list-of contract) k j (cdr v))))))
   (define (any? v) #t)
   (define nonzero? (lambda (v) (not (= v 0))))
   (define nonzero?/c (flat (lambda (v) (not (= v 0)))))

   ;; Other utility functionsa

   (define (meta v) v)

   ;; Contracts on primitive functions (these shadow the primitive functions)

   ;; Arithmetic operations
   (define + (mon server client (-> number?/c number?/c number?/c) (lambda (a b) (orig-+ a b))))

   (define - (mon server client (-> number?/c number?/c number?/c) (lambda (a b) (orig-- a b))))

   (define * (mon server client (-> number?/c number?/c number?/c) (lambda (a b) (orig-* a b))))

   (define / (mon server client (-> number?/c number?/c number?/c) (lambda (a b) (orig-/ a b))))

   ;; Datastructor operations

   ;; Pairs
   (define car (mon server client (-> pair?/c any/c) (lambda (p) (orig-car p))))

   (define cdr (mon server client (-> pair?/c any/c) (lambda (p) (orig-cdr p))))

   (define cons (mon server client (-> any/c any/c pair?/c) (lambda (a b) (cons a b))))

   ;; Vectors

   (define vector-ref (mon server client (-> vector?/c integer?/c) (lambda (v i) (orig-vector-ref v i))))

   (define vector-set! (mon server client (-> vector?/c integer?/c any/c) (lambda (vec i v) (orig-vector-set! vec i v))))

   ;; Assertions
   (define (assert cnd) #t)

   ;; Other preluded functions

   (define (cdddr x)  (cdr (cdr (cdr x))))
   (define __toplevel_set-car! set-car!)
   (define (map f l)
     (assert (procedure? f))
     (assert (list? l))
     (if (null? l)
         '()
         (cons (f (car l)) (map f (cdr l)))))
   (define (cdar x)  (cdr (car x)))
   (define (cadadr x)  (car (cdr (car (cdr x)))))
   (define (cdadar x)  (cdr (car (cdr (car x)))))
   (define (call-with-output-file filename proc)
     (assert (string? filename))
     (assert (procedure? proc))
     (let* ((output-port (open-output-file filename))
            (res (proc output-port)))
       (close-output-port output-port)
       res))
   ;(define (vector->list v)
   ;  
   ;  (assert (vector? v))

   ;  (let construct ((i (- (vector-length v) 1)) (lst '()))
   ;    
   ;    (if (< i 0)
   ;        lst
   ;        (construct (- i 1)
   ;                   (cons (vector-ref v i) lst)))))
   (define (caddr x)  (car (cdr (cdr x))))
   (define (cdaadr x)  (cdr (car (car (cdr x)))))
   (define (assq k l)
     
     (assert (list? l))
     (if (null? l)
       #f
      (if (eq? (caar l) k)
        (car l)
        (assq k (cdr l)))))
   (define (even? x)  (= 0 (modulo x 2)))
   (define (list->string l)
      (assert (list? l))
      (if (null? l)
        ""
        (string-append (char->string (car l)) (list->string (cdr l)))))
   (define (char<=? c1 c2)  (assert (char? c1)) (assert (char? c2)) (or (char<? c1 c2) (char=? c1 c2)))
   (define (cdddar x)  (cdr (cdr (cdr (car x)))))
   (define (list-tail x k)
     
     (assert (list? l))
     (assert (numer? ))
     (if (zero? k)
       x
       (list-tail (cdr x) (- k 1))))
   (define (halt) '())
   (define (char-alphabetic? c)  (and (char-ci>=? c #\a) (char-ci<=? c #\z)))
   (define (<= x y)  (assert (number? x)) (or (< x y) (= x y) #f))
   (define (char-whitespace? c)  (or (= (char->integer c) 9) (= (char->integer c) 10) (= (char->integer c) 32)))
   (define (cddar x)  (cdr (cdr (car x))))
   (define (positive? x)  (assert (number? x)) (> x 0))
   ;(define (string=? s1 s2)
   ;  
   ;  (assert (string? s1))
   ;  (assert (string? s2)) 
   ;  (and (= (string-length s1)(string-length s2))
   ;       (let loop ((i (- (string-length s1) 1)))
   ;        
   ;        (if (< i 0)
   ;            #t
   ;            (and (char=? (string-ref s1 i) (string-ref s2 i))
   ;                 (loop (- i 1)))))))
   ;(define (string->list string)
   ;  
   ;  (assert (string? string))
   ;  (let ((len (string-length string)))
   ;  (let convert ((n (- len 1))
   ;                (r '()))
   ;    
   ;    (if (< n 0)
   ;        r
   ;        (convert (- n 1)
   ;                 (cons (string-ref string n) r))))))
   (define $pc '())
   (define ref-set set-car!)
   (define (void) #f)
   (define (cddr x)  (cdr (cdr x)))
   (define (truncate x)  (assert (number? x)) (if (< x 0) (ceiling x) (floor x)))
   (define $cmp '())
   (define (equal? a b)
     
     (or (eq? a b)
       (and (null? a) (null? b))
       (and (string? a) (string? b) (string=? a b))
       (and (pair? a) (pair? b) (equal? (car a) (car b)) (equal? (cdr a) (cdr b)))
       (and (vector? a) (vector? b)
         (let ((n (vector-length a)))
           (and (= (vector-length b) n)
             (letrec ((loop (lambda (i)
                              
                              (or (= i n)
                                (and (equal? (vector-ref a i) (vector-ref b i))
                                  (loop (+ i 1)))))))
               (loop 0)))))))
   (define (cdaaar x)  (cdr (car (car (car x)))))
   (define (caaddr x)  (car (car (cdr (cdr x)))))
   (define (eqv? x y)  (eq? x y))
   (define (>= x y)  (assert (number? x)) (or (> x y) (= x y) #f))
   (define (call-with-input-file filename proc)
     (assert (string? filename))
     (assert (procedure? proc))
     (let* ((input-port (open-input-file filename))
            (res (proc input-port)))
       (close-input-port input-port)
       res))
   ;(define (min ag0 . ags)
   ; (let loop ((cur ags)
   ;            (acc ag0))
   ;   (if (null? cur)
   ;       acc
   ;       (let ((elm (car cur))
   ;             (rst (cdr cur)))
   ;         (loop rst (if (< elm acc) elm acc))))))
   (define (ref x)  (cons x '()))
   ;(define (string . chars) (list->string chars))
   (define (char>=? c1 c2)  (assert (char? c1)) (assert (char? c2)) (or (char>? c1 c2) (char=? c1 c2)))
   (define (cdaar x)  (cdr (car (car x))))
   (define (cdaddr x)  (cdr (car (cdr (cdr x)))))
   (define __toplevel_cdr cdr)
   (define (cadar x)  (car (cdr (car x))))
   (define (caadr x)  (car (car (cdr x))))
   (define (char-ci>? c1 c2)  (assert (char? c1)) (assert (char? c2)) (not (char-ci<=? c1 c2)))
   (define __toplevel_set-cdr! set-cdr!)
   (define (caaaar x)  (car (car (car (car x)))))
   (define (negative? x)  (assert (number? x)) (< x 0))
   (define (memv e l)  (memq e l))
   (define (caaar x)  (car (car (car x))))
   (define (debug e) '())
   (define (reverse l)
     (assert (list? l))
     (if (null? l)
         '()
         (append (reverse (cdr l))
                 (list (car l)))))
   (define (caaadr x)  (car (car (car (cdr x)))))
   (define (cddadr x)  (cdr (cdr (car (cdr x)))))
   (define (odd? x)  (assert (number? x)) (= 1 (modulo x 2)))
   (define (caadar x)  (car (car (cdr (car x)))))
   ;(define (max ag0 . ags)
   ; (let loop ((cur ags)
   ;            (acc ag0))
   ;   (if (null? cur)
   ;       acc
   ;       (let ((elm (car cur))
   ;             (rst (cdr cur)))
   ;         (loop rst (if (> elm acc) elm acc))))))
   (define (apply proc args)
     (assert (procedure? proc))
     (assert (list? args))
     (cond
       ((null?                args)   (proc))
       ((null?        (   cdr args))  (proc (car args)))
       ((null?        (  cddr args))  (proc (car args) (cadr args)))
       ((null?        ( cdddr args))  (proc (car args) (cadr args) (caddr args)))
       ((null?        (cddddr args))  (proc (car args) (cadr args) (caddr args) (cadddr args)))
       ((null? (  cdr (cddddr args))) (proc (car args) (cadr args) (caddr args) (cadddr args) (car (cddddr args))))
       ((null? ( cddr (cddddr args))) (proc (car args) (cadr args) (caddr args) (cadddr args) (car (cddddr args)) (cadr (cddddr args))))
       ((null? (cdddr (cddddr args))) (proc (car args) (cadr args) (caddr args) (cadddr args) (car (cddddr args)) (cadr (cddddr args)) (caddr (cddddr args))))
       (else (error "Unsupported call."))))
   (define (member e l)
     
     (assert (list? l))
     (if (null? l)
       #f
       (if (equal? (car l) e)
         l
         (member e (cdr l)))))
   ;(define call-with-current-continuation call/cc)
   (define (cddddr x)  (cdr (cdr (cdr (cdr x)))))
   (define (cadddr x)  (car (cdr (cdr (cdr x)))))
   (define (int-top) (random 42))
   (define (zero? x)  (assert (number? x)) (= x 0))
   (define (string>=? s1 s2)  (or (string>? s1 s2) (string=? s1 s2)))
   (define (cadr x)  (car (cdr x)))
   (define __toplevel_car car)
   (define (list? l)  (or (and (pair? l) (list? (cdr l))) (null? l)))
   (define (cddaar x)  (cdr (cdr (car (car x)))))
   (define (char-numeric? c)  (and (char<=? #\0 c) (char<=? c #\9)))
   (define __toplevel_cons cons)
   ;(define (string-fill! s c)
   ;  (let loop ((i (- (string-length s) 1)))
   ;    (if (< i 0)
   ;        #t
   ;        (begin (string-set! s i c)
   ;               (loop (- i 1))))))
   (define (assv k l)
     
     (assert (list? l))
     (if (null? l)
       #f
      (if (eqv? (caar l) k)
        (car l)
        (assq k (cdr l)))))
   (define (not x)  (if x #f #t))
   (define (__toplevel_append l1 l2) (append l1 l2))
   (define (memq e l)
     
     (assert (list? l))
     (if (null? l)
       #f
       (if (eq? (car l) e)
         l
         (memq e (cdr l)))))
   (define (cadaar x)  (car (cdr (car (car x)))))
   (define (length l)
     
     (assert (list? l))
     (letrec ((rec (lambda (l)
       (if (null? l)
          0
          (+ 1 (rec (cdr l)))))))
     (rec l)))
   (define (char-ci<=? c1 c2)  (assert (char? c1)) (assert (char? c2)) (or (char-ci<? c1 c2) (char-ci=? c1 c2)))
   (define (string>? s1 s2)  (not (string<=? s1 s2)))
   ;(define (string-ci=? s1 s2)
   ;  
   ;  (assert (string? s1))
   ;  (assert (string? s2))
   ;  (and (= (string-length s1)(string-length s2))
   ;       (let loop ((i (- (string-length s1) 1)))
   ;        
   ;        (if (< i 0)
   ;            #t
   ;            (and (char-ci=? (string-ref s1 i) (string-ref s2 i))
   ;                 (loop (- i 1)))))))
   ;(define (list->vector l)
   ;  
   ;  (assert (list? l))
   ;  (let ((v (make-vector (length l))))
   ;    (let fill ((lst l) (i 0))
   ;      (if (null? lst)
   ;          v
   ;          (begin (vector-set! v i (car lst))
   ;                 (fill (cdr lst) (+ i 1)))))))
   (define (cdadr x)  (cdr (car (cdr x))))
   (define (assoc k l)
     
     (assert (list? l))
     (if (null? l)
       #f
      (if (equal? (caar l) k)
        (car l)
        (assoc k (cdr l)))))
   (define (caar x)  (car (car x)))
   (define (char>? c1 c2)  (assert (char? c1)) (assert (char? c2)) (not (char<=? c1 c2)))
   (define (string<=? s1 s2)  (or (string<? s1 s2) (string=? s1 s2)))
   (define (for-each f l)
     (assert (procedure? f))
     (assert (list? l))
     (if (null? l)
         #t
         (if (pair? l)
             (begin (f (car l)) (for-each f (cdr l)))
             '())))
   (define (abs x)  (assert (number? x)) (if (< x 0) (- 0 x) x))
   (define (char-ci>=? c1 c2)  (assert (char? c1)) (assert (char? c2)) (or (char-ci>? c1 c2) (char-ci=? c1 c2)))
   (define (caddar x)  (car (cdr (cdr (car x)))))
   (define (newline)  #f)
   (define (lcm m n)  (/ (abs (* m n)) (gcd m n)))
   (define deref car)
   (define (> x y)  (assert (number? x)) (not (<= x y)))
   ; (define (list . args) args)
   (define (list-ref l index)
     
     (assert (list? l))
     (assert (number? index))
     (assert (< index (length l)))
     (if (= index 0)
       (car l)
       (list-ref (cdr l) (- index 1))))
   (define (gcd a b)  (if (= b 0) a (gcd b (modulo a b)))))
   ;(define (append . lsts)
   ;  (define (app lsts)
   ;    (cond ((null? lsts) '())
   ;          ((null? (cdr lsts)) (car lsts)) ; Structure sharing.
   ;          (else (let loop ((first (car lsts))
   ;                           (rest (app (cdr lsts))))
   ;                  (if (null? first)
   ;                      rest
   ;                      (cons (car first)
   ;                            (loop (cdr first)
   ;                                  rest)))))))
   ;  (app lsts)))

