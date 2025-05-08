 (define $pc '())
 (define $cmp '())
 (define (debug e) '())
 (define (halt) '())

 (define (abs x)  (assert (number? x)) (if (< x 0) (- 0 x) x))

 (define (append . lsts)
           (define (app lsts)
             (cond ((null? lsts) '())
                   ((null? (cdr lsts)) (car lsts))  Structure sharing.
                   (else (let loop ((first (car lsts))
                                    (rest (app (cdr lsts))))
                           (if (null? first)
                               rest
                               (cons (car first)
                                     (loop (cdr first)
                                           rest)))))))
           (app lsts))

 (define (assoc k l)
           (assert (list? l))
           (if (null? l)
             #f
            (if (equal? (caar l) k)
              (car l)
              (assoc k (cdr l)))))

 (define (assq k l)
           (assert (list? l))
           (if (null? l)
             #f
            (if (eq? (caar l) k)
              (car l)
              (assq k (cdr l)))))             

 (define (assv k l)
           (assert (list? l))
           (if (null? l)
             #f
            (if (eqv? (caar l) k)
              (car l)
              (assq k (cdr l)))))

; (define call-with-current-continuation call/cc)

 (define (call-with-input-file filename proc)
           (assert (string? filename))
           (assert (procedure? proc))
           (let* ((input-port (open-input-file filename))
                  (res (proc input-port)))
             (close-input-port input-port)
             res))

 (define (call-with-output-file filename proc)
           (assert (string? filename))
           (assert (procedure? proc))
           (let* ((output-port (open-output-file filename))
                  (res (proc output-port)))
             (close-output-port output-port)
             res))      

 (define (int-top) (random 42))

 (define (caar x)   (car (car x)))
 (define (cadr x)   (car (cdr x)))
 (define (cdar x)   (cdr (car x)))
 (define (cddr x)   (cdr (cdr x)))
 (define (caaar x)  (car (car (car x))))
 (define (caadr x)  (car (car (cdr x))))
 (define (cadar x)  (car (cdr (car x))))
 (define (caddr x)  (car (cdr (cdr x))))
 (define (cdaar x)  (cdr (car (car x))))
 (define (cdadr x)  (cdr (car (cdr x))))
 (define (cddar x)  (cdr (cdr (car x))))
 (define (cdddr x)  (cdr (cdr (cdr x))))
 (define (caaaar x) (car (car (car (car x)))))
 (define (caaadr x) (car (car (car (cdr x)))))
 (define (caadar x) (car (car (cdr (car x)))))
 (define (caaddr x) (car (car (cdr (cdr x)))))
 (define (cadaar x) (car (cdr (car (car x)))))
 (define (cadadr x) (car (cdr (car (cdr x)))))
 (define (caddar x) (car (cdr (cdr (car x)))))
 (define (cadddr x) (car (cdr (cdr (cdr x)))))
 (define (cdaaar x) (cdr (car (car (car x)))))
 (define (cdaadr x) (cdr (car (car (cdr x)))))
 (define (cdadar x) (cdr (car (cdr (car x)))))
 (define (cdaddr x) (cdr (car (cdr (cdr x)))))
 (define (cddaar x) (cdr (cdr (car (car x)))))
 (define (cddadr x) (cdr (cdr (car (cdr x)))))
 (define (cdddar x) (cdr (cdr (cdr (car x)))))
 (define (cddddr x) (cdr (cdr (cdr (cdr x)))))


 (define (char>? c1 c2)  (assert (char? c1)) (assert (char? c2)) (not (char<=? c1 c2)))
 (define (char<=? c1 c2)  (assert (char? c1)) (assert (char? c2)) (or (char<? c1 c2) (char=? c1 c2)))
 (define (char>=? c1 c2)  (assert (char? c1)) (assert (char? c2)) (or (char>? c1 c2) (char=? c1 c2)))
 (define (char-ci>? c1 c2)  (assert (char? c1)) (assert (char? c2)) (not (char-ci<=? c1 c2)))
 (define (char-ci<=? c1 c2)  (assert (char? c1)) (assert (char? c2)) (or (char-ci<? c1 c2) (char-ci=? c1 c2)))
 (define (char-ci>=? c1 c2)  (assert (char? c1)) (assert (char? c2)) (or (char-ci>? c1 c2) (char-ci=? c1 c2)))
 ;(define (char-alphabetic? c)  (and (char-ci>=? c #\\a) (char-ci<=? c #\\z)))
 ;(define (char-numeric? c)  (and (char<=? #\\0 c) (char<=? c #\\9)))
 (define (char-whitespace? c)  (or (= (char->integer c) 9) (= (char->integer c) 10) (= (char->integer c) 32)))
    
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

 (define (eqv? x y) (eq? x y))
 (define (even? x) (= 0 (modulo x 2)))

 (define (for-each f l)
           (assert (procedure? f))
           (assert (list? l))
           (if (null? l)
               #t
               (if (pair? l)
                   (begin (f (car l)) (for-each f (cdr l))))))

 (define (gcd a b) (if (= b 0) a (gcd b (modulo a b))))
 (define (lcm m n) (/ (abs (* m n)) (gcd m n)))

 (define (length l)
           (assert (list? l))
           (letrec ((rec (lambda (l)
             (if (null? l)
                0
                (+ 1 (rec (cdr l)))))))
           (rec l)))

 (define (list . args) args)     
 (define (list-ref l index)
           (assert (list? l))
           (assert (number? index))
           (assert (< index (length l)))
           (if (= index 0)
             (car l)
             (list-ref (cdr l) (- index 1))))

 (define (list->string l)
            (assert (list? l))
            (if (null? l)
              ""
              (string-append (char->string (car l)) (list->string (cdr l)))))

 (define (list->vector l)
           (assert (list? l))
           (let ((v (make-vector (length l))))
             (let fill ((lst l) (i 0))
               (if (null? lst)
                   v
                   (begin (vector-set! v i (car lst))
                          (fill (cdr lst) (+ i 1)))))))

 (define (list-tail x k)
           (assert (list? l))
           (assert (numer? ))
           (if (zero? k)
             x
             (list-tail (cdr x) (- k 1))))

 (define (list? l) (or (and (pair? l) (list? (cdr l))) (null? l)))

 (define (map f l)
           (assert (procedure? f))
           (assert (list? l))
           (if (null? l)
               '()
               (cons (f (car l)) (map f (cdr l)))))

 (define (max ag0 . ags)
          (let loop ((cur ags)
                     (acc ag0))
            (if (null? cur)
                acc
                (let ((elm (car cur))
                      (rst (cdr cur)))
                  (loop rst (if (> elm acc) elm acc))))))

 (define (member e l)
           (assert (list? l))
           (if (null? l)
             #f
             (if (equal? (car l) e)
               l
               (member e (cdr l)))))

 (define (memq e l)
                   (assert (list? l))
                   (if (null? l)
                     #f
                     (if (eq? (car l) e)
                       l
                       (memq e (cdr l)))))

 (define (memv e l) (memq e l))

 (define (min ag0 . ags)
          (let loop ((cur ags)
                     (acc ag0))
            (if (null? cur)
                acc
                (let ((elm (car cur))
                      (rst (cdr cur)))
                  (loop rst (if (< elm acc) elm acc))))))

 (define (negative? x) (assert (number? x)) (< x 0))
 (define (newline) #f)
 (define (not x) (if x #f #t))
 (define (odd? x) (assert (number? x)) (= 1 (modulo x 2)))
 (define (positive? x) (assert (number? x)) (> x 0))

 (define (reverse l)
           (assert (list? l))
           (if (null? l)
               '()
               (append (reverse (cdr l))
                       (list (car l)))))

(define (size l)
    (if (null? l)
        0)
        (+ 1 (size (cdr l))))
     
 (define (string<=? s1 s2) (or (string<? s1 s2) (string=? s1 s2)))
 (define (string>? s1 s2) (not (string<=? s1 s2)))
 (define (string>=? s1 s2) (or (string>? s1 s2) (string=? s1 s2)))
 (define (string . chars) (list->string chars))

 (define (string-fill! s c)
           (let loop ((i (- (string-length s) 1)))
             (if (< i 0)
                 #t
                 (begin (string-set! s i c)
                        (loop (- i 1))))))
    
 (define (string->list string)
           (assert (string? string))
           (let ((len (string-length string)))
                           (let convert ((n (- len 1))
                                         (r '()))
                             (if (< n 0)
                                 r
                                 (convert (- n 1)
                                          (cons (string-ref string n) r))))))

 (define (string=? s1 s2)
                       (assert (string? s1))
                       (assert (string? s2)) 
                       (and (= (string-length s1)(string-length s2))
                            (let loop ((i (- (string-length s1) 1)))
                             (if (< i 0)
                                 #t
                                 (and (char=? (string-ref s1 i) (string-ref s2 i))
                                      (loop (- i 1)))))))

 (define (string-ci=? s1 s2)
                          (assert (string? s1))
                          (assert (string? s2))
                          (and (= (string-length s1)(string-length s2))
                               (let loop ((i (- (string-length s1) 1)))
                                (if (< i 0)
                                    #t
                                    (and (char-ci=? (string-ref s1 i) (string-ref s2 i))
                                         (loop (- i 1)))))))

 (define (truncate x) (assert (number? x)) (if (< x 0) (ceiling x) (floor x)))

 (define (vector->list v)
           (assert (vector? v))
           (let construct ((i (- (vector-length v) 1)) (lst '()))
             (if (< i 0)
                 lst
                 (construct (- i 1)
                            (cons (vector-ref v i) lst)))))
   
 (define (zero? x) (assert (number? x)) (= x 0))   

 (define (foldr f base lst) (foldr-aux f base lst))
 (define (foldr-aux f base lst)
               (if (null? lst)
                   base
                   (f (car lst) (foldr-aux f base (cdr lst)))))

 (define (foldl f base lst) (foldl-aux f base lst))
 (define (foldl-aux f base lst)
               (if (null? lst)
                   base
                   (foldl-aux f (f base (car lst)) (cdr lst))))                

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

 (define (ref x) (cons x '()))           
 (define deref car)
 (define ref-set set-car!)
 (define (void) #f)
 (define __toplevel_cons cons)
 (define __toplevel_car car)
 (define __toplevel_cdr cdr)
 (define __toplevel_set-car! set-car!)
 (define __toplevel_set-cdr! set-cdr!)
 (define (__toplevel_append l1 l2) (append l1 l2))
