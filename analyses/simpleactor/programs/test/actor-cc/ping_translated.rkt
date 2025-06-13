#lang simpleactor
(letrec ((any? (lambda (v) #t))
         (meta (lambda (v) v))
         (member
          (lambda (v lst)
            (begin
              (match
               lst
               (((list) #f)
                ((pair v1 vs) (if (eq? v v1) #t (member v vs))))))))
         (unconstrained/c #f)
         (actor? (lambda (k j) (lambda (v) v)))
         (nonzero? (lambda (v) (not (= v 0)))))
  (begin
    (letrec ((assert (lambda (cnd) (if cnd '() (error "assertion failed"))))
             (>=
              (lambda (x y)
                (assert (number? x))
                (letrec ((val7245 (> x y)))
                  (if val7245
                    val7245
                    (letrec ((val7246 (= x y))) (if val7246 val7246 #f))))))
             (<=
              (lambda (x y)
                (assert (number? x))
                (letrec ((val7247 (< x y)))
                  (if val7247
                    val7247
                    (letrec ((val7248 (= x y))) (if val7248 val7248 #f))))))
             (> (lambda (x y) (assert (number? x)) (not (<= x y))))
             (orig-+ +)
             (orig-- -)
             (orig-* *)
             (orig-/ /)
             (orig-> >)
             (orig-< <)
             (orig-= =)
             (orig->= >=)
             (orig-<= <=)
             (orig-car car)
             (orig-cdr cdr)
             (orig-cons cons)
             (orig-vector-ref vector-ref)
             (orig-vector-set! vector-set!))
      '()
      (letrec ((empty '())
               (listof
                (lambda (contract)
                  (lambda (k j lst) (map (lambda (v) (contract k j v)) lst))))
               (real?/c
                (lambda (g7264 g7265 g7266)
                  (if (real? g7266) g7266 (blame g7264 'real?))))
               (boolean?/c
                (lambda (g7267 g7268 g7269)
                  (if (boolean? g7269) g7269 (blame g7267 'boolean?))))
               (number?/c
                (lambda (g7270 g7271 g7272)
                  (if (number? g7272) g7272 (blame g7270 'number?))))
               (any/c
                (lambda (g7273 g7274 g7275)
                  (if ((lambda (v) #t) g7275)
                    g7275
                    (blame g7273 '(lambda (v) #t)))))
               (any?/c
                (lambda (g7276 g7277 g7278)
                  (if ((lambda (v) #t) g7278)
                    g7278
                    (blame g7276 '(lambda (v) #t)))))
               (cons?/c
                (lambda (g7279 g7280 g7281)
                  (if (pair? g7281) g7281 (blame g7279 'pair?))))
               (cons/c
                (lambda (k1 k2)
                  (lambda (k j v) (cons (k1 k j (car v)) (k2 k j (cdr v))))))
               (pair?/c
                (lambda (g7282 g7283 g7284)
                  (if (pair? g7284) g7284 (blame g7282 'pair?))))
               (integer?/c
                (lambda (g7285 g7286 g7287)
                  (if (integer? g7287) g7287 (blame g7285 'integer?))))
               (symbol?/c
                (lambda (g7288 g7289 g7290)
                  (if (symbol? g7290) g7290 (blame g7288 'symbol?))))
               (string?/c
                (lambda (g7291 g7292 g7293)
                  (if (string? g7293) g7293 (blame g7291 'string?))))
               (and/c
                (lambda (c1 c2)
                  (lambda (k j v) (if (c1 k j v) (c2 k j v) #f))))
               (or/c
                (lambda (c1 c2)
                  (lambda (k j v)
                    (letrec ((val7249 (c1 k j v)))
                      (if val7249 val7249 (c2 k j v))))))
               (null?/c
                (lambda (g7294 g7295 g7296)
                  (if (null? g7296) g7296 (blame g7294 'null?))))
               (list-of
                (lambda (contract)
                  (lambda (k j v)
                    (if (null? v)
                      '()
                      (orig-cons
                       (contract k j (car v))
                       ((list-of contract) k j (cdr v)))))))
               (any? (lambda (v) #t))
               (nonzero? (lambda (v) (not (= v 0))))
               (nonzero?/c
                (lambda (g7297 g7298 g7299)
                  (if ((lambda (v) (not (= v 0))) g7299)
                    g7299
                    (blame g7297 '(lambda (v) (not (= v 0)))))))
               (>=/c
                (lambda (n)
                  (lambda (g7300 g7301 g7302)
                    (if ((lambda (v) (orig->= v n)) g7302)
                      g7302
                      (blame g7300 '(lambda (v) (orig->= v n)))))))
               (>/c
                (lambda (n)
                  (lambda (g7303 g7304 g7305)
                    (if ((lambda (v) (orig-> v n)) g7305)
                      g7305
                      (blame g7303 '(lambda (v) (orig-> v n)))))))
               (</c
                (lambda (n)
                  (lambda (g7306 g7307 g7308)
                    (if ((lambda (v) (orig-< v n)) g7308)
                      g7308
                      (blame g7306 '(lambda (v) (orig-< v n)))))))
               (<=/c
                (lambda (n)
                  (lambda (g7309 g7310 g7311)
                    (if ((lambda (v) (orig-<= v n)) g7311)
                      g7311
                      (blame g7309 '(lambda (v) (orig-<= v n)))))))
               (=/c
                (lambda (n)
                  (lambda (g7312 g7313 g7314)
                    (if ((lambda (v) (orig-= v n)) g7314)
                      g7314
                      (blame g7312 '(lambda (v) (orig-= v n)))))))
               (meta (lambda (v) v))
               (+
                (letrec ((xj7315 'server) (xk7316 'client))
                  ((lambda (j7319 k7320 f7321)
                     (lambda (g7317 g7318)
                       (number?/c
                        j7319
                        k7320
                        (f7321
                         (number?/c j7319 k7320 g7317)
                         (number?/c j7319 k7320 g7318)))))
                   xj7315
                   xk7316
                   (lambda (a b) (orig-+ a b)))))
               (-
                (letrec ((xj7322 'server) (xk7323 'client))
                  ((lambda (j7326 k7327 f7328)
                     (lambda (g7324 g7325)
                       (number?/c
                        j7326
                        k7327
                        (f7328
                         (number?/c j7326 k7327 g7324)
                         (number?/c j7326 k7327 g7325)))))
                   xj7322
                   xk7323
                   (lambda (a b) (orig-- a b)))))
               (*
                (letrec ((xj7329 'server) (xk7330 'client))
                  ((lambda (j7333 k7334 f7335)
                     (lambda (g7331 g7332)
                       (number?/c
                        j7333
                        k7334
                        (f7335
                         (number?/c j7333 k7334 g7331)
                         (number?/c j7333 k7334 g7332)))))
                   xj7329
                   xk7330
                   (lambda (a b) (orig-* a b)))))
               (<
                (letrec ((xj7336 'server) (xk7337 'client))
                  ((lambda (j7340 k7341 f7342)
                     (lambda (g7338 g7339)
                       (boolean?/c
                        j7340
                        k7341
                        (f7342
                         (number?/c j7340 k7341 g7338)
                         (number?/c j7340 k7341 g7339)))))
                   xj7336
                   xk7337
                   (lambda (a b) (orig-< a b)))))
               (>
                (letrec ((xj7343 'server) (xk7344 'client))
                  ((lambda (j7347 k7348 f7349)
                     (lambda (g7345 g7346)
                       (boolean?/c
                        j7347
                        k7348
                        (f7349
                         (number?/c j7347 k7348 g7345)
                         (number?/c j7347 k7348 g7346)))))
                   xj7343
                   xk7344
                   (lambda (a b) (orig-> a b)))))
               (<=
                (letrec ((xj7350 'server) (xk7351 'client))
                  ((lambda (j7354 k7355 f7356)
                     (lambda (g7352 g7353)
                       (boolean?/c
                        j7354
                        k7355
                        (f7356
                         (number?/c j7354 k7355 g7352)
                         (number?/c j7354 k7355 g7353)))))
                   xj7350
                   xk7351
                   (lambda (a b) (orig-<= a b)))))
               (>=
                (letrec ((xj7357 'server) (xk7358 'client))
                  ((lambda (j7361 k7362 f7363)
                     (lambda (g7359 g7360)
                       (boolean?/c
                        j7361
                        k7362
                        (f7363
                         (number?/c j7361 k7362 g7359)
                         (number?/c j7361 k7362 g7360)))))
                   xj7357
                   xk7358
                   (lambda (a b) (orig->= a b)))))
               (add1 (lambda (x) (+ x 1)))
               (/
                (letrec ((xj7364 'server) (xk7365 'client))
                  ((lambda (j7368 k7369 f7370)
                     (lambda (g7366 g7367)
                       (number?/c
                        j7368
                        k7369
                        (f7370
                         (number?/c j7368 k7369 g7366)
                         (number?/c j7368 k7369 g7367)))))
                   xj7364
                   xk7365
                   (lambda (a b) (orig-/ a b)))))
               (car
                (letrec ((xj7371 'server) (xk7372 'client))
                  ((lambda (j7374 k7375 f7376)
                     (lambda (g7373)
                       (any/c
                        j7374
                        k7375
                        (f7376 (pair?/c j7374 k7375 g7373)))))
                   xj7371
                   xk7372
                   (lambda (p) (orig-car p)))))
               (cdr
                (letrec ((xj7377 'server) (xk7378 'client))
                  ((lambda (j7380 k7381 f7382)
                     (lambda (g7379)
                       (any/c
                        j7380
                        k7381
                        (f7382 (pair?/c j7380 k7381 g7379)))))
                   xj7377
                   xk7378
                   (lambda (p) (orig-cdr p)))))
               (cons
                (letrec ((xj7383 'server) (xk7384 'client))
                  ((lambda (j7387 k7388 f7389)
                     (lambda (g7385 g7386)
                       (pair?/c
                        j7387
                        k7388
                        (f7389
                         (any/c j7387 k7388 g7385)
                         (any/c j7387 k7388 g7386)))))
                   xj7383
                   xk7384
                   (lambda (a b) (orig-cons a b)))))
               (vector?/c
                (lambda (g7390 g7391 g7392)
                  (if (vector? g7392) g7392 (blame g7390 'vector?))))
               (vector-ref
                (letrec ((xj7393 'server) (xk7394 'client))
                  ((lambda (j7396 k7397 f7398)
                     (lambda (g7395)
                       (integer?/c
                        j7396
                        k7397
                        (f7398 (vector?/c j7396 k7397 g7395)))))
                   xj7393
                   xk7394
                   (lambda (v i) (orig-vector-ref v i)))))
               (vector-set!
                (letrec ((xj7399 'server) (xk7400 'client))
                  ((lambda (j7403 k7404 f7405)
                     (lambda (g7401 g7402)
                       (any/c
                        j7403
                        k7404
                        (f7405
                         (vector?/c j7403 k7404 g7401)
                         (integer?/c j7403 k7404 g7402)))))
                   xj7399
                   xk7400
                   (lambda (vec i v) (orig-vector-set! vec i v)))))
               (cdddr (lambda (x) (cdr (cdr (cdr x)))))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (assert (procedure? f))
                  (assert (list? l))
                  (if (null? l) '() (cons (f (car l)) (map f (cdr l))))))
               (cdar (lambda (x) (cdr (car x))))
               (cadadr (lambda (x) (car (cdr (car (cdr x))))))
               (cdadar (lambda (x) (cdr (car (cdr (car x))))))
               (call-with-output-file
                (lambda (filename proc)
                  (assert (string? filename))
                  (assert (procedure? proc))
                  (letrec ((output-port (open-output-file filename))
                           (res (proc output-port)))
                    (close-output-port output-port)
                    res)))
               (caddr (lambda (x) (car (cdr (cdr x)))))
               (cdaadr (lambda (x) (cdr (car (car (cdr x))))))
               (assq
                (lambda (k l)
                  (assert (list? l))
                  (if (null? l)
                    #f
                    (if (eq? (caar l) k) (car l) (assq k (cdr l))))))
               (even? (lambda (x) (= 0 (modulo x 2))))
               (char<=?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (letrec ((val7250 (char<? c1 c2)))
                    (if val7250 val7250 (char=? c1 c2)))))
               (cdddar (lambda (x) (cdr (cdr (cdr (car x))))))
               (list-tail
                (lambda (x k)
                  (assert (list? x))
                  (assert (number? k))
                  (if (zero? k) x (list-tail (cdr x) (- k 1)))))
               (halt (lambda () '()))
               (char-alphabetic?
                (lambda (c) (if (char-ci>=? c #\a) (char-ci<=? c #\z) #f)))
               (char-whitespace?
                (lambda (c)
                  (letrec ((val7251 (= (char->integer c) 9)))
                    (if val7251
                      val7251
                      (letrec ((val7252 (= (char->integer c) 10)))
                        (if val7252 val7252 (= (char->integer c) 32)))))))
               (cddar (lambda (x) (cdr (cdr (car x)))))
               (positive? (lambda (x) (assert (number? x)) (> x 0)))
               (string=? (lambda (s1 s2) (bool-top)))
               ($pc '())
               (ref-set set-car!)
               (void (lambda () #f))
               (cddr (lambda (x) (cdr (cdr x))))
               (truncate
                (lambda (x)
                  (assert (number? x))
                  (if (< x 0) (ceiling x) (floor x))))
               ($cmp '())
               (bool-top (lambda () (if (> (random) 0.5) #t #f)))
               (equal?
                (lambda (a b)
                  (letrec ((val7253 (eq? a b)))
                    (if val7253
                      val7253
                      (letrec ((val7254 (if (null? a) (null? b) #f)))
                        (if val7254
                          val7254
                          (letrec ((val7255
                                    (if (string? a)
                                      (if (string? b) (string=? a b) #f)
                                      #f)))
                            (if val7255
                              val7255
                              (letrec ((val7256
                                        (if (pair? a)
                                          (if (pair? b)
                                            (if (equal? (car a) (car b))
                                              (equal? (cdr a) (cdr b))
                                              #f)
                                            #f)
                                          #f)))
                                (if val7256
                                  val7256
                                  (if (vector? a)
                                    (if (vector? b)
                                      (letrec ((n (vector-length a)))
                                        (if (= (vector-length b) n)
                                          (letrec ((loop
                                                    (lambda (i)
                                                      (letrec ((val7257
                                                                (= i n)))
                                                        (if val7257
                                                          val7257
                                                          (if (equal?
                                                               (vector-ref a i)
                                                               (vector-ref
                                                                b
                                                                i))
                                                            (loop (+ i 1))
                                                            #f))))))
                                            (loop 0))
                                          #f))
                                      #f)
                                    #f)))))))))))
               (cdaaar (lambda (x) (cdr (car (car (car x))))))
               (caaddr (lambda (x) (car (car (cdr (cdr x))))))
               (eqv? (lambda (x y) (eq? x y)))
               (call-with-input-file
                (lambda (filename proc)
                  (assert (string? filename))
                  (assert (procedure? proc))
                  (letrec ((input-port (open-input-file filename))
                           (res (proc input-port)))
                    (close-input-port input-port)
                    res)))
               (ref (lambda (x) (cons x '())))
               (char>=?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (letrec ((val7258 (char>? c1 c2)))
                    (if val7258 val7258 (char=? c1 c2)))))
               (cdaar (lambda (x) (cdr (car (car x)))))
               (cdaddr (lambda (x) (cdr (car (cdr (cdr x))))))
               (__toplevel_cdr cdr)
               (cadar (lambda (x) (car (cdr (car x)))))
               (caadr (lambda (x) (car (car (cdr x)))))
               (char-ci>?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (not (char-ci<=? c1 c2))))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar (lambda (x) (car (car (car (car x))))))
               (negative? (lambda (x) (assert (number? x)) (< x 0)))
               (memv (lambda (e l) (memq e l)))
               (caaar (lambda (x) (car (car (car x)))))
               (debug (lambda (e) '()))
               (reverse
                (lambda (l)
                  (assert (list? l))
                  (if (null? l)
                    '()
                    (append (reverse (cdr l)) (list (car l))))))
               (caaadr (lambda (x) (car (car (car (cdr x))))))
               (cddadr (lambda (x) (cdr (cdr (car (cdr x))))))
               (odd? (lambda (x) (assert (number? x)) (= 1 (modulo x 2))))
               (caadar (lambda (x) (car (car (cdr (car x))))))
               (apply
                (lambda (proc args)
                  (assert (procedure? proc))
                  (assert (list? args))
                  (if (null? args)
                    (begin (proc))
                    (if (null? (cdr args))
                      (begin (proc (car args)))
                      (if (null? (cddr args))
                        (begin (proc (car args) (cadr args)))
                        (if (null? (cdddr args))
                          (begin (proc (car args) (cadr args) (caddr args)))
                          (if (null? (cddddr args))
                            (begin
                              (proc
                               (car args)
                               (cadr args)
                               (caddr args)
                               (cadddr args)))
                            (if (null? (cdr (cddddr args)))
                              (begin
                                (proc
                                 (car args)
                                 (cadr args)
                                 (caddr args)
                                 (cadddr args)
                                 (car (cddddr args))))
                              (if (null? (cddr (cddddr args)))
                                (begin
                                  (proc
                                   (car args)
                                   (cadr args)
                                   (caddr args)
                                   (cadddr args)
                                   (car (cddddr args))
                                   (cadr (cddddr args))))
                                (if (null? (cdddr (cddddr args)))
                                  (begin
                                    (proc
                                     (car args)
                                     (cadr args)
                                     (caddr args)
                                     (cadddr args)
                                     (car (cddddr args))
                                     (cadr (cddddr args))
                                     (caddr (cddddr args))))
                                  (begin (error "Unsupported call."))))))))))))
               (member
                (lambda (e l)
                  (assert (list? l))
                  (if (null? l)
                    #f
                    (if (equal? (car l) e) l (member e (cdr l))))))
               (cddddr (lambda (x) (cdr (cdr (cdr (cdr x))))))
               (cadddr (lambda (x) (car (cdr (cdr (cdr x))))))
               (int-top (lambda () (random 42)))
               (zero? (lambda (x) (assert (number? x)) (= x 0)))
               (string>=?
                (lambda (s1 s2)
                  (letrec ((val7259 (string>? s1 s2)))
                    (if val7259 val7259 (string=? s1 s2)))))
               (cadr (lambda (x) (car (cdr x))))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec ((val7260 (if (pair? l) (list? (cdr l)) #f)))
                    (if val7260 val7260 (null? l)))))
               (cddaar (lambda (x) (cdr (cdr (car (car x))))))
               (char-numeric?
                (lambda (c) (if (char<=? #\0 c) (char<=? c #\9) #f)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (assert (list? l))
                  (if (null? l)
                    #f
                    (if (eqv? (caar l) k) (car l) (assq k (cdr l))))))
               (not (lambda (x) (if x #f #t)))
               (__toplevel_append (lambda (l1 l2) (append l1 l2)))
               (memq
                (lambda (e l)
                  (assert (list? l))
                  (if (null? l) #f (if (eq? (car l) e) l (memq e (cdr l))))))
               (cadaar (lambda (x) (car (cdr (car (car x))))))
               (length
                (lambda (l)
                  (assert (list? l))
                  (letrec ((rec
                            (lambda (l) (if (null? l) 0 (+ 1 (rec (cdr l)))))))
                    (rec l))))
               (char-ci<=?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (letrec ((val7261 (char-ci<? c1 c2)))
                    (if val7261 val7261 (char-ci=? c1 c2)))))
               (string>? (lambda (s1 s2) (not (string<=? s1 s2))))
               (cdadr (lambda (x) (cdr (car (cdr x)))))
               (assoc
                (lambda (k l)
                  (assert (list? l))
                  (if (null? l)
                    #f
                    (if (equal? (caar l) k) (car l) (assoc k (cdr l))))))
               (caar (lambda (x) (car (car x))))
               (char>?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (not (char<=? c1 c2))))
               (string<=?
                (lambda (s1 s2)
                  (letrec ((val7262 (string<? s1 s2)))
                    (if val7262 val7262 (string=? s1 s2)))))
               (for-each
                (lambda (f l)
                  (assert (procedure? f))
                  (assert (list? l))
                  (if (null? l)
                    #t
                    (if (pair? l)
                      (begin (f (car l)) (for-each f (cdr l)))
                      '()))))
               (abs (lambda (x) (assert (number? x)) (if (< x 0) (- 0 x) x)))
               (char-ci>=?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (letrec ((val7263 (char-ci>? c1 c2)))
                    (if val7263 val7263 (char-ci=? c1 c2)))))
               (caddar (lambda (x) (car (cdr (cdr (car x))))))
               (newline (lambda () #f))
               (lcm (lambda (m n) (/ (abs (* m n)) (gcd m n))))
               (deref car)
               (list-ref
                (lambda (l index)
                  (assert (list? l))
                  (assert (number? index))
                  (assert (< index (length l)))
                  (if (= index 0) (car l) (list-ref (cdr l) (- index 1)))))
               (gcd (lambda (a b) (if (= b 0) a (gcd b (modulo a b))))))
        (letrec ((ping-behavior
                  (lambda ()
                    (letrec ((real-self (self^)))
                      (parametrize
                       ((self (lambda (m) ((dyn send^) real-self m))))
                       (receive
                        (((cons 'ping sender)
                          (begin
                            (print sender)
                            (sender (cons 'pong (dyn self)))
                            (ping-behavior)))
                         ((cons
                           'enhanced
                           (cons k7406 (cons j7410 (cons 'ping sender))))
                          (letrec ((kc7407 (k7406 j7410))
                                   (old-send7411 (dyn send^)))
                            (parametrize
                             ((send^
                               (lambda (rcv7408 msg7409)
                                 (old-send7411
                                  kc7407
                                  (cons rcv7408 msg7409)))))
                             (begin
                               (print sender)
                               (sender (cons 'pong (dyn self)))
                               (old-send7411 kc7407 'finish)))
                            (ping-behavior)))))))))
                 (pong-behavior
                  (lambda ()
                    (letrec ((real-self (self^)))
                      (parametrize
                       ((self (lambda (m) ((dyn send^) real-self m))))
                       (receive
                        (((cons 'pong sender)
                          (begin
                            (print 'pong)
                            (sender (cons 'ping (dyn self)))
                            (pong-behavior)))
                         ((cons
                           'enhanced
                           (cons k7413 (cons j7417 (cons 'pong sender))))
                          (letrec ((kc7414 (k7413 j7417))
                                   (old-send7418 (dyn send^)))
                            (parametrize
                             ((send^
                               (lambda (rcv7415 msg7416)
                                 (old-send7418
                                  kc7414
                                  (cons rcv7415 msg7416)))))
                             (begin
                               (print 'pong)
                               (sender (cons 'ping (dyn self)))
                               (old-send7418 kc7414 'finish)))
                            (pong-behavior)))))))))
                 (ping/c
                  (lambda (k7422 j7423 a7421)
                    (lambda (v7424)
                      (letrec ((result7430
                                ((lambda (k7426 j7427 v7428)
                                   (match
                                    v7428
                                    (((cons 'ping x7429)
                                      (cons
                                       'enhanced
                                       (cons
                                        (ping/cm)
                                        (cons
                                         j7427
                                         (cons
                                          'ping
                                          ((actor? k7426 j7427) x7429)))))))))
                                 k7422
                                 j7423
                                 v7424)))
                        (if result7430 (a7421 result7430) (blame k7422))))))
                 (ping/cm
                  (lambda ()
                    (lambda (j7433)
                      (letrec ((r
                                (lambda (trace7437)
                                  (receive
                                   (('finish
                                     (begin
                                       (if (member 'pong trace7437)
                                         #t
                                         (blame j7433))))
                                    ((pair rcv7436 message7435)
                                     (match
                                      message7435
                                      (((cons 'pong x7438)
                                        (begin
                                          ((dyn send^)
                                           rcv7436
                                           (cons
                                            'enhanced
                                            (cons
                                             (lambda (j7440)
                                               (letrec ((r
                                                         (lambda (trace7444)
                                                           (receive
                                                            (('finish
                                                              (begin
                                                                (if (member
                                                                     'ping
                                                                     trace7444)
                                                                  #t
                                                                  (blame
                                                                   j7440))))
                                                             ((pair
                                                               rcv7443
                                                               message7442)
                                                              (match
                                                               message7442
                                                               (((cons
                                                                  'ping
                                                                  x7445)
                                                                 (begin
                                                                   ((dyn send^)
                                                                    rcv7443
                                                                    (cons
                                                                     'enhanced
                                                                     (cons
                                                                      (ping/cm)
                                                                      (cons
                                                                       j7440
                                                                       (cons
                                                                        'ping
                                                                        ((actor?
                                                                          j7440
                                                                          j7440)
                                                                         x7445))))))
                                                                   (r
                                                                    (cons
                                                                     'ping
                                                                     trace7444))))))))))))
                                                 (spawn^ (r (list)))))
                                             (cons
                                              j7433
                                              (cons
                                               'pong
                                               ((actor? j7433 j7433)
                                                x7438))))))
                                          (r (cons 'pong trace7437))))))))))))
                        (spawn^ (r (list))))))))
          (letrec ((ping
                    (letrec ((xj7446 'client) (xk7447 'server))
                      (ping/c
                       xj7446
                       xk7447
                       (letrec ((act (spawn^ (ping-behavior))))
                         (lambda (msg) ((dyn send^) act msg))))))
                   (pong
                    (letrec ((act (spawn^ (pong-behavior))))
                      (lambda (msg) ((dyn send^) act msg)))))
            (begin (ping (cons 'ping pong)) (wait-until-all-finished))))))))
