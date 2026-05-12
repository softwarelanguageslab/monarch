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
                (letrec ((val2306 (> x y)))
                  (if val2306
                    val2306
                    (letrec ((val2307 (= x y))) (if val2307 val2307 #f))))))
             (<=
              (lambda (x y)
                (assert (number? x))
                (letrec ((val2308 (< x y)))
                  (if val2308
                    val2308
                    (letrec ((val2309 (= x y))) (if val2309 val2309 #f))))))
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
                (lambda (g2325 g2326 g2327)
                  (if (real? g2327) g2327 (blame g2325 'real?))))
               (boolean?/c
                (lambda (g2328 g2329 g2330)
                  (if (boolean? g2330) g2330 (blame g2328 'boolean?))))
               (number?/c
                (lambda (g2331 g2332 g2333)
                  (if (number? g2333) g2333 (blame g2331 'number?))))
               (any/c
                (lambda (g2334 g2335 g2336)
                  (if ((lambda (v) #t) g2336)
                    g2336
                    (blame g2334 '(lambda (v) #t)))))
               (any?/c
                (lambda (g2337 g2338 g2339)
                  (if ((lambda (v) #t) g2339)
                    g2339
                    (blame g2337 '(lambda (v) #t)))))
               (cons?/c
                (lambda (g2340 g2341 g2342)
                  (if (pair? g2342) g2342 (blame g2340 'pair?))))
               (cons/c
                (lambda (k1 k2)
                  (lambda (k j v) (cons (k1 k j (car v)) (k2 k j (cdr v))))))
               (pair?/c
                (lambda (g2343 g2344 g2345)
                  (if (pair? g2345) g2345 (blame g2343 'pair?))))
               (integer?/c
                (lambda (g2346 g2347 g2348)
                  (if (integer? g2348) g2348 (blame g2346 'integer?))))
               (symbol?/c
                (lambda (g2349 g2350 g2351)
                  (if (symbol? g2351) g2351 (blame g2349 'symbol?))))
               (string?/c
                (lambda (g2352 g2353 g2354)
                  (if (string? g2354) g2354 (blame g2352 'string?))))
               (and/c
                (lambda (c1 c2)
                  (lambda (k j v) (if (c1 k j v) (c2 k j v) #f))))
               (or/c
                (lambda (c1 c2)
                  (lambda (k j v)
                    (letrec ((val2310 (c1 k j v)))
                      (if val2310 val2310 (c2 k j v))))))
               (null?/c
                (lambda (g2355 g2356 g2357)
                  (if (null? g2357) g2357 (blame g2355 'null?))))
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
                (lambda (g2358 g2359 g2360)
                  (if ((lambda (v) (not (= v 0))) g2360)
                    g2360
                    (blame g2358 '(lambda (v) (not (= v 0)))))))
               (>=/c
                (lambda (n)
                  (lambda (g2361 g2362 g2363)
                    (if ((lambda (v) (orig->= v n)) g2363)
                      g2363
                      (blame g2361 '(lambda (v) (orig->= v n)))))))
               (>/c
                (lambda (n)
                  (lambda (g2364 g2365 g2366)
                    (if ((lambda (v) (orig-> v n)) g2366)
                      g2366
                      (blame g2364 '(lambda (v) (orig-> v n)))))))
               (</c
                (lambda (n)
                  (lambda (g2367 g2368 g2369)
                    (if ((lambda (v) (orig-< v n)) g2369)
                      g2369
                      (blame g2367 '(lambda (v) (orig-< v n)))))))
               (<=/c
                (lambda (n)
                  (lambda (g2370 g2371 g2372)
                    (if ((lambda (v) (orig-<= v n)) g2372)
                      g2372
                      (blame g2370 '(lambda (v) (orig-<= v n)))))))
               (=/c
                (lambda (n)
                  (lambda (g2373 g2374 g2375)
                    (if ((lambda (v) (orig-= v n)) g2375)
                      g2375
                      (blame g2373 '(lambda (v) (orig-= v n)))))))
               (meta (lambda (v) v))
               (+
                (letrec ((xj2376 'server) (xk2377 'client))
                  ((lambda (j2380 k2381 f2382)
                     (lambda (g2378 g2379)
                       (number?/c
                        j2380
                        k2381
                        (f2382
                         (number?/c k2381 j2380 g2378)
                         (number?/c k2381 j2380 g2379)))))
                   xj2376
                   xk2377
                   (lambda (a b) (orig-+ a b)))))
               (-
                (letrec ((xj2383 'server) (xk2384 'client))
                  ((lambda (j2387 k2388 f2389)
                     (lambda (g2385 g2386)
                       (number?/c
                        j2387
                        k2388
                        (f2389
                         (number?/c k2388 j2387 g2385)
                         (number?/c k2388 j2387 g2386)))))
                   xj2383
                   xk2384
                   (lambda (a b) (orig-- a b)))))
               (*
                (letrec ((xj2390 'server) (xk2391 'client))
                  ((lambda (j2394 k2395 f2396)
                     (lambda (g2392 g2393)
                       (number?/c
                        j2394
                        k2395
                        (f2396
                         (number?/c k2395 j2394 g2392)
                         (number?/c k2395 j2394 g2393)))))
                   xj2390
                   xk2391
                   (lambda (a b) (orig-* a b)))))
               (<
                (letrec ((xj2397 'server) (xk2398 'client))
                  ((lambda (j2401 k2402 f2403)
                     (lambda (g2399 g2400)
                       (boolean?/c
                        j2401
                        k2402
                        (f2403
                         (number?/c k2402 j2401 g2399)
                         (number?/c k2402 j2401 g2400)))))
                   xj2397
                   xk2398
                   (lambda (a b) (orig-< a b)))))
               (>
                (letrec ((xj2404 'server) (xk2405 'client))
                  ((lambda (j2408 k2409 f2410)
                     (lambda (g2406 g2407)
                       (boolean?/c
                        j2408
                        k2409
                        (f2410
                         (number?/c k2409 j2408 g2406)
                         (number?/c k2409 j2408 g2407)))))
                   xj2404
                   xk2405
                   (lambda (a b) (orig-> a b)))))
               (<=
                (letrec ((xj2411 'server) (xk2412 'client))
                  ((lambda (j2415 k2416 f2417)
                     (lambda (g2413 g2414)
                       (boolean?/c
                        j2415
                        k2416
                        (f2417
                         (number?/c k2416 j2415 g2413)
                         (number?/c k2416 j2415 g2414)))))
                   xj2411
                   xk2412
                   (lambda (a b) (orig-<= a b)))))
               (>=
                (letrec ((xj2418 'server) (xk2419 'client))
                  ((lambda (j2422 k2423 f2424)
                     (lambda (g2420 g2421)
                       (boolean?/c
                        j2422
                        k2423
                        (f2424
                         (number?/c k2423 j2422 g2420)
                         (number?/c k2423 j2422 g2421)))))
                   xj2418
                   xk2419
                   (lambda (a b) (orig->= a b)))))
               (add1 (lambda (x) (+ x 1)))
               (/
                (letrec ((xj2425 'server) (xk2426 'client))
                  ((lambda (j2429 k2430 f2431)
                     (lambda (g2427 g2428)
                       (number?/c
                        j2429
                        k2430
                        (f2431
                         (number?/c k2430 j2429 g2427)
                         (number?/c k2430 j2429 g2428)))))
                   xj2425
                   xk2426
                   (lambda (a b) (orig-/ a b)))))
               (car
                (letrec ((xj2432 'server) (xk2433 'client))
                  ((lambda (j2435 k2436 f2437)
                     (lambda (g2434)
                       (any/c
                        j2435
                        k2436
                        (f2437 (pair?/c k2436 j2435 g2434)))))
                   xj2432
                   xk2433
                   (lambda (p) (orig-car p)))))
               (cdr
                (letrec ((xj2438 'server) (xk2439 'client))
                  ((lambda (j2441 k2442 f2443)
                     (lambda (g2440)
                       (any/c
                        j2441
                        k2442
                        (f2443 (pair?/c k2442 j2441 g2440)))))
                   xj2438
                   xk2439
                   (lambda (p) (orig-cdr p)))))
               (cons
                (letrec ((xj2444 'server) (xk2445 'client))
                  ((lambda (j2448 k2449 f2450)
                     (lambda (g2446 g2447)
                       (pair?/c
                        j2448
                        k2449
                        (f2450
                         (any/c k2449 j2448 g2446)
                         (any/c k2449 j2448 g2447)))))
                   xj2444
                   xk2445
                   (lambda (a b) (orig-cons a b)))))
               (vector?/c
                (lambda (g2451 g2452 g2453)
                  (if (vector? g2453) g2453 (blame g2451 'vector?))))
               (vector-ref
                (letrec ((xj2454 'server) (xk2455 'client))
                  ((lambda (j2458 k2459 f2460)
                     (lambda (g2456 g2457)
                       (any/c
                        j2458
                        k2459
                        (f2460
                         (vector?/c k2459 j2458 g2456)
                         (integer?/c k2459 j2458 g2457)))))
                   xj2454
                   xk2455
                   (lambda (v i) (orig-vector-ref v i)))))
               (vector-set!
                (letrec ((xj2461 'server) (xk2462 'client))
                  ((lambda (j2466 k2467 f2468)
                     (lambda (g2463 g2464 g2465)
                       (any/c
                        j2466
                        k2467
                        (f2468
                         (vector?/c k2467 j2466 g2463)
                         (integer?/c k2467 j2466 g2464)
                         (any/c k2467 j2466 g2465)))))
                   xj2461
                   xk2462
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
                  (letrec ((val2311 (char<? c1 c2)))
                    (if val2311 val2311 (char=? c1 c2)))))
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
                  (letrec ((val2312 (= (char->integer c) 9)))
                    (if val2312
                      val2312
                      (letrec ((val2313 (= (char->integer c) 10)))
                        (if val2313 val2313 (= (char->integer c) 32)))))))
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
                  (letrec ((val2314 (eq? a b)))
                    (if val2314
                      val2314
                      (letrec ((val2315 (if (null? a) (null? b) #f)))
                        (if val2315
                          val2315
                          (letrec ((val2316
                                    (if (string? a)
                                      (if (string? b) (string=? a b) #f)
                                      #f)))
                            (if val2316
                              val2316
                              (letrec ((val2317
                                        (if (pair? a)
                                          (if (pair? b)
                                            (if (equal? (car a) (car b))
                                              (equal? (cdr a) (cdr b))
                                              #f)
                                            #f)
                                          #f)))
                                (if val2317
                                  val2317
                                  (if (vector? a)
                                    (if (vector? b)
                                      (letrec ((n (vector-length a)))
                                        (if (= (vector-length b) n)
                                          (letrec ((loop
                                                    (lambda (i)
                                                      (letrec ((val2318
                                                                (= i n)))
                                                        (if val2318
                                                          val2318
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
                  (letrec ((val2319 (char>? c1 c2)))
                    (if val2319 val2319 (char=? c1 c2)))))
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
                  (letrec ((val2320 (string>? s1 s2)))
                    (if val2320 val2320 (string=? s1 s2)))))
               (cadr (lambda (x) (car (cdr x))))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec ((val2321 (if (pair? l) (list? (cdr l)) #f)))
                    (if val2321 val2321 (null? l)))))
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
                  (letrec ((val2322 (char-ci<? c1 c2)))
                    (if val2322 val2322 (char-ci=? c1 c2)))))
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
                  (letrec ((val2323 (string<? s1 s2)))
                    (if val2323 val2323 (string=? s1 s2)))))
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
                  (letrec ((val2324 (char-ci>? c1 c2)))
                    (if val2324 val2324 (char-ci=? c1 c2)))))
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
                    (trace 'ping-behavior-created)
                    (letrec ((real-self (self^)))
                      (parametrize
                       ((self (lambda (m) ((dyn send^) real-self m))))
                       (begin
                         (trace 'just-before-receive)
                         (receive
                          (((cons 'ping sender)
                            (begin
                              (trace 'ping-received)
                              (sender (cons 'pong (dyn self)))
                              (ping-behavior)))
                           ((cons
                             'enhanced
                             (cons k2469 (cons j2473 (cons 'ping sender))))
                            (letrec ((kc2470 (k2469 j2473))
                                     (old-send2474 (dyn send^)))
                              (trace 'enhanced-ping-receive)
                              (parametrize
                               ((send^
                                 (lambda (rcv2471 msg2472)
                                   (old-send2474
                                    kc2470
                                    (cons rcv2471 msg2472)))))
                               (begin
                                 (sender (cons 'pong (dyn self)))
                                 (old-send2474 kc2470 'finish)))
                              (ping-behavior))))))))))
                 (pong-behavior
                  (lambda ()
                    (letrec ((real-self (self^)))
                      (parametrize
                       ((self (lambda (m) ((dyn send^) real-self m))))
                       (receive
                        (((cons 'pong sender)
                          (begin
                            (trace 'pong-receive)
                            (sender (cons 'ping (dyn self)))
                            (pong-behavior)))
                         ((cons
                           'enhanced
                           (cons k2476 (cons j2480 (cons 'pong sender))))
                          (letrec ((kc2477 (k2476 j2480))
                                   (old-send2481 (dyn send^)))
                            (trace 'enhanced-pong-receive)
                            (parametrize
                             ((send^
                               (lambda (rcv2478 msg2479)
                                 (old-send2481
                                  kc2477
                                  (cons rcv2478 msg2479)))))
                             (begin
                               (sender (cons 'ping (dyn self)))
                               (old-send2481 kc2477 'finish)))
                            (pong-behavior)))))))))
                 (ping/c
                  (lambda (k2485 j2486 a2484)
                    (lambda (v2487)
                      (letrec ((result2493
                                ((lambda (k2489 j2490 v2491)
                                   (match
                                    v2491
                                    (((cons 'ping x2492)
                                      (cons
                                       'enhanced
                                       (cons
                                        (ping/cm)
                                        (cons
                                         j2490
                                         (cons
                                          'ping
                                          ((actor? k2489 j2490) x2492)))))))))
                                 k2485
                                 j2486
                                 v2487)))
                        (if result2493 (a2484 result2493) (blame k2485))))))
                 (ping/cm
                  (lambda ()
                    (lambda (j2496)
                      (letrec ((r
                                (lambda (trace2500)
                                  (receive
                                   (('finish
                                     (begin
                                       (if (member 'pong trace2500)
                                         #t
                                         (blame j2496))))
                                    ((pair rcv2499 message2498)
                                     (match
                                      message2498
                                      (((cons 'pong x2501)
                                        (begin
                                          ((dyn send^)
                                           rcv2499
                                           (cons
                                            'enhanced
                                            (cons
                                             (lambda (j2503)
                                               (letrec ((r
                                                         (lambda (trace2507)
                                                           (receive
                                                            (('finish
                                                              (begin
                                                                (if (member
                                                                     'ping
                                                                     trace2507)
                                                                  #t
                                                                  (blame
                                                                   j2503))))
                                                             ((pair
                                                               rcv2506
                                                               message2505)
                                                              (match
                                                               message2505
                                                               (((cons
                                                                  'ping
                                                                  x2508)
                                                                 (begin
                                                                   ((dyn send^)
                                                                    rcv2506
                                                                    (cons
                                                                     'enhanced
                                                                     (cons
                                                                      (ping/cm)
                                                                      (cons
                                                                       j2503
                                                                       (cons
                                                                        'ping
                                                                        ((actor?
                                                                          j2503
                                                                          j2503)
                                                                         x2508))))))
                                                                   (r
                                                                    (cons
                                                                     'ping
                                                                     trace2507))))))))))))
                                                 (spawn^ (r (list)))))
                                             (cons
                                              j2496
                                              (cons
                                               'pong
                                               ((actor? j2496 j2496)
                                                x2501))))))
                                          (r (cons 'pong trace2500))))))))))))
                        (spawn^ (r (list))))))))
          (letrec ((ping
                    (letrec ((act (spawn^ (ping-behavior))))
                      (lambda (msg) ((dyn send^) act msg))))
                   (pong
                    (letrec ((act (spawn^ (pong-behavior))))
                      (lambda (msg) ((dyn send^) act msg)))))
            (begin
              (ping (cons 'ping pong))
              (wait-until-all-finished))))))))
