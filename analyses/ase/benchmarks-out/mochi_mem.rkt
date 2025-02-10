(letrec ((any? (lambda (v) (letrec ((g7344 #t)) g7344)))
         (meta (lambda (v) (letrec ((g7345 v)) g7345)))
         (member
          (lambda (v lst)
            (letrec ((g7346
                      (letrec ((g7347
                                (letrec ((x-e7348 lst))
                                  (match
                                   x-e7348
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7349 (eq? v v1)))
                                       (if x-cnd7349 #t (member v vs)))))))))
                        g7347)))
              g7346)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7350 (lambda (v) (letrec ((g7351 v)) g7351)))) g7350)))
         (nonzero?
          (lambda (v)
            (letrec ((g7352 (letrec ((x7353 (= v 0))) (not x7353)))) g7352))))
  (letrec ((g7354
            (letrec ((g7355
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7356 '())
                                 (g7357
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7358
                                                        (lambda (k j lst)
                                                          (letrec ((g7359
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7360
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7360))
                                                                     lst)))
                                                            g7359))))
                                                g7358)))
                                           (real?/c
                                            (lambda (g7260 g7261 g7262)
                                              (letrec ((g7361
                                                        (letrec ((x-cnd7362
                                                                  (real?
                                                                   g7262)))
                                                          (if x-cnd7362
                                                            g7262
                                                            (blame
                                                             g7260
                                                             'real?)))))
                                                g7361)))
                                           (boolean?/c
                                            (lambda (g7263 g7264 g7265)
                                              (letrec ((g7363
                                                        (letrec ((x-cnd7364
                                                                  (boolean?
                                                                   g7265)))
                                                          (if x-cnd7364
                                                            g7265
                                                            (blame
                                                             g7263
                                                             'boolean?)))))
                                                g7363)))
                                           (number?/c
                                            (lambda (g7266 g7267 g7268)
                                              (letrec ((g7365
                                                        (letrec ((x-cnd7366
                                                                  (number?
                                                                   g7268)))
                                                          (if x-cnd7366
                                                            g7268
                                                            (blame
                                                             g7266
                                                             'number?)))))
                                                g7365)))
                                           (any/c
                                            (lambda (g7269 g7270 g7271)
                                              (letrec ((g7367
                                                        (letrec ((x-cnd7368
                                                                  ((lambda (v)
                                                                     (letrec ((g7369
                                                                               #t))
                                                                       g7369))
                                                                   g7271)))
                                                          (if x-cnd7368
                                                            g7271
                                                            (blame
                                                             g7269
                                                             '(lambda (v)
                                                                #t))))))
                                                g7367)))
                                           (any?/c
                                            (lambda (g7272 g7273 g7274)
                                              (letrec ((g7370
                                                        (letrec ((x-cnd7371
                                                                  ((lambda (v)
                                                                     (letrec ((g7372
                                                                               #t))
                                                                       g7372))
                                                                   g7274)))
                                                          (if x-cnd7371
                                                            g7274
                                                            (blame
                                                             g7272
                                                             '(lambda (v)
                                                                #t))))))
                                                g7370)))
                                           (cons?/c
                                            (lambda (g7275 g7276 g7277)
                                              (letrec ((g7373
                                                        (letrec ((x-cnd7374
                                                                  (pair?
                                                                   g7277)))
                                                          (if x-cnd7374
                                                            g7277
                                                            (blame
                                                             g7275
                                                             'pair?)))))
                                                g7373)))
                                           (pair?/c
                                            (lambda (g7278 g7279 g7280)
                                              (letrec ((g7375
                                                        (letrec ((x-cnd7376
                                                                  (pair?
                                                                   g7280)))
                                                          (if x-cnd7376
                                                            g7280
                                                            (blame
                                                             g7278
                                                             'pair?)))))
                                                g7375)))
                                           (integer?/c
                                            (lambda (g7281 g7282 g7283)
                                              (letrec ((g7377
                                                        (letrec ((x-cnd7378
                                                                  (integer?
                                                                   g7283)))
                                                          (if x-cnd7378
                                                            g7283
                                                            (blame
                                                             g7281
                                                             'integer?)))))
                                                g7377)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7379
                                                        (lambda (k j v)
                                                          (letrec ((g7380
                                                                    (letrec ((x-cnd7381
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7381
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7380))))
                                                g7379)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7382
                                                        (lambda (k j v)
                                                          (letrec ((g7383
                                                                    (letrec ((x-cnd7384
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7384
                                                                        '()
                                                                        (letrec ((x7388
                                                                                  (letrec ((x7389
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7389)))
                                                                                 (x7385
                                                                                  (letrec ((x7387
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7386
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7387
                                                                                     k
                                                                                     j
                                                                                     x7386))))
                                                                          (orig-cons
                                                                           x7388
                                                                           x7385))))))
                                                            g7383))))
                                                g7382)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7390 #t)) g7390)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7391
                                                        (letrec ((x7392
                                                                  (= v 0)))
                                                          (not x7392))))
                                                g7391)))
                                           (nonzero?/c
                                            (lambda (g7284 g7285 g7286)
                                              (letrec ((g7393
                                                        (letrec ((x-cnd7394
                                                                  ((lambda (v)
                                                                     (letrec ((g7395
                                                                               (letrec ((x7396
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7396))))
                                                                       g7395))
                                                                   g7286)))
                                                          (if x-cnd7394
                                                            g7286
                                                            (blame
                                                             g7284
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7393)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7397 v)) g7397)))
                                           (+
                                            ((lambda (j7289 k7290 f7291)
                                               (letrec ((g7399
                                                         (lambda (g7287 g7288)
                                                           (letrec ((g7400
                                                                     (letrec ((x7401
                                                                               (letrec ((x7403
                                                                                         (number?/c
                                                                                          j7289
                                                                                          k7290
                                                                                          g7287))
                                                                                        (x7402
                                                                                         (number?/c
                                                                                          j7289
                                                                                          k7290
                                                                                          g7288)))
                                                                                 (f7291
                                                                                  x7403
                                                                                  x7402))))
                                                                       (number?/c
                                                                        j7289
                                                                        k7290
                                                                        x7401))))
                                                             g7400))))
                                                 g7399))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7398 (orig-+ a b)))
                                                 g7398))))
                                           (-
                                            ((lambda (j7294 k7295 f7296)
                                               (letrec ((g7405
                                                         (lambda (g7292 g7293)
                                                           (letrec ((g7406
                                                                     (letrec ((x7407
                                                                               (letrec ((x7409
                                                                                         (number?/c
                                                                                          j7294
                                                                                          k7295
                                                                                          g7292))
                                                                                        (x7408
                                                                                         (number?/c
                                                                                          j7294
                                                                                          k7295
                                                                                          g7293)))
                                                                                 (f7296
                                                                                  x7409
                                                                                  x7408))))
                                                                       (number?/c
                                                                        j7294
                                                                        k7295
                                                                        x7407))))
                                                             g7406))))
                                                 g7405))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7404 (orig-- a b)))
                                                 g7404))))
                                           (*
                                            ((lambda (j7299 k7300 f7301)
                                               (letrec ((g7411
                                                         (lambda (g7297 g7298)
                                                           (letrec ((g7412
                                                                     (letrec ((x7413
                                                                               (letrec ((x7415
                                                                                         (number?/c
                                                                                          j7299
                                                                                          k7300
                                                                                          g7297))
                                                                                        (x7414
                                                                                         (number?/c
                                                                                          j7299
                                                                                          k7300
                                                                                          g7298)))
                                                                                 (f7301
                                                                                  x7415
                                                                                  x7414))))
                                                                       (number?/c
                                                                        j7299
                                                                        k7300
                                                                        x7413))))
                                                             g7412))))
                                                 g7411))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7410 (orig-* a b)))
                                                 g7410))))
                                           (/
                                            ((lambda (j7304 k7305 f7306)
                                               (letrec ((g7417
                                                         (lambda (g7302 g7303)
                                                           (letrec ((g7418
                                                                     (letrec ((x7419
                                                                               (letrec ((x7421
                                                                                         (number?/c
                                                                                          j7304
                                                                                          k7305
                                                                                          g7302))
                                                                                        (x7420
                                                                                         (number?/c
                                                                                          j7304
                                                                                          k7305
                                                                                          g7303)))
                                                                                 (f7306
                                                                                  x7421
                                                                                  x7420))))
                                                                       (number?/c
                                                                        j7304
                                                                        k7305
                                                                        x7419))))
                                                             g7418))))
                                                 g7417))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7416 (orig-/ a b)))
                                                 g7416))))
                                           (car
                                            ((lambda (j7308 k7309 f7310)
                                               (letrec ((g7423
                                                         (lambda (g7307)
                                                           (letrec ((g7424
                                                                     (letrec ((x7425
                                                                               (letrec ((x7426
                                                                                         (pair?/c
                                                                                          j7308
                                                                                          k7309
                                                                                          g7307)))
                                                                                 (f7310
                                                                                  x7426))))
                                                                       (any/c
                                                                        j7308
                                                                        k7309
                                                                        x7425))))
                                                             g7424))))
                                                 g7423))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7422 (orig-car p)))
                                                 g7422))))
                                           (cdr
                                            ((lambda (j7312 k7313 f7314)
                                               (letrec ((g7428
                                                         (lambda (g7311)
                                                           (letrec ((g7429
                                                                     (letrec ((x7430
                                                                               (letrec ((x7431
                                                                                         (pair?/c
                                                                                          j7312
                                                                                          k7313
                                                                                          g7311)))
                                                                                 (f7314
                                                                                  x7431))))
                                                                       (any/c
                                                                        j7312
                                                                        k7313
                                                                        x7430))))
                                                             g7429))))
                                                 g7428))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7427 (orig-cdr p)))
                                                 g7427))))
                                           (cons
                                            ((lambda (j7317 k7318 f7319)
                                               (letrec ((g7433
                                                         (lambda (g7315 g7316)
                                                           (letrec ((g7434
                                                                     (letrec ((x7435
                                                                               (letrec ((x7437
                                                                                         (any/c
                                                                                          j7317
                                                                                          k7318
                                                                                          g7315))
                                                                                        (x7436
                                                                                         (any/c
                                                                                          j7317
                                                                                          k7318
                                                                                          g7316)))
                                                                                 (f7319
                                                                                  x7437
                                                                                  x7436))))
                                                                       (pair?/c
                                                                        j7317
                                                                        k7318
                                                                        x7435))))
                                                             g7434))))
                                                 g7433))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7432
                                                         (orig-cons a b)))
                                                 g7432))))
                                           (vector-ref
                                            ((lambda (j7321 k7322 f7323)
                                               (letrec ((g7439
                                                         (lambda (g7320)
                                                           (letrec ((g7440
                                                                     (letrec ((x7441
                                                                               (letrec ((x7442
                                                                                         (vector?/c
                                                                                          j7321
                                                                                          k7322
                                                                                          g7320)))
                                                                                 (f7323
                                                                                  x7442))))
                                                                       (integer?/c
                                                                        j7321
                                                                        k7322
                                                                        x7441))))
                                                             g7440))))
                                                 g7439))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7438
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7438))))
                                           (vector-set!
                                            ((lambda (j7326 k7327 f7328)
                                               (letrec ((g7444
                                                         (lambda (g7324 g7325)
                                                           (letrec ((g7445
                                                                     (letrec ((x7446
                                                                               (letrec ((x7448
                                                                                         (vector?/c
                                                                                          j7326
                                                                                          k7327
                                                                                          g7324))
                                                                                        (x7447
                                                                                         (integer?/c
                                                                                          j7326
                                                                                          k7327
                                                                                          g7325)))
                                                                                 (f7328
                                                                                  x7448
                                                                                  x7447))))
                                                                       (any/c
                                                                        j7326
                                                                        k7327
                                                                        x7446))))
                                                             g7445))))
                                                 g7444))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7443
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7443))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7449
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7449)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7450
                                                        (letrec ((x7451
                                                                  (letrec ((x7452
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7452))))
                                                          (cdr x7451))))
                                                g7450)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7453
                                                        (letrec ((x7456
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7456)))
                                                       (g7454
                                                        (letrec ((x7457
                                                                  (list? l)))
                                                          (assert x7457)))
                                                       (g7455
                                                        (letrec ((x-cnd7458
                                                                  (null? l)))
                                                          (if x-cnd7458
                                                            '()
                                                            (letrec ((x7461
                                                                      (letrec ((x7462
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7462)))
                                                                     (x7459
                                                                      (letrec ((x7460
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7460))))
                                                              (cons
                                                               x7461
                                                               x7459))))))
                                                g7455)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7463
                                                        (letrec ((x7464
                                                                  (car x)))
                                                          (cdr x7464))))
                                                g7463)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7465
                                                        (letrec ((x7466
                                                                  (letrec ((x7467
                                                                            (letrec ((x7468
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7468))))
                                                                    (cdr
                                                                     x7467))))
                                                          (car x7466))))
                                                g7465)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7469
                                                        (letrec ((x7470
                                                                  (letrec ((x7471
                                                                            (letrec ((x7472
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7472))))
                                                                    (car
                                                                     x7471))))
                                                          (cdr x7470))))
                                                g7469)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7473
                                                        (letrec ((x7476
                                                                  (string?
                                                                   filename)))
                                                          (assert x7476)))
                                                       (g7474
                                                        (letrec ((x7477
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7477)))
                                                       (g7475
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7478
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7479 res))
                                                            g7479))))
                                                g7475)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7480
                                                        (letrec ((x7481
                                                                  (letrec ((x7482
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7482))))
                                                          (car x7481))))
                                                g7480)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7483
                                                        (letrec ((x7484
                                                                  (letrec ((x7485
                                                                            (letrec ((x7486
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7486))))
                                                                    (car
                                                                     x7485))))
                                                          (cdr x7484))))
                                                g7483)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7487
                                                        (letrec ((x7489
                                                                  (list? l)))
                                                          (assert x7489)))
                                                       (g7488
                                                        (letrec ((x-cnd7490
                                                                  (null? l)))
                                                          (if x-cnd7490
                                                            #f
                                                            (letrec ((x-cnd7491
                                                                      (letrec ((x7492
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7492
                                                                         k))))
                                                              (if x-cnd7491
                                                                (car l)
                                                                (letrec ((x7493
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7493))))))))
                                                g7488)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7494
                                                        (letrec ((x7495
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7495))))
                                                g7494)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7496
                                                        (letrec ((x7498
                                                                  (list? l)))
                                                          (assert x7498)))
                                                       (g7497
                                                        (letrec ((x-cnd7499
                                                                  (null? l)))
                                                          (if x-cnd7499
                                                            ""
                                                            (letrec ((x7502
                                                                      (letrec ((x7503
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7503)))
                                                                     (x7500
                                                                      (letrec ((x7501
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7501))))
                                                              (string-append
                                                               x7502
                                                               x7500))))))
                                                g7497)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7504
                                                        (letrec ((x7507
                                                                  (char? c1)))
                                                          (assert x7507)))
                                                       (g7505
                                                        (letrec ((x7508
                                                                  (char? c2)))
                                                          (assert x7508)))
                                                       (g7506
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7509
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7509))))
                                                g7506)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7510
                                                        (letrec ((x7511
                                                                  (letrec ((x7512
                                                                            (letrec ((x7513
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7513))))
                                                                    (cdr
                                                                     x7512))))
                                                          (cdr x7511))))
                                                g7510)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7514
                                                        (letrec ((x7517
                                                                  (list? l)))
                                                          (assert x7517)))
                                                       (g7515
                                                        (letrec ((x7518
                                                                  (number?)))
                                                          (assert x7518)))
                                                       (g7516
                                                        (letrec ((x-cnd7519
                                                                  (zero? k)))
                                                          (if x-cnd7519
                                                            x
                                                            (letrec ((x7521
                                                                      (cdr x))
                                                                     (x7520
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7521
                                                               x7520))))))
                                                g7516)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7522 '())) g7522)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7523
                                                        (letrec ((x-cnd7524
                                                                  (letrec ((x7525
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7525))))
                                                          (if x-cnd7524
                                                            (letrec ((x7526
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7526))
                                                            #f))))
                                                g7523)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7527
                                                        (letrec ((x7529
                                                                  (number? x)))
                                                          (assert x7529)))
                                                       (g7528
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7530
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7531
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7531)))))
                                                            g7530))))
                                                g7528)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7532
                                                        (letrec ((val7244
                                                                  (letrec ((x7533
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7533
                                                                     9))))
                                                          (letrec ((g7534
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7535
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7535
                                                                                   10))))
                                                                        (letrec ((g7536
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7537
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7537
                                                                                       32)))))
                                                                          g7536)))))
                                                            g7534))))
                                                g7532)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7538
                                                        (letrec ((x7539
                                                                  (letrec ((x7540
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7540))))
                                                          (cdr x7539))))
                                                g7538)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7541
                                                        (letrec ((x7543
                                                                  (number? x)))
                                                          (assert x7543)))
                                                       (g7542 (> x 0)))
                                                g7542)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7544 #f)) g7544)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7545
                                                        (letrec ((x7546
                                                                  (cdr x)))
                                                          (cdr x7546))))
                                                g7545)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7547
                                                        (letrec ((x7549
                                                                  (number? x)))
                                                          (assert x7549)))
                                                       (g7548
                                                        (letrec ((x-cnd7550
                                                                  (< x 0)))
                                                          (if x-cnd7550
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7548)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7551
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7552
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x7554
                                                                                          (null?
                                                                                           a))
                                                                                         (x7553
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7554
                                                                                       x7553))))
                                                                        (letrec ((g7555
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x7558
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7557
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7556
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7558
                                                                                                     x7557
                                                                                                     x7556))))
                                                                                      (letrec ((g7559
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x7567
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7566
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7563
                                                                                                                      (letrec ((x7565
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7564
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7565
                                                                                                                         x7564)))
                                                                                                                     (x7560
                                                                                                                      (letrec ((x7562
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7561
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7562
                                                                                                                         x7561))))
                                                                                                              (and x7567
                                                                                                                   x7566
                                                                                                                   x7563
                                                                                                                   x7560))))
                                                                                                    (letrec ((g7568
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x7584
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7583
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7569
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7570
                                                                                                                                      (letrec ((x7581
                                                                                                                                                (letrec ((x7582
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7582
                                                                                                                                                   n)))
                                                                                                                                               (x7571
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7572
                                                                                                                                                                      (letrec ((x7579
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7573
                                                                                                                                                                                (letrec ((x7576
                                                                                                                                                                                          (letrec ((x7578
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7577
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7578
                                                                                                                                                                                             x7577)))
                                                                                                                                                                                         (x7574
                                                                                                                                                                                          (letrec ((x7575
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7575))))
                                                                                                                                                                                  (and x7576
                                                                                                                                                                                       x7574))))
                                                                                                                                                                        (or x7579
                                                                                                                                                                            x7573))))
                                                                                                                                                              g7572))))
                                                                                                                                                  (letrec ((g7580
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7580))))
                                                                                                                                        (and x7581
                                                                                                                                             x7571))))
                                                                                                                              g7570))))
                                                                                                                  (and x7584
                                                                                                                       x7583
                                                                                                                       x7569)))))
                                                                                                      g7568)))))
                                                                                        g7559)))))
                                                                          g7555)))))
                                                            g7552))))
                                                g7551)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7585
                                                        (letrec ((x7586
                                                                  (letrec ((x7587
                                                                            (letrec ((x7588
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7588))))
                                                                    (car
                                                                     x7587))))
                                                          (cdr x7586))))
                                                g7585)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7589
                                                        (letrec ((x7590
                                                                  (letrec ((x7591
                                                                            (letrec ((x7592
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7592))))
                                                                    (car
                                                                     x7591))))
                                                          (car x7590))))
                                                g7589)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7593 (eq? x y)))
                                                g7593)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7594
                                                        (letrec ((x7596
                                                                  (number? x)))
                                                          (assert x7596)))
                                                       (g7595
                                                        (letrec ((val7250
                                                                  (> x y)))
                                                          (letrec ((g7597
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7598
                                                                                  (if val7251
                                                                                    val7251
                                                                                    #f)))
                                                                          g7598)))))
                                                            g7597))))
                                                g7595)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7599
                                                        (letrec ((x7602
                                                                  (string?
                                                                   filename)))
                                                          (assert x7602)))
                                                       (g7600
                                                        (letrec ((x7603
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7603)))
                                                       (g7601
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7604
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7605 res))
                                                            g7605))))
                                                g7601)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7606 (cons x '())))
                                                g7606)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7607
                                                        (letrec ((x7610
                                                                  (char? c1)))
                                                          (assert x7610)))
                                                       (g7608
                                                        (letrec ((x7611
                                                                  (char? c2)))
                                                          (assert x7611)))
                                                       (g7609
                                                        (letrec ((val7252
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7612
                                                                    (if val7252
                                                                      val7252
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7612))))
                                                g7609)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7613
                                                        (letrec ((x7614
                                                                  (letrec ((x7615
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7615))))
                                                          (cdr x7614))))
                                                g7613)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7616
                                                        (letrec ((x7617
                                                                  (letrec ((x7618
                                                                            (letrec ((x7619
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7619))))
                                                                    (car
                                                                     x7618))))
                                                          (cdr x7617))))
                                                g7616)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7620
                                                        (letrec ((x7621
                                                                  (letrec ((x7622
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7622))))
                                                          (car x7621))))
                                                g7620)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7623
                                                        (letrec ((x7624
                                                                  (letrec ((x7625
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7625))))
                                                          (car x7624))))
                                                g7623)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7626
                                                        (letrec ((x7629
                                                                  (char? c1)))
                                                          (assert x7629)))
                                                       (g7627
                                                        (letrec ((x7630
                                                                  (char? c2)))
                                                          (assert x7630)))
                                                       (g7628
                                                        (letrec ((x7631
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7631))))
                                                g7628)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7632
                                                        (letrec ((x7633
                                                                  (letrec ((x7634
                                                                            (letrec ((x7635
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7635))))
                                                                    (car
                                                                     x7634))))
                                                          (car x7633))))
                                                g7632)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7636
                                                        (letrec ((x7638
                                                                  (number? x)))
                                                          (assert x7638)))
                                                       (g7637 (< x 0)))
                                                g7637)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7639 (memq e l)))
                                                g7639)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7640
                                                        (letrec ((x7641
                                                                  (letrec ((x7642
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7642))))
                                                          (car x7641))))
                                                g7640)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7643 '())) g7643)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7644
                                                        (letrec ((x7646
                                                                  (list? l)))
                                                          (assert x7646)))
                                                       (g7645
                                                        (letrec ((x-cnd7647
                                                                  (null? l)))
                                                          (if x-cnd7647
                                                            '()
                                                            (letrec ((x7650
                                                                      (letrec ((x7651
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7651)))
                                                                     (x7648
                                                                      (letrec ((x7649
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7649))))
                                                              (append
                                                               x7650
                                                               x7648))))))
                                                g7645)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7652
                                                        (letrec ((x7653
                                                                  (letrec ((x7654
                                                                            (letrec ((x7655
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7655))))
                                                                    (car
                                                                     x7654))))
                                                          (car x7653))))
                                                g7652)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7656
                                                        (letrec ((x7657
                                                                  (letrec ((x7658
                                                                            (letrec ((x7659
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7659))))
                                                                    (cdr
                                                                     x7658))))
                                                          (cdr x7657))))
                                                g7656)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7660
                                                        (letrec ((x7662
                                                                  (number? x)))
                                                          (assert x7662)))
                                                       (g7661
                                                        (letrec ((x7663
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7663))))
                                                g7661)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7664
                                                        (letrec ((x7665
                                                                  (letrec ((x7666
                                                                            (letrec ((x7667
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7667))))
                                                                    (car
                                                                     x7666))))
                                                          (car x7665))))
                                                g7664)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7668
                                                        (letrec ((x7671
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7671)))
                                                       (g7669
                                                        (letrec ((x7672
                                                                  (list?
                                                                   args)))
                                                          (assert x7672)))
                                                       (g7670
                                                        (letrec ((x-cnd7673
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7673
                                                            (letrec ((g7674
                                                                      (proc)))
                                                              g7674)
                                                            (letrec ((x-cnd7675
                                                                      (letrec ((x7676
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7676))))
                                                              (if x-cnd7675
                                                                (letrec ((g7677
                                                                          (letrec ((x7678
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7678))))
                                                                  g7677)
                                                                (letrec ((x-cnd7679
                                                                          (letrec ((x7680
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7680))))
                                                                  (if x-cnd7679
                                                                    (letrec ((g7681
                                                                              (letrec ((x7683
                                                                                        (car
                                                                                         args))
                                                                                       (x7682
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7683
                                                                                 x7682))))
                                                                      g7681)
                                                                    (letrec ((x-cnd7684
                                                                              (letrec ((x7685
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7685))))
                                                                      (if x-cnd7684
                                                                        (letrec ((g7686
                                                                                  (letrec ((x7689
                                                                                            (car
                                                                                             args))
                                                                                           (x7688
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7687
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7689
                                                                                     x7688
                                                                                     x7687))))
                                                                          g7686)
                                                                        (letrec ((x-cnd7690
                                                                                  (letrec ((x7691
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7691))))
                                                                          (if x-cnd7690
                                                                            (letrec ((g7692
                                                                                      (letrec ((x7696
                                                                                                (car
                                                                                                 args))
                                                                                               (x7695
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7694
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7693
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7696
                                                                                         x7695
                                                                                         x7694
                                                                                         x7693))))
                                                                              g7692)
                                                                            (letrec ((x-cnd7697
                                                                                      (letrec ((x7698
                                                                                                (letrec ((x7699
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7699))))
                                                                                        (null?
                                                                                         x7698))))
                                                                              (if x-cnd7697
                                                                                (letrec ((g7700
                                                                                          (letrec ((x7706
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7705
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7704
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7703
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7701
                                                                                                    (letrec ((x7702
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7702))))
                                                                                            (proc
                                                                                             x7706
                                                                                             x7705
                                                                                             x7704
                                                                                             x7703
                                                                                             x7701))))
                                                                                  g7700)
                                                                                (letrec ((x-cnd7707
                                                                                          (letrec ((x7708
                                                                                                    (letrec ((x7709
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7709))))
                                                                                            (null?
                                                                                             x7708))))
                                                                                  (if x-cnd7707
                                                                                    (letrec ((g7710
                                                                                              (letrec ((x7718
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7717
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7716
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7715
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7713
                                                                                                        (letrec ((x7714
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7714)))
                                                                                                       (x7711
                                                                                                        (letrec ((x7712
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7712))))
                                                                                                (proc
                                                                                                 x7718
                                                                                                 x7717
                                                                                                 x7716
                                                                                                 x7715
                                                                                                 x7713
                                                                                                 x7711))))
                                                                                      g7710)
                                                                                    (letrec ((x-cnd7719
                                                                                              (letrec ((x7720
                                                                                                        (letrec ((x7721
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7721))))
                                                                                                (null?
                                                                                                 x7720))))
                                                                                      (if x-cnd7719
                                                                                        (letrec ((g7722
                                                                                                  (letrec ((x7732
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7731
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7730
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7729
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7727
                                                                                                            (letrec ((x7728
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7728)))
                                                                                                           (x7725
                                                                                                            (letrec ((x7726
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7726)))
                                                                                                           (x7723
                                                                                                            (letrec ((x7724
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7724))))
                                                                                                    (proc
                                                                                                     x7732
                                                                                                     x7731
                                                                                                     x7730
                                                                                                     x7729
                                                                                                     x7727
                                                                                                     x7725
                                                                                                     x7723))))
                                                                                          g7722)
                                                                                        (letrec ((g7733
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7733)))))))))))))))))))
                                                g7670)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7734
                                                        (letrec ((x7736
                                                                  (list? l)))
                                                          (assert x7736)))
                                                       (g7735
                                                        (letrec ((x-cnd7737
                                                                  (null? l)))
                                                          (if x-cnd7737
                                                            #f
                                                            (letrec ((x-cnd7738
                                                                      (letrec ((x7739
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7739
                                                                         e))))
                                                              (if x-cnd7738
                                                                l
                                                                (letrec ((x7740
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7740))))))))
                                                g7735)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7741
                                                        (letrec ((x7742
                                                                  (letrec ((x7743
                                                                            (letrec ((x7744
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7744))))
                                                                    (cdr
                                                                     x7743))))
                                                          (cdr x7742))))
                                                g7741)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7745
                                                        (letrec ((x7746
                                                                  (letrec ((x7747
                                                                            (letrec ((x7748
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7748))))
                                                                    (cdr
                                                                     x7747))))
                                                          (car x7746))))
                                                g7745)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7749 (random 42)))
                                                g7749)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7750
                                                        (letrec ((x7752
                                                                  (number? x)))
                                                          (assert x7752)))
                                                       (g7751 (= x 0)))
                                                g7751)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7753
                                                        (letrec ((val7253
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7754
                                                                    (if val7253
                                                                      val7253
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7754))))
                                                g7753)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7755
                                                        (letrec ((x7756
                                                                  (cdr x)))
                                                          (car x7756))))
                                                g7755)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7757
                                                        (letrec ((val7254
                                                                  (letrec ((x7760
                                                                            (pair?
                                                                             l))
                                                                           (x7758
                                                                            (letrec ((x7759
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7759))))
                                                                    (and x7760
                                                                         x7758))))
                                                          (letrec ((g7761
                                                                    (if val7254
                                                                      val7254
                                                                      (null?
                                                                       l))))
                                                            g7761))))
                                                g7757)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7762
                                                        (letrec ((x7763
                                                                  (letrec ((x7764
                                                                            (letrec ((x7765
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7765))))
                                                                    (cdr
                                                                     x7764))))
                                                          (cdr x7763))))
                                                g7762)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7766
                                                        (letrec ((x-cnd7767
                                                                  (letrec ((x7768
                                                                            #\0))
                                                                    (char<=?
                                                                     x7768
                                                                     c))))
                                                          (if x-cnd7767
                                                            (letrec ((x7769
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7769))
                                                            #f))))
                                                g7766)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7770
                                                        (letrec ((x7772
                                                                  (list? l)))
                                                          (assert x7772)))
                                                       (g7771
                                                        (letrec ((x-cnd7773
                                                                  (null? l)))
                                                          (if x-cnd7773
                                                            #f
                                                            (letrec ((x-cnd7774
                                                                      (letrec ((x7775
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7775
                                                                         k))))
                                                              (if x-cnd7774
                                                                (car l)
                                                                (letrec ((x7776
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7776))))))))
                                                g7771)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7777 (if x #f #t)))
                                                g7777)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7778 (append l1 l2)))
                                                g7778)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7779
                                                        (letrec ((x7781
                                                                  (list? l)))
                                                          (assert x7781)))
                                                       (g7780
                                                        (letrec ((x-cnd7782
                                                                  (null? l)))
                                                          (if x-cnd7782
                                                            #f
                                                            (letrec ((x-cnd7783
                                                                      (letrec ((x7784
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7784
                                                                         e))))
                                                              (if x-cnd7783
                                                                l
                                                                (letrec ((x7785
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7785))))))))
                                                g7780)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7786
                                                        (letrec ((x7787
                                                                  (letrec ((x7788
                                                                            (letrec ((x7789
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7789))))
                                                                    (cdr
                                                                     x7788))))
                                                          (car x7787))))
                                                g7786)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7790
                                                        (letrec ((x7792
                                                                  (list? l)))
                                                          (assert x7792)))
                                                       (g7791
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7793
                                                                              (letrec ((x-cnd7794
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7794
                                                                                  0
                                                                                  (letrec ((x7795
                                                                                            (letrec ((x7796
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7796))))
                                                                                    (+
                                                                                     1
                                                                                     x7795))))))
                                                                      g7793))))
                                                          (letrec ((g7797
                                                                    (rec l)))
                                                            g7797))))
                                                g7791)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7798
                                                        (letrec ((x7801
                                                                  (char? c1)))
                                                          (assert x7801)))
                                                       (g7799
                                                        (letrec ((x7802
                                                                  (char? c2)))
                                                          (assert x7802)))
                                                       (g7800
                                                        (letrec ((val7255
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7803
                                                                    (if val7255
                                                                      val7255
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7803))))
                                                g7800)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7804
                                                        (letrec ((x7805
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7805))))
                                                g7804)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7806
                                                        (letrec ((x7807
                                                                  (letrec ((x7808
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7808))))
                                                          (cdr x7807))))
                                                g7806)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7809
                                                        (letrec ((x7811
                                                                  (list? l)))
                                                          (assert x7811)))
                                                       (g7810
                                                        (letrec ((x-cnd7812
                                                                  (null? l)))
                                                          (if x-cnd7812
                                                            #f
                                                            (letrec ((x-cnd7813
                                                                      (letrec ((x7814
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7814
                                                                         k))))
                                                              (if x-cnd7813
                                                                (car l)
                                                                (letrec ((x7815
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7815))))))))
                                                g7810)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7816
                                                        (letrec ((x7817
                                                                  (car x)))
                                                          (car x7817))))
                                                g7816)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7818
                                                        (letrec ((x7821
                                                                  (char? c1)))
                                                          (assert x7821)))
                                                       (g7819
                                                        (letrec ((x7822
                                                                  (char? c2)))
                                                          (assert x7822)))
                                                       (g7820
                                                        (letrec ((x7823
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7823))))
                                                g7820)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7824
                                                        (letrec ((val7256
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7825
                                                                    (if val7256
                                                                      val7256
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7825))))
                                                g7824)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7826
                                                        (letrec ((x7829
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7829)))
                                                       (g7827
                                                        (letrec ((x7830
                                                                  (list? l)))
                                                          (assert x7830)))
                                                       (g7828
                                                        (letrec ((x-cnd7831
                                                                  (null? l)))
                                                          (if x-cnd7831
                                                            #t
                                                            (letrec ((x-cnd7832
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7832
                                                                (letrec ((g7833
                                                                          (letrec ((x7835
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7835)))
                                                                         (g7834
                                                                          (letrec ((x7836
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7836))))
                                                                  g7834)
                                                                '()))))))
                                                g7828)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7837
                                                        (letrec ((x7839
                                                                  (number? x)))
                                                          (assert x7839)))
                                                       (g7838
                                                        (letrec ((x-cnd7840
                                                                  (< x 0)))
                                                          (if x-cnd7840
                                                            (- 0 x)
                                                            x))))
                                                g7838)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7841
                                                        (letrec ((x7844
                                                                  (char? c1)))
                                                          (assert x7844)))
                                                       (g7842
                                                        (letrec ((x7845
                                                                  (char? c2)))
                                                          (assert x7845)))
                                                       (g7843
                                                        (letrec ((val7257
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7846
                                                                    (if val7257
                                                                      val7257
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7846))))
                                                g7843)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7847
                                                        (letrec ((x7848
                                                                  (letrec ((x7849
                                                                            (letrec ((x7850
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7850))))
                                                                    (cdr
                                                                     x7849))))
                                                          (car x7848))))
                                                g7847)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7851 #f)) g7851)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7852
                                                        (letrec ((x7854
                                                                  (letrec ((x7855
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7855)))
                                                                 (x7853
                                                                  (gcd m n)))
                                                          (/ x7854 x7853))))
                                                g7852)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7856
                                                        (letrec ((x7858
                                                                  (number? x)))
                                                          (assert x7858)))
                                                       (g7857
                                                        (letrec ((x7859
                                                                  (<= x y)))
                                                          (not x7859))))
                                                g7857)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7860
                                                        (letrec ((x7864
                                                                  (list? l)))
                                                          (assert x7864)))
                                                       (g7861
                                                        (letrec ((x7865
                                                                  (number?
                                                                   index)))
                                                          (assert x7865)))
                                                       (g7862
                                                        (letrec ((x7866
                                                                  (letrec ((x7867
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7867))))
                                                          (assert x7866)))
                                                       (g7863
                                                        (letrec ((x-cnd7868
                                                                  (= index 0)))
                                                          (if x-cnd7868
                                                            (car l)
                                                            (letrec ((x7870
                                                                      (cdr l))
                                                                     (x7869
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7870
                                                               x7869))))))
                                                g7863)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7871
                                                        (letrec ((x-cnd7872
                                                                  (= b 0)))
                                                          (if x-cnd7872
                                                            a
                                                            (letrec ((x7873
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7873))))))
                                                g7871)))
                                           (mk-list
                                            (lambda (n x)
                                              (letrec ((g7874
                                                        (letrec ((x-cnd7875
                                                                  (< n 0)))
                                                          (if x-cnd7875
                                                            empty
                                                            (letrec ((x7876
                                                                      (letrec ((x7877
                                                                                (-
                                                                                 n
                                                                                 1)))
                                                                        (mk-list
                                                                         x7877
                                                                         x))))
                                                              (cons
                                                               x
                                                               x7876))))))
                                                g7874)))
                                           (mem
                                            (lambda (x xs)
                                              (letrec ((g7878
                                                        (letrec ((x-cnd7879
                                                                  (empty? xs)))
                                                          (if x-cnd7879
                                                            #f
                                                            (letrec ((val7258
                                                                      (letrec ((x7880
                                                                                (car
                                                                                 xs)))
                                                                        (=
                                                                         x
                                                                         x7880))))
                                                              (letrec ((g7881
                                                                        (if val7258
                                                                          val7258
                                                                          (letrec ((x7882
                                                                                    (cdr
                                                                                     xs)))
                                                                            (mem
                                                                             x
                                                                             x7882)))))
                                                                g7881))))))
                                                g7878))))
                                    (letrec ((g7883
                                              ((lambda (j7331 k7332 f7333)
                                                 (letrec ((g7885
                                                           (lambda (g7329
                                                                    g7330)
                                                             (letrec ((g7886
                                                                       (letrec ((x7334
                                                                                 (integer?/c
                                                                                  j7331
                                                                                  k7332
                                                                                  g7329))
                                                                                (x7335
                                                                                 (integer?/c
                                                                                  j7331
                                                                                  k7332
                                                                                  g7330)))
                                                                         (letrec ((g7887
                                                                                   (letrec ((x7889
                                                                                             ((lambda (_
                                                                                                       x)
                                                                                                (letrec ((g7890
                                                                                                          (letrec ((x7895
                                                                                                                    (listof
                                                                                                                     integer?/c)))
                                                                                                            (and/c
                                                                                                             x7895
                                                                                                             (lambda (g7336
                                                                                                                      g7337
                                                                                                                      g7338)
                                                                                                               (letrec ((g7891
                                                                                                                         (letrec ((x-cnd7892
                                                                                                                                   ((lambda (l)
                                                                                                                                      (letrec ((g7893
                                                                                                                                                (letrec ((val7259
                                                                                                                                                          (empty?
                                                                                                                                                           l)))
                                                                                                                                                  (letrec ((g7894
                                                                                                                                                            (if val7259
                                                                                                                                                              val7259
                                                                                                                                                              (member
                                                                                                                                                               x
                                                                                                                                                               l))))
                                                                                                                                                    g7894))))
                                                                                                                                        g7893))
                                                                                                                                    g7338)))
                                                                                                                           (if x-cnd7892
                                                                                                                             g7338
                                                                                                                             (blame
                                                                                                                              g7336
                                                                                                                              '(lambda (l)
                                                                                                                                 (letrec ((val7259
                                                                                                                                           (empty?
                                                                                                                                            l)))
                                                                                                                                   (if val7259
                                                                                                                                     val7259
                                                                                                                                     (member
                                                                                                                                      x
                                                                                                                                      l)))))))))
                                                                                                                 g7891))))))
                                                                                                  g7890))
                                                                                              x7334
                                                                                              x7335))
                                                                                            (x7888
                                                                                             (f7333
                                                                                              x7334
                                                                                              x7335)))
                                                                                     (x7889
                                                                                      j7331
                                                                                      k7332
                                                                                      x7888))))
                                                                           g7887))))
                                                               g7886))))
                                                   g7885))
                                               'module
                                               'importer
                                               mk-list))
                                             (g7884
                                              (letrec ((x7898
                                                        ((lambda (j7341
                                                                  k7342
                                                                  f7343)
                                                           (letrec ((g7899
                                                                     (lambda (g7339
                                                                              g7340)
                                                                       (letrec ((g7900
                                                                                 (letrec ((x7901
                                                                                           (letrec ((x7904
                                                                                                     (integer?/c
                                                                                                      j7341
                                                                                                      k7342
                                                                                                      g7339))
                                                                                                    (x7902
                                                                                                     (letrec ((x7903
                                                                                                               (listof
                                                                                                                integer?/c)))
                                                                                                       (x7903
                                                                                                        j7341
                                                                                                        k7342
                                                                                                        g7340))))
                                                                                             (f7343
                                                                                              x7904
                                                                                              x7902))))
                                                                                   (boolean?/c
                                                                                    j7341
                                                                                    k7342
                                                                                    x7901))))
                                                                         g7900))))
                                                             g7899))
                                                         'module
                                                         'importer
                                                         mem))
                                                       (x7897 (input))
                                                       (x7896 (input)))
                                                (x7898 x7897 x7896))))
                                      g7884))))
                          g7357))))
              g7355)))
    g7354))
