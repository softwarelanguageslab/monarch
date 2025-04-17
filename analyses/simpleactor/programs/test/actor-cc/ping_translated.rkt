(letrec ((any? (lambda (v) #t))
         (meta (lambda (v) v))
         (member
          (lambda (v lst)
            (begin
              (match
               lst
               ((() #f) ((pair v1 vs) (if (eq? v v1) #t (member v vs))))))))
         (unconstrained/c #f)
         (actor? (lambda (k j) (lambda (v) v)))
         (nonzero? (lambda (v) (not (= v 0)))))
  (begin
    (letrec ((assert (lambda (cnd) (if cnd '() (error "assertion failed"))))
             (>=
              (lambda (x y)
                (assert (number? x))
                (letrec ((val7244 (> x y)))
                  (if val7244
                    val7244
                    (letrec ((val7245 (= x y))) (if val7245 val7245 #f))))))
             (<=
              (lambda (x y)
                (assert (number? x))
                (letrec ((val7246 (< x y)))
                  (if val7246
                    val7246
                    (letrec ((val7247 (= x y))) (if val7247 val7247 #f))))))
             (> (lambda (x y) (assert (number? x)) (not (<= x y))))
             (orig-+ +)
             (orig-- -)
             (orig-* *)
             (orig-/ /)
             (orig-> >)
             (orig-< <)
             (orig->= >=)
             (orig-<= <=)
             (orig-car car)
             (orig-cdr cdr)
             (orig-cons cons)
             (orig-vector-ref vector-ref)
             (orig-vector-set vector-set!))
      '()
      (letrec ((empty '())
               (listof
                (lambda (contract)
                  (lambda (k j lst) (map (lambda (v) (contract k j v)) lst))))
               (real?/c
                (lambda (g7263 g7264 g7265)
                  (if (real? g7265) g7265 (blame g7263 'real?))))
               (boolean?/c
                (lambda (g7266 g7267 g7268)
                  (if (boolean? g7268) g7268 (blame g7266 'boolean?))))
               (number?/c
                (lambda (g7269 g7270 g7271)
                  (if (number? g7271) g7271 (blame g7269 'number?))))
               (any/c
                (lambda (g7272 g7273 g7274)
                  (if ((lambda (v) #t) g7274)
                    g7274
                    (blame g7272 '(lambda (v) #t)))))
               (any?/c
                (lambda (g7275 g7276 g7277)
                  (if ((lambda (v) #t) g7277)
                    g7277
                    (blame g7275 '(lambda (v) #t)))))
               (cons?/c
                (lambda (g7278 g7279 g7280)
                  (if (pair? g7280) g7280 (blame g7278 'pair?))))
               (cons/c
                (lambda (k1 k2)
                  (lambda (k j v) (cons (k1 k j (car v)) (k2 k j (cdr v))))))
               (pair?/c
                (lambda (g7281 g7282 g7283)
                  (if (pair? g7283) g7283 (blame g7281 'pair?))))
               (integer?/c
                (lambda (g7284 g7285 g7286)
                  (if (integer? g7286) g7286 (blame g7284 'integer?))))
               (symbol?/c
                (lambda (g7287 g7288 g7289)
                  (if (symbol? g7289) g7289 (blame g7287 'symbol?))))
               (string?/c
                (lambda (g7290 g7291 g7292)
                  (if (string? g7292) g7292 (blame g7290 'string?))))
               (and/c
                (lambda (c1 c2)
                  (lambda (k j v) (if (c1 k j v) (c2 k j v) #f))))
               (or/c
                (lambda (c1 c2)
                  (lambda (k j v)
                    (letrec ((val7248 (c1 k j v)))
                      (if val7248 val7248 (c2 k j v))))))
               (null?/c
                (lambda (g7293 g7294 g7295)
                  (if (null? g7295) g7295 (blame g7293 'null?))))
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
                (lambda (g7296 g7297 g7298)
                  (if ((lambda (v) (not (= v 0))) g7298)
                    g7298
                    (blame g7296 '(lambda (v) (not (= v 0)))))))
               (>=/c
                (lambda (n)
                  (lambda (g7299 g7300 g7301)
                    (if ((lambda (v) (orig->= v n)) g7301)
                      g7301
                      (blame g7299 '(lambda (v) (orig->= v n)))))))
               (>/c
                (lambda (n)
                  (lambda (g7302 g7303 g7304)
                    (if ((lambda (v) (orig-> v n)) g7304)
                      g7304
                      (blame g7302 '(lambda (v) (orig-> v n)))))))
               (</c
                (lambda (n)
                  (lambda (g7305 g7306 g7307)
                    (if ((lambda (v) (orig-< v n)) g7307)
                      g7307
                      (blame g7305 '(lambda (v) (orig-< v n)))))))
               (<=/c
                (lambda (n)
                  (lambda (g7308 g7309 g7310)
                    (if ((lambda (v) (orig-<= v n)) g7310)
                      g7310
                      (blame g7308 '(lambda (v) (orig-<= v n)))))))
               (=/c
                (lambda (n)
                  (lambda (g7311 g7312 g7313)
                    (if ((lambda (v) (orig-= v n)) g7313)
                      g7313
                      (blame g7311 '(lambda (v) (orig-= v n)))))))
               (meta (lambda (v) v))
               (+
                (letrec ((xj7314 'server) (xk7315 'client))
                  ((lambda (j7318 k7319 f7320)
                     (lambda (g7316 g7317)
                       (number?/c
                        j7318
                        k7319
                        (f7320
                         (number?/c j7318 k7319 g7316)
                         (number?/c j7318 k7319 g7317)))))
                   xj7314
                   xk7315
                   (lambda (a b) (orig-+ a b)))))
               (-
                (letrec ((xj7321 'server) (xk7322 'client))
                  ((lambda (j7325 k7326 f7327)
                     (lambda (g7323 g7324)
                       (number?/c
                        j7325
                        k7326
                        (f7327
                         (number?/c j7325 k7326 g7323)
                         (number?/c j7325 k7326 g7324)))))
                   xj7321
                   xk7322
                   (lambda (a b) (orig-- a b)))))
               (*
                (letrec ((xj7328 'server) (xk7329 'client))
                  ((lambda (j7332 k7333 f7334)
                     (lambda (g7330 g7331)
                       (number?/c
                        j7332
                        k7333
                        (f7334
                         (number?/c j7332 k7333 g7330)
                         (number?/c j7332 k7333 g7331)))))
                   xj7328
                   xk7329
                   (lambda (a b) (orig-* a b)))))
               (<
                (letrec ((xj7335 'server) (xk7336 'client))
                  ((lambda (j7339 k7340 f7341)
                     (lambda (g7337 g7338)
                       (boolean?/c
                        j7339
                        k7340
                        (f7341
                         (number?/c j7339 k7340 g7337)
                         (number?/c j7339 k7340 g7338)))))
                   xj7335
                   xk7336
                   (lambda (a b) (orig-< a b)))))
               (>
                (letrec ((xj7342 'server) (xk7343 'client))
                  ((lambda (j7346 k7347 f7348)
                     (lambda (g7344 g7345)
                       (boolean?/c
                        j7346
                        k7347
                        (f7348
                         (number?/c j7346 k7347 g7344)
                         (number?/c j7346 k7347 g7345)))))
                   xj7342
                   xk7343
                   (lambda (a b) (orig-> a b)))))
               (<=
                (letrec ((xj7349 'server) (xk7350 'client))
                  ((lambda (j7353 k7354 f7355)
                     (lambda (g7351 g7352)
                       (boolean?/c
                        j7353
                        k7354
                        (f7355
                         (number?/c j7353 k7354 g7351)
                         (number?/c j7353 k7354 g7352)))))
                   xj7349
                   xk7350
                   (lambda (a b) (orig-<= a b)))))
               (>=
                (letrec ((xj7356 'server) (xk7357 'client))
                  ((lambda (j7360 k7361 f7362)
                     (lambda (g7358 g7359)
                       (boolean?/c
                        j7360
                        k7361
                        (f7362
                         (number?/c j7360 k7361 g7358)
                         (number?/c j7360 k7361 g7359)))))
                   xj7356
                   xk7357
                   (lambda (a b) (orig->= a b)))))
               (add1 (lambda (x) (+ x 1)))
               (/
                (letrec ((xj7363 'server) (xk7364 'client))
                  ((lambda (j7367 k7368 f7369)
                     (lambda (g7365 g7366)
                       (number?/c
                        j7367
                        k7368
                        (f7369
                         (number?/c j7367 k7368 g7365)
                         (number?/c j7367 k7368 g7366)))))
                   xj7363
                   xk7364
                   (lambda (a b) (orig-/ a b)))))
               (car
                (letrec ((xj7370 'server) (xk7371 'client))
                  ((lambda (j7373 k7374 f7375)
                     (lambda (g7372)
                       (any/c
                        j7373
                        k7374
                        (f7375 (pair?/c j7373 k7374 g7372)))))
                   xj7370
                   xk7371
                   (lambda (p) (orig-car p)))))
               (cdr
                (letrec ((xj7376 'server) (xk7377 'client))
                  ((lambda (j7379 k7380 f7381)
                     (lambda (g7378)
                       (any/c
                        j7379
                        k7380
                        (f7381 (pair?/c j7379 k7380 g7378)))))
                   xj7376
                   xk7377
                   (lambda (p) (orig-cdr p)))))
               (cons
                (letrec ((xj7382 'server) (xk7383 'client))
                  ((lambda (j7386 k7387 f7388)
                     (lambda (g7384 g7385)
                       (pair?/c
                        j7386
                        k7387
                        (f7388
                         (any/c j7386 k7387 g7384)
                         (any/c j7386 k7387 g7385)))))
                   xj7382
                   xk7383
                   (lambda (a b) (orig-cons a b)))))
               (vector-ref
                (letrec ((xj7389 'server) (xk7390 'client))
                  ((lambda (j7392 k7393 f7394)
                     (lambda (g7391)
                       (integer?/c
                        j7392
                        k7393
                        (f7394 (vector?/c j7392 k7393 g7391)))))
                   xj7389
                   xk7390
                   (lambda (v i) (orig-vector-ref v i)))))
               (vector-set!
                (letrec ((xj7395 'server) (xk7396 'client))
                  ((lambda (j7399 k7400 f7401)
                     (lambda (g7397 g7398)
                       (any/c
                        j7399
                        k7400
                        (f7401
                         (vector?/c j7399 k7400 g7397)
                         (integer?/c j7399 k7400 g7398)))))
                   xj7395
                   xk7396
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
               (list->string
                (lambda (l)
                  (assert (list? l))
                  (if (null? l)
                    ""
                    (string-append
                     (char->string (car l))
                     (list->string (cdr l))))))
               (char<=?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (letrec ((val7249 (char<? c1 c2)))
                    (if val7249 val7249 (char=? c1 c2)))))
               (cdddar (lambda (x) (cdr (cdr (cdr (car x))))))
               (list-tail
                (lambda (x k)
                  (assert (list? l))
                  (assert (number?))
                  (if (zero? k) x (list-tail (cdr x) (- k 1)))))
               (halt (lambda () '()))
               (char-alphabetic?
                (lambda (c) (if (char-ci>=? c #\a) (char-ci<=? c #\z) #f)))
               (char-whitespace?
                (lambda (c)
                  (letrec ((val7250 (= (char->integer c) 9)))
                    (if val7250
                      val7250
                      (letrec ((val7251 (= (char->integer c) 10)))
                        (if val7251 val7251 (= (char->integer c) 32)))))))
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
               (equal?
                (lambda (a b)
                  (letrec ((val7252 (eq? a b)))
                    (if val7252
                      val7252
                      (letrec ((val7253 (if (null? a) (null? b) #f)))
                        (if val7253
                          val7253
                          (letrec ((val7254
                                    (if (string? a)
                                      (if (string? b) (string=? a b) #f)
                                      #f)))
                            (if val7254
                              val7254
                              (letrec ((val7255
                                        (if (pair? a)
                                          (if (pair? b)
                                            (if (equal? (car a) (car b))
                                              (equal? (cdr a) (cdr b))
                                              #f)
                                            #f)
                                          #f)))
                                (if val7255
                                  val7255
                                  (if (vector? a)
                                    (if (vector? b)
                                      (letrec ((n (vector-length a)))
                                        (if (= (vector-length b) n)
                                          (letrec ((loop
                                                    (lambda (i)
                                                      (letrec ((val7256
                                                                (= i n)))
                                                        (if val7256
                                                          val7256
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
                  (letrec ((val7257 (char>? c1 c2)))
                    (if val7257 val7257 (char=? c1 c2)))))
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
               (cddddr (lambda (x) (cdr (cdr (cdr (cdr x))))))
               (cadddr (lambda (x) (car (cdr (cdr (cdr x))))))
               (int-top (lambda () (random 42)))
               (zero? (lambda (x) (assert (number? x)) (= x 0)))
               (string>=?
                (lambda (s1 s2)
                  (letrec ((val7258 (string>? s1 s2)))
                    (if val7258 val7258 (string=? s1 s2)))))
               (cadr (lambda (x) (car (cdr x))))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec ((val7259 (if (pair? l) (list? (cdr l)) #f)))
                    (if val7259 val7259 (null? l)))))
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
                  (letrec ((val7260 (char-ci<? c1 c2)))
                    (if val7260 val7260 (char-ci=? c1 c2)))))
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
                  (letrec ((val7261 (string<? s1 s2)))
                    (if val7261 val7261 (string=? s1 s2)))))
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
                  (letrec ((val7262 (char-ci>? c1 c2)))
                    (if val7262 val7262 (char-ci=? c1 c2)))))
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
                    (letrec ((real-self self^))
                      (parametrize
                       ((self (lambda (m) ((dyn send^) real-self m))))
                       (receive
                        (((pair 'ping sender)
                          (begin
                            (print 'ping)
                            (sender (pair 'pong (dyn self)))
                            (ping-behavior)))
                         ((pair
                           'enhanced
                           (pair k7402 (pair j7406 (pair 'ping sender))))
                          (letrec ((kc7403 (k7402 j7406))
                                   (old-send7407 (dyn send^)))
                            (parametrize
                             ((send^
                               (lambda (rcv7404 msg7405)
                                 (old-send7407
                                  kc7403
                                  (pair rcv7404 msg7405)))))
                             (begin
                               (print 'ping)
                               (sender (pair 'pong (dyn self)))
                               (old-send7407 kc7403 'finish)
                               (ping-behavior)))))))))))
                 (pong-behavior
                  (lambda ()
                    (letrec ((real-self self^))
                      (parametrize
                       ((self (lambda (m) ((dyn send^) real-self m))))
                       (receive
                        (((pair 'pong sender)
                          (begin
                            (print 'pong)
                            (sender (pair 'ping (dyn self)))
                            (pong-behavior)))
                         ((pair
                           'enhanced
                           (pair k7409 (pair j7413 (pair 'pong sender))))
                          (letrec ((kc7410 (k7409 j7413))
                                   (old-send7414 (dyn send^)))
                            ; (trace j7413)
                            (parametrize
                             ((send^
                               (lambda (rcv7411 msg7412)
                                 (trace 
                                  kc7410)
                                 (old-send7414
                                  kc7410
                                  (pair rcv7411 (trace msg7412))))))
                             (begin
                               (print 'pong)
                               (sender (pair 'ping (dyn self)))
                               (old-send7414 kc7410 'finish)
                               (pong-behavior)))))))))))
                 (ping/c
                  (lambda ()
                    (lambda (k7418 j7419 a7417)
                      (lambda (v7420)
                        (letrec ((message7416
                                  (match
                                   v7420
                                   (((pair 'ping x7422)
                                     (begin
                                      (pair
                                      'enhanced
                                      (pair
                                       (lambda (j7424)
                                         ; (trace j7424)
                                         (letrec ((r
                                                   (lambda (trace7428)
                                                     (receive
                                                      (('finish
                                                        (begin
                                                          ; (trace (member 'pong trace7428))
                                                          (if (member
                                                               'pong
                                                               trace7428)
                                                            #t
                                                            (blame j7424))))
                                                       ((pair
                                                         rcv7427
                                                         message7426)
                                                        (begin
                                                          ; (trace 'rcv)
                                                        (match
                                                         message7426
                                                         (((pair 'pong x7429)
                                                           (begin
                                                             ((dyn send^)
                                                              rcv7427
                                                              (pair
                                                               'enhanced
                                                               (pair
                                                                (lambda (j7431)
                                                                  ; (trace "CALL")
                                                                  (letrec ((r
                                                                            (lambda (trace7435)
                                                                              (receive
                                                                               (('finish
                                                                                 '())
                                                                                ((pair
                                                                                  rcv7434
                                                                                  message7433)
                                                                                 (ping/c)))))))
                                                                    (trace 'FOO)
                                                                    (spawn^
                                                                     (r
                                                                      (list)))))
                                                                (pair
                                                                 j7424
                                                                 (pair
                                                                  'pong
                                                                  ((actor?
                                                                    j7424
                                                                    j7424)
                                                                   x7429))))))
                                                             ; (trace 'RECUR)
                                                             (r
                                                              (pair
                                                               'pong
                                                               trace7428)))))))))))))
                                           (spawn^ (r (list)))))
                                       (pair
                                        j7419
                                        (pair
                                         'ping
                                         ((actor? k7418 j7419) x7422)))))))
                                    (x7421 (blame k7418))))))
                          (a7417 message7416)))))))
          (letrec ((ping
                    (letrec ((xj7436 'client) (xk7437 'server))
                      ((ping/c)
                       xj7436
                       xk7437
                       (letrec ((act (spawn^ (ping-behavior))))
                         (lambda (msg) ((dyn send^) act msg))))))
                   (pong
                    (letrec ((act (spawn^ (pong-behavior))))
                      (lambda (msg) ((dyn send^) act msg)))))
            (begin (ping (pair 'ping pong)) (wait-until-all-finished))))))))
