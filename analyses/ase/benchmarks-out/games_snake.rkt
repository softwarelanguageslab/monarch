(letrec ((any? (lambda (v) (letrec ((g7454 #t)) g7454)))
         (meta (lambda (v) (letrec ((g7455 v)) g7455)))
         (member
          (lambda (v lst)
            (letrec ((g7456
                      (letrec ((g7457
                                (letrec ((x-e7458 lst))
                                  (match
                                   x-e7458
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7459 (eq? v v1)))
                                       (if x-cnd7459 #t (member v vs)))))))))
                        g7457)))
              g7456)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7460 (lambda (v) (letrec ((g7461 v)) g7461)))) g7460)))
         (nonzero?
          (lambda (v)
            (letrec ((g7462 (letrec ((x7463 (= v 0))) (not x7463)))) g7462))))
  (letrec ((g7464
            (letrec ((g7465
                      (letrec ((assert
                                (lambda (cnd)
                                  (letrec ((g7466
                                            (if cnd
                                              '()
                                              (error "assertion failed"))))
                                    g7466)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7467
                                            (letrec ((x7469 (number? x)))
                                              (assert x7469)))
                                           (g7468
                                            (letrec ((val7244 (> x y)))
                                              (letrec ((g7470
                                                        (if val7244
                                                          val7244
                                                          (letrec ((val7245
                                                                    (= x y)))
                                                            (letrec ((g7471
                                                                      (if val7245
                                                                        val7245
                                                                        #f)))
                                                              g7471)))))
                                                g7470))))
                                    g7468)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7472
                                            (letrec ((x7474 (number? x)))
                                              (assert x7474)))
                                           (g7473
                                            (letrec ((val7246 (< x y)))
                                              (letrec ((g7475
                                                        (if val7246
                                                          val7246
                                                          (letrec ((val7247
                                                                    (= x y)))
                                                            (letrec ((g7476
                                                                      (if val7247
                                                                        val7247
                                                                        #f)))
                                                              g7476)))))
                                                g7475))))
                                    g7473)))
                               (>
                                (lambda (x y)
                                  (letrec ((g7477
                                            (letrec ((x7479 (number? x)))
                                              (assert x7479)))
                                           (g7478
                                            (letrec ((x7480 (<= x y)))
                                              (not x7480))))
                                    g7478)))
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
                        (letrec ((g7481 '())
                                 (g7482
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7483
                                                        (lambda (k j lst)
                                                          (letrec ((g7484
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7485
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7485))
                                                                     lst)))
                                                            g7484))))
                                                g7483)))
                                           (real?/c
                                            (lambda (g7266 g7267 g7268)
                                              (letrec ((g7486
                                                        (letrec ((x-cnd7487
                                                                  (real?
                                                                   g7268)))
                                                          (if x-cnd7487
                                                            g7268
                                                            (blame
                                                             g7266
                                                             'real?)))))
                                                g7486)))
                                           (boolean?/c
                                            (lambda (g7269 g7270 g7271)
                                              (letrec ((g7488
                                                        (letrec ((x-cnd7489
                                                                  (boolean?
                                                                   g7271)))
                                                          (if x-cnd7489
                                                            g7271
                                                            (blame
                                                             g7269
                                                             'boolean?)))))
                                                g7488)))
                                           (number?/c
                                            (lambda (g7272 g7273 g7274)
                                              (letrec ((g7490
                                                        (letrec ((x-cnd7491
                                                                  (number?
                                                                   g7274)))
                                                          (if x-cnd7491
                                                            g7274
                                                            (blame
                                                             g7272
                                                             'number?)))))
                                                g7490)))
                                           (any/c
                                            (lambda (g7275 g7276 g7277)
                                              (letrec ((g7492
                                                        (letrec ((x-cnd7493
                                                                  ((lambda (v)
                                                                     (letrec ((g7494
                                                                               #t))
                                                                       g7494))
                                                                   g7277)))
                                                          (if x-cnd7493
                                                            g7277
                                                            (blame
                                                             g7275
                                                             '(lambda (v)
                                                                #t))))))
                                                g7492)))
                                           (any?/c
                                            (lambda (g7278 g7279 g7280)
                                              (letrec ((g7495
                                                        (letrec ((x-cnd7496
                                                                  ((lambda (v)
                                                                     (letrec ((g7497
                                                                               #t))
                                                                       g7497))
                                                                   g7280)))
                                                          (if x-cnd7496
                                                            g7280
                                                            (blame
                                                             g7278
                                                             '(lambda (v)
                                                                #t))))))
                                                g7495)))
                                           (cons?/c
                                            (lambda (g7281 g7282 g7283)
                                              (letrec ((g7498
                                                        (letrec ((x-cnd7499
                                                                  (pair?
                                                                   g7283)))
                                                          (if x-cnd7499
                                                            g7283
                                                            (blame
                                                             g7281
                                                             'pair?)))))
                                                g7498)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7284 g7285 g7286)
                                              (letrec ((g7500
                                                        (letrec ((x-cnd7501
                                                                  (pair?
                                                                   g7286)))
                                                          (if x-cnd7501
                                                            g7286
                                                            (blame
                                                             g7284
                                                             'pair?)))))
                                                g7500)))
                                           (integer?/c
                                            (lambda (g7287 g7288 g7289)
                                              (letrec ((g7502
                                                        (letrec ((x-cnd7503
                                                                  (integer?
                                                                   g7289)))
                                                          (if x-cnd7503
                                                            g7289
                                                            (blame
                                                             g7287
                                                             'integer?)))))
                                                g7502)))
                                           (symbol?/c
                                            (lambda (g7290 g7291 g7292)
                                              (letrec ((g7504
                                                        (letrec ((x-cnd7505
                                                                  (symbol?
                                                                   g7292)))
                                                          (if x-cnd7505
                                                            g7292
                                                            (blame
                                                             g7290
                                                             'symbol?)))))
                                                g7504)))
                                           (string?/c
                                            (lambda (g7293 g7294 g7295)
                                              (letrec ((g7506
                                                        (letrec ((x-cnd7507
                                                                  (string?
                                                                   g7295)))
                                                          (if x-cnd7507
                                                            g7295
                                                            (blame
                                                             g7293
                                                             'string?)))))
                                                g7506)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7508
                                                        (lambda (k j v)
                                                          (letrec ((g7509
                                                                    (letrec ((x-cnd7510
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7510
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7509))))
                                                g7508)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7511
                                                        (lambda (k j v)
                                                          (letrec ((g7512
                                                                    (letrec ((x-cnd7513
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7513
                                                                        '()
                                                                        (letrec ((x7517
                                                                                  (letrec ((x7518
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7518)))
                                                                                 (x7514
                                                                                  (letrec ((x7516
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7515
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7516
                                                                                     k
                                                                                     j
                                                                                     x7515))))
                                                                          (orig-cons
                                                                           x7517
                                                                           x7514))))))
                                                            g7512))))
                                                g7511)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7519 #t)) g7519)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7520
                                                        (letrec ((x7521
                                                                  (= v 0)))
                                                          (not x7521))))
                                                g7520)))
                                           (nonzero?/c
                                            (lambda (g7296 g7297 g7298)
                                              (letrec ((g7522
                                                        (letrec ((x-cnd7523
                                                                  ((lambda (v)
                                                                     (letrec ((g7524
                                                                               (letrec ((x7525
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7525))))
                                                                       g7524))
                                                                   g7298)))
                                                          (if x-cnd7523
                                                            g7298
                                                            (blame
                                                             g7296
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7522)))
                                           (>=/c
                                            (lambda (n)
                                              (letrec ((g7526
                                                        (lambda (g7299
                                                                 g7300
                                                                 g7301)
                                                          (letrec ((g7527
                                                                    (letrec ((x-cnd7528
                                                                              ((lambda (v)
                                                                                 (letrec ((g7529
                                                                                           (orig->=
                                                                                            v
                                                                                            n)))
                                                                                   g7529))
                                                                               g7301)))
                                                                      (if x-cnd7528
                                                                        g7301
                                                                        (blame
                                                                         g7299
                                                                         '(lambda (v)
                                                                            (orig->=
                                                                             v
                                                                             n)))))))
                                                            g7527))))
                                                g7526)))
                                           (>/c
                                            (lambda (n)
                                              (letrec ((g7530
                                                        (lambda (g7302
                                                                 g7303
                                                                 g7304)
                                                          (letrec ((g7531
                                                                    (letrec ((x-cnd7532
                                                                              ((lambda (v)
                                                                                 (letrec ((g7533
                                                                                           (orig->
                                                                                            v
                                                                                            n)))
                                                                                   g7533))
                                                                               g7304)))
                                                                      (if x-cnd7532
                                                                        g7304
                                                                        (blame
                                                                         g7302
                                                                         '(lambda (v)
                                                                            (orig->
                                                                             v
                                                                             n)))))))
                                                            g7531))))
                                                g7530)))
                                           (</c
                                            (lambda (n)
                                              (letrec ((g7534
                                                        (lambda (g7305
                                                                 g7306
                                                                 g7307)
                                                          (letrec ((g7535
                                                                    (letrec ((x-cnd7536
                                                                              ((lambda (v)
                                                                                 (letrec ((g7537
                                                                                           (orig-<
                                                                                            v
                                                                                            n)))
                                                                                   g7537))
                                                                               g7307)))
                                                                      (if x-cnd7536
                                                                        g7307
                                                                        (blame
                                                                         g7305
                                                                         '(lambda (v)
                                                                            (orig-<
                                                                             v
                                                                             n)))))))
                                                            g7535))))
                                                g7534)))
                                           (<=/c
                                            (lambda (n)
                                              (letrec ((g7538
                                                        (lambda (g7308
                                                                 g7309
                                                                 g7310)
                                                          (letrec ((g7539
                                                                    (letrec ((x-cnd7540
                                                                              ((lambda (v)
                                                                                 (letrec ((g7541
                                                                                           (orig-<=
                                                                                            v
                                                                                            n)))
                                                                                   g7541))
                                                                               g7310)))
                                                                      (if x-cnd7540
                                                                        g7310
                                                                        (blame
                                                                         g7308
                                                                         '(lambda (v)
                                                                            (orig-<=
                                                                             v
                                                                             n)))))))
                                                            g7539))))
                                                g7538)))
                                           (=/c
                                            (lambda (n)
                                              (letrec ((g7542
                                                        (lambda (g7311
                                                                 g7312
                                                                 g7313)
                                                          (letrec ((g7543
                                                                    (letrec ((x-cnd7544
                                                                              ((lambda (v)
                                                                                 (letrec ((g7545
                                                                                           (orig-=
                                                                                            v
                                                                                            n)))
                                                                                   g7545))
                                                                               g7313)))
                                                                      (if x-cnd7544
                                                                        g7313
                                                                        (blame
                                                                         g7311
                                                                         '(lambda (v)
                                                                            (orig-=
                                                                             v
                                                                             n)))))))
                                                            g7543))))
                                                g7542)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7546 v)) g7546)))
                                           (+
                                            (letrec ((xj7314 'server)
                                                     (xk7315 'client))
                                              (letrec ((g7547
                                                        ((lambda (j7318
                                                                  k7319
                                                                  f7320)
                                                           (letrec ((g7549
                                                                     (lambda (g7316
                                                                              g7317)
                                                                       (letrec ((g7550
                                                                                 (letrec ((x7551
                                                                                           (letrec ((x7553
                                                                                                     (number?/c
                                                                                                      j7318
                                                                                                      k7319
                                                                                                      g7316))
                                                                                                    (x7552
                                                                                                     (number?/c
                                                                                                      j7318
                                                                                                      k7319
                                                                                                      g7317)))
                                                                                             (f7320
                                                                                              x7553
                                                                                              x7552))))
                                                                                   (number?/c
                                                                                    j7318
                                                                                    k7319
                                                                                    x7551))))
                                                                         g7550))))
                                                             g7549))
                                                         xj7314
                                                         xk7315
                                                         (lambda (a b)
                                                           (letrec ((g7548
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7548)))))
                                                g7547)))
                                           (-
                                            (letrec ((xj7321 'server)
                                                     (xk7322 'client))
                                              (letrec ((g7554
                                                        ((lambda (j7325
                                                                  k7326
                                                                  f7327)
                                                           (letrec ((g7556
                                                                     (lambda (g7323
                                                                              g7324)
                                                                       (letrec ((g7557
                                                                                 (letrec ((x7558
                                                                                           (letrec ((x7560
                                                                                                     (number?/c
                                                                                                      j7325
                                                                                                      k7326
                                                                                                      g7323))
                                                                                                    (x7559
                                                                                                     (number?/c
                                                                                                      j7325
                                                                                                      k7326
                                                                                                      g7324)))
                                                                                             (f7327
                                                                                              x7560
                                                                                              x7559))))
                                                                                   (number?/c
                                                                                    j7325
                                                                                    k7326
                                                                                    x7558))))
                                                                         g7557))))
                                                             g7556))
                                                         xj7321
                                                         xk7322
                                                         (lambda (a b)
                                                           (letrec ((g7555
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7555)))))
                                                g7554)))
                                           (*
                                            (letrec ((xj7328 'server)
                                                     (xk7329 'client))
                                              (letrec ((g7561
                                                        ((lambda (j7332
                                                                  k7333
                                                                  f7334)
                                                           (letrec ((g7563
                                                                     (lambda (g7330
                                                                              g7331)
                                                                       (letrec ((g7564
                                                                                 (letrec ((x7565
                                                                                           (letrec ((x7567
                                                                                                     (number?/c
                                                                                                      j7332
                                                                                                      k7333
                                                                                                      g7330))
                                                                                                    (x7566
                                                                                                     (number?/c
                                                                                                      j7332
                                                                                                      k7333
                                                                                                      g7331)))
                                                                                             (f7334
                                                                                              x7567
                                                                                              x7566))))
                                                                                   (number?/c
                                                                                    j7332
                                                                                    k7333
                                                                                    x7565))))
                                                                         g7564))))
                                                             g7563))
                                                         xj7328
                                                         xk7329
                                                         (lambda (a b)
                                                           (letrec ((g7562
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7562)))))
                                                g7561)))
                                           (<
                                            (letrec ((xj7335 'server)
                                                     (xk7336 'client))
                                              (letrec ((g7568
                                                        ((lambda (j7339
                                                                  k7340
                                                                  f7341)
                                                           (letrec ((g7570
                                                                     (lambda (g7337
                                                                              g7338)
                                                                       (letrec ((g7571
                                                                                 (letrec ((x7572
                                                                                           (letrec ((x7574
                                                                                                     (number?/c
                                                                                                      j7339
                                                                                                      k7340
                                                                                                      g7337))
                                                                                                    (x7573
                                                                                                     (number?/c
                                                                                                      j7339
                                                                                                      k7340
                                                                                                      g7338)))
                                                                                             (f7341
                                                                                              x7574
                                                                                              x7573))))
                                                                                   (boolean?/c
                                                                                    j7339
                                                                                    k7340
                                                                                    x7572))))
                                                                         g7571))))
                                                             g7570))
                                                         xj7335
                                                         xk7336
                                                         (lambda (a b)
                                                           (letrec ((g7569
                                                                     (orig-<
                                                                      a
                                                                      b)))
                                                             g7569)))))
                                                g7568)))
                                           (>
                                            (letrec ((xj7342 'server)
                                                     (xk7343 'client))
                                              (letrec ((g7575
                                                        ((lambda (j7346
                                                                  k7347
                                                                  f7348)
                                                           (letrec ((g7577
                                                                     (lambda (g7344
                                                                              g7345)
                                                                       (letrec ((g7578
                                                                                 (letrec ((x7579
                                                                                           (letrec ((x7581
                                                                                                     (number?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7344))
                                                                                                    (x7580
                                                                                                     (number?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7345)))
                                                                                             (f7348
                                                                                              x7581
                                                                                              x7580))))
                                                                                   (boolean?/c
                                                                                    j7346
                                                                                    k7347
                                                                                    x7579))))
                                                                         g7578))))
                                                             g7577))
                                                         xj7342
                                                         xk7343
                                                         (lambda (a b)
                                                           (letrec ((g7576
                                                                     (orig->
                                                                      a
                                                                      b)))
                                                             g7576)))))
                                                g7575)))
                                           (<=
                                            (letrec ((xj7349 'server)
                                                     (xk7350 'client))
                                              (letrec ((g7582
                                                        ((lambda (j7353
                                                                  k7354
                                                                  f7355)
                                                           (letrec ((g7584
                                                                     (lambda (g7351
                                                                              g7352)
                                                                       (letrec ((g7585
                                                                                 (letrec ((x7586
                                                                                           (letrec ((x7588
                                                                                                     (number?/c
                                                                                                      j7353
                                                                                                      k7354
                                                                                                      g7351))
                                                                                                    (x7587
                                                                                                     (number?/c
                                                                                                      j7353
                                                                                                      k7354
                                                                                                      g7352)))
                                                                                             (f7355
                                                                                              x7588
                                                                                              x7587))))
                                                                                   (boolean?/c
                                                                                    j7353
                                                                                    k7354
                                                                                    x7586))))
                                                                         g7585))))
                                                             g7584))
                                                         xj7349
                                                         xk7350
                                                         (lambda (a b)
                                                           (letrec ((g7583
                                                                     (orig-<=
                                                                      a
                                                                      b)))
                                                             g7583)))))
                                                g7582)))
                                           (>=
                                            (letrec ((xj7356 'server)
                                                     (xk7357 'client))
                                              (letrec ((g7589
                                                        ((lambda (j7360
                                                                  k7361
                                                                  f7362)
                                                           (letrec ((g7591
                                                                     (lambda (g7358
                                                                              g7359)
                                                                       (letrec ((g7592
                                                                                 (letrec ((x7593
                                                                                           (letrec ((x7595
                                                                                                     (number?/c
                                                                                                      j7360
                                                                                                      k7361
                                                                                                      g7358))
                                                                                                    (x7594
                                                                                                     (number?/c
                                                                                                      j7360
                                                                                                      k7361
                                                                                                      g7359)))
                                                                                             (f7362
                                                                                              x7595
                                                                                              x7594))))
                                                                                   (boolean?/c
                                                                                    j7360
                                                                                    k7361
                                                                                    x7593))))
                                                                         g7592))))
                                                             g7591))
                                                         xj7356
                                                         xk7357
                                                         (lambda (a b)
                                                           (letrec ((g7590
                                                                     (orig->=
                                                                      a
                                                                      b)))
                                                             g7590)))))
                                                g7589)))
                                           (/
                                            (letrec ((xj7363 'server)
                                                     (xk7364 'client))
                                              (letrec ((g7596
                                                        ((lambda (j7367
                                                                  k7368
                                                                  f7369)
                                                           (letrec ((g7598
                                                                     (lambda (g7365
                                                                              g7366)
                                                                       (letrec ((g7599
                                                                                 (letrec ((x7600
                                                                                           (letrec ((x7602
                                                                                                     (number?/c
                                                                                                      j7367
                                                                                                      k7368
                                                                                                      g7365))
                                                                                                    (x7601
                                                                                                     (number?/c
                                                                                                      j7367
                                                                                                      k7368
                                                                                                      g7366)))
                                                                                             (f7369
                                                                                              x7602
                                                                                              x7601))))
                                                                                   (number?/c
                                                                                    j7367
                                                                                    k7368
                                                                                    x7600))))
                                                                         g7599))))
                                                             g7598))
                                                         xj7363
                                                         xk7364
                                                         (lambda (a b)
                                                           (letrec ((g7597
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7597)))))
                                                g7596)))
                                           (car
                                            (letrec ((xj7370 'server)
                                                     (xk7371 'client))
                                              (letrec ((g7603
                                                        ((lambda (j7373
                                                                  k7374
                                                                  f7375)
                                                           (letrec ((g7605
                                                                     (lambda (g7372)
                                                                       (letrec ((g7606
                                                                                 (letrec ((x7607
                                                                                           (letrec ((x7608
                                                                                                     (pair?/c
                                                                                                      j7373
                                                                                                      k7374
                                                                                                      g7372)))
                                                                                             (f7375
                                                                                              x7608))))
                                                                                   (any/c
                                                                                    j7373
                                                                                    k7374
                                                                                    x7607))))
                                                                         g7606))))
                                                             g7605))
                                                         xj7370
                                                         xk7371
                                                         (lambda (p)
                                                           (letrec ((g7604
                                                                     (orig-car
                                                                      p)))
                                                             g7604)))))
                                                g7603)))
                                           (cdr
                                            (letrec ((xj7376 'server)
                                                     (xk7377 'client))
                                              (letrec ((g7609
                                                        ((lambda (j7379
                                                                  k7380
                                                                  f7381)
                                                           (letrec ((g7611
                                                                     (lambda (g7378)
                                                                       (letrec ((g7612
                                                                                 (letrec ((x7613
                                                                                           (letrec ((x7614
                                                                                                     (pair?/c
                                                                                                      j7379
                                                                                                      k7380
                                                                                                      g7378)))
                                                                                             (f7381
                                                                                              x7614))))
                                                                                   (any/c
                                                                                    j7379
                                                                                    k7380
                                                                                    x7613))))
                                                                         g7612))))
                                                             g7611))
                                                         xj7376
                                                         xk7377
                                                         (lambda (p)
                                                           (letrec ((g7610
                                                                     (orig-cdr
                                                                      p)))
                                                             g7610)))))
                                                g7609)))
                                           (cons
                                            (letrec ((xj7382 'server)
                                                     (xk7383 'client))
                                              (letrec ((g7615
                                                        ((lambda (j7386
                                                                  k7387
                                                                  f7388)
                                                           (letrec ((g7617
                                                                     (lambda (g7384
                                                                              g7385)
                                                                       (letrec ((g7618
                                                                                 (letrec ((x7619
                                                                                           (letrec ((x7621
                                                                                                     (any/c
                                                                                                      j7386
                                                                                                      k7387
                                                                                                      g7384))
                                                                                                    (x7620
                                                                                                     (any/c
                                                                                                      j7386
                                                                                                      k7387
                                                                                                      g7385)))
                                                                                             (f7388
                                                                                              x7621
                                                                                              x7620))))
                                                                                   (pair?/c
                                                                                    j7386
                                                                                    k7387
                                                                                    x7619))))
                                                                         g7618))))
                                                             g7617))
                                                         xj7382
                                                         xk7383
                                                         (lambda (a b)
                                                           (letrec ((g7616
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7616)))))
                                                g7615)))
                                           (vector-ref
                                            (letrec ((xj7389 'server)
                                                     (xk7390 'client))
                                              (letrec ((g7622
                                                        ((lambda (j7392
                                                                  k7393
                                                                  f7394)
                                                           (letrec ((g7624
                                                                     (lambda (g7391)
                                                                       (letrec ((g7625
                                                                                 (letrec ((x7626
                                                                                           (letrec ((x7627
                                                                                                     (vector?/c
                                                                                                      j7392
                                                                                                      k7393
                                                                                                      g7391)))
                                                                                             (f7394
                                                                                              x7627))))
                                                                                   (integer?/c
                                                                                    j7392
                                                                                    k7393
                                                                                    x7626))))
                                                                         g7625))))
                                                             g7624))
                                                         xj7389
                                                         xk7390
                                                         (lambda (v i)
                                                           (letrec ((g7623
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7623)))))
                                                g7622)))
                                           (vector-set!
                                            (letrec ((xj7395 'server)
                                                     (xk7396 'client))
                                              (letrec ((g7628
                                                        ((lambda (j7399
                                                                  k7400
                                                                  f7401)
                                                           (letrec ((g7630
                                                                     (lambda (g7397
                                                                              g7398)
                                                                       (letrec ((g7631
                                                                                 (letrec ((x7632
                                                                                           (letrec ((x7634
                                                                                                     (vector?/c
                                                                                                      j7399
                                                                                                      k7400
                                                                                                      g7397))
                                                                                                    (x7633
                                                                                                     (integer?/c
                                                                                                      j7399
                                                                                                      k7400
                                                                                                      g7398)))
                                                                                             (f7401
                                                                                              x7634
                                                                                              x7633))))
                                                                                   (any/c
                                                                                    j7399
                                                                                    k7400
                                                                                    x7632))))
                                                                         g7631))))
                                                             g7630))
                                                         xj7395
                                                         xk7396
                                                         (lambda (vec i v)
                                                           (letrec ((g7629
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7629)))))
                                                g7628)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7635
                                                        (letrec ((x7636
                                                                  (letrec ((x7637
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7637))))
                                                          (cdr x7636))))
                                                g7635)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7638
                                                        (letrec ((x7641
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7641)))
                                                       (g7639
                                                        (letrec ((x7642
                                                                  (list? l)))
                                                          (assert x7642)))
                                                       (g7640
                                                        (letrec ((x-cnd7643
                                                                  (null? l)))
                                                          (if x-cnd7643
                                                            '()
                                                            (letrec ((x7646
                                                                      (letrec ((x7647
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7647)))
                                                                     (x7644
                                                                      (letrec ((x7645
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7645))))
                                                              (cons
                                                               x7646
                                                               x7644))))))
                                                g7640)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7648
                                                        (letrec ((x7649
                                                                  (car x)))
                                                          (cdr x7649))))
                                                g7648)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7650
                                                        (letrec ((x7651
                                                                  (letrec ((x7652
                                                                            (letrec ((x7653
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7653))))
                                                                    (cdr
                                                                     x7652))))
                                                          (car x7651))))
                                                g7650)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7654
                                                        (letrec ((x7655
                                                                  (letrec ((x7656
                                                                            (letrec ((x7657
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7657))))
                                                                    (car
                                                                     x7656))))
                                                          (cdr x7655))))
                                                g7654)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7658
                                                        (letrec ((x7661
                                                                  (string?
                                                                   filename)))
                                                          (assert x7661)))
                                                       (g7659
                                                        (letrec ((x7662
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7662)))
                                                       (g7660
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7663
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7664 res))
                                                            g7664))))
                                                g7660)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7665
                                                        (letrec ((x7666
                                                                  (letrec ((x7667
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7667))))
                                                          (car x7666))))
                                                g7665)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7668
                                                        (letrec ((x7669
                                                                  (letrec ((x7670
                                                                            (letrec ((x7671
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7671))))
                                                                    (car
                                                                     x7670))))
                                                          (cdr x7669))))
                                                g7668)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7672
                                                        (letrec ((x7674
                                                                  (list? l)))
                                                          (assert x7674)))
                                                       (g7673
                                                        (letrec ((x-cnd7675
                                                                  (null? l)))
                                                          (if x-cnd7675
                                                            #f
                                                            (letrec ((x-cnd7676
                                                                      (letrec ((x7677
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7677
                                                                         k))))
                                                              (if x-cnd7676
                                                                (car l)
                                                                (letrec ((x7678
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7678))))))))
                                                g7673)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7679
                                                        (letrec ((x7680
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7680))))
                                                g7679)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7681
                                                        (letrec ((x7683
                                                                  (list? l)))
                                                          (assert x7683)))
                                                       (g7682
                                                        (letrec ((x-cnd7684
                                                                  (null? l)))
                                                          (if x-cnd7684
                                                            ""
                                                            (letrec ((x7687
                                                                      (letrec ((x7688
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7688)))
                                                                     (x7685
                                                                      (letrec ((x7686
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7686))))
                                                              (string-append
                                                               x7687
                                                               x7685))))))
                                                g7682)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7689
                                                        (letrec ((x7692
                                                                  (char? c1)))
                                                          (assert x7692)))
                                                       (g7690
                                                        (letrec ((x7693
                                                                  (char? c2)))
                                                          (assert x7693)))
                                                       (g7691
                                                        (letrec ((val7248
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7694
                                                                    (if val7248
                                                                      val7248
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7694))))
                                                g7691)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7695
                                                        (letrec ((x7696
                                                                  (letrec ((x7697
                                                                            (letrec ((x7698
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7698))))
                                                                    (cdr
                                                                     x7697))))
                                                          (cdr x7696))))
                                                g7695)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7699
                                                        (letrec ((x7702
                                                                  (list? l)))
                                                          (assert x7702)))
                                                       (g7700
                                                        (letrec ((x7703
                                                                  (number?)))
                                                          (assert x7703)))
                                                       (g7701
                                                        (letrec ((x-cnd7704
                                                                  (zero? k)))
                                                          (if x-cnd7704
                                                            x
                                                            (letrec ((x7706
                                                                      (cdr x))
                                                                     (x7705
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7706
                                                               x7705))))))
                                                g7701)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7707 '())) g7707)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7708
                                                        (letrec ((x-cnd7709
                                                                  (letrec ((x7710
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7710))))
                                                          (if x-cnd7709
                                                            (letrec ((x7711
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7711))
                                                            #f))))
                                                g7708)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7712
                                                        (letrec ((val7249
                                                                  (letrec ((x7713
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7713
                                                                     9))))
                                                          (letrec ((g7714
                                                                    (if val7249
                                                                      val7249
                                                                      (letrec ((val7250
                                                                                (letrec ((x7715
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7715
                                                                                   10))))
                                                                        (letrec ((g7716
                                                                                  (if val7250
                                                                                    val7250
                                                                                    (letrec ((x7717
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7717
                                                                                       32)))))
                                                                          g7716)))))
                                                            g7714))))
                                                g7712)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7718
                                                        (letrec ((x7719
                                                                  (letrec ((x7720
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7720))))
                                                          (cdr x7719))))
                                                g7718)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7721
                                                        (letrec ((x7723
                                                                  (number? x)))
                                                          (assert x7723)))
                                                       (g7722 (> x 0)))
                                                g7722)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7724 #f)) g7724)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7725
                                                        (letrec ((x7726
                                                                  (cdr x)))
                                                          (cdr x7726))))
                                                g7725)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7727
                                                        (letrec ((x7729
                                                                  (number? x)))
                                                          (assert x7729)))
                                                       (g7728
                                                        (letrec ((x-cnd7730
                                                                  (< x 0)))
                                                          (if x-cnd7730
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7728)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7731
                                                        (letrec ((val7251
                                                                  (eq? a b)))
                                                          (letrec ((g7732
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (letrec ((x-cnd7733
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7733
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7734
                                                                                  (if val7252
                                                                                    val7252
                                                                                    (letrec ((val7253
                                                                                              (letrec ((x-cnd7735
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7735
                                                                                                  (letrec ((x-cnd7736
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7736
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7737
                                                                                                (if val7253
                                                                                                  val7253
                                                                                                  (letrec ((val7254
                                                                                                            (letrec ((x-cnd7738
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7738
                                                                                                                (letrec ((x-cnd7739
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7739
                                                                                                                    (letrec ((x-cnd7740
                                                                                                                              (letrec ((x7742
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7741
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7742
                                                                                                                                 x7741))))
                                                                                                                      (if x-cnd7740
                                                                                                                        (letrec ((x7744
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7743
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7744
                                                                                                                           x7743))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7745
                                                                                                              (if val7254
                                                                                                                val7254
                                                                                                                (letrec ((x-cnd7746
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7746
                                                                                                                    (letrec ((x-cnd7747
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7747
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7748
                                                                                                                                    (letrec ((x-cnd7749
                                                                                                                                              (letrec ((x7750
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7750
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7749
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7751
                                                                                                                                                              (letrec ((val7255
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7752
                                                                                                                                                                          (if val7255
                                                                                                                                                                            val7255
                                                                                                                                                                            (letrec ((x-cnd7753
                                                                                                                                                                                      (letrec ((x7755
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7754
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7755
                                                                                                                                                                                         x7754))))
                                                                                                                                                                              (if x-cnd7753
                                                                                                                                                                                (letrec ((x7756
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7756))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7752))))
                                                                                                                                                      g7751))))
                                                                                                                                          (letrec ((g7757
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7757))
                                                                                                                                        #f))))
                                                                                                                            g7748))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7745)))))
                                                                                        g7737)))))
                                                                          g7734)))))
                                                            g7732))))
                                                g7731)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7758
                                                        (letrec ((x7759
                                                                  (letrec ((x7760
                                                                            (letrec ((x7761
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7761))))
                                                                    (car
                                                                     x7760))))
                                                          (cdr x7759))))
                                                g7758)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7762
                                                        (letrec ((x7763
                                                                  (letrec ((x7764
                                                                            (letrec ((x7765
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7765))))
                                                                    (car
                                                                     x7764))))
                                                          (car x7763))))
                                                g7762)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7766 (eq? x y)))
                                                g7766)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7767
                                                        (letrec ((x7770
                                                                  (string?
                                                                   filename)))
                                                          (assert x7770)))
                                                       (g7768
                                                        (letrec ((x7771
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7771)))
                                                       (g7769
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7772
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7773 res))
                                                            g7773))))
                                                g7769)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7774 (cons x '())))
                                                g7774)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7775
                                                        (letrec ((x7778
                                                                  (char? c1)))
                                                          (assert x7778)))
                                                       (g7776
                                                        (letrec ((x7779
                                                                  (char? c2)))
                                                          (assert x7779)))
                                                       (g7777
                                                        (letrec ((val7256
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7780
                                                                    (if val7256
                                                                      val7256
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7780))))
                                                g7777)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7781
                                                        (letrec ((x7782
                                                                  (letrec ((x7783
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7783))))
                                                          (cdr x7782))))
                                                g7781)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7784
                                                        (letrec ((x7785
                                                                  (letrec ((x7786
                                                                            (letrec ((x7787
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7787))))
                                                                    (car
                                                                     x7786))))
                                                          (cdr x7785))))
                                                g7784)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7788
                                                        (letrec ((x7789
                                                                  (letrec ((x7790
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7790))))
                                                          (car x7789))))
                                                g7788)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7791
                                                        (letrec ((x7792
                                                                  (letrec ((x7793
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7793))))
                                                          (car x7792))))
                                                g7791)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7794
                                                        (letrec ((x7797
                                                                  (char? c1)))
                                                          (assert x7797)))
                                                       (g7795
                                                        (letrec ((x7798
                                                                  (char? c2)))
                                                          (assert x7798)))
                                                       (g7796
                                                        (letrec ((x7799
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7799))))
                                                g7796)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7800
                                                        (letrec ((x7801
                                                                  (letrec ((x7802
                                                                            (letrec ((x7803
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7803))))
                                                                    (car
                                                                     x7802))))
                                                          (car x7801))))
                                                g7800)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7804
                                                        (letrec ((x7806
                                                                  (number? x)))
                                                          (assert x7806)))
                                                       (g7805 (< x 0)))
                                                g7805)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7807 (memq e l)))
                                                g7807)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7808
                                                        (letrec ((x7809
                                                                  (letrec ((x7810
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7810))))
                                                          (car x7809))))
                                                g7808)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7811 '())) g7811)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7812
                                                        (letrec ((x7814
                                                                  (list? l)))
                                                          (assert x7814)))
                                                       (g7813
                                                        (letrec ((x-cnd7815
                                                                  (null? l)))
                                                          (if x-cnd7815
                                                            '()
                                                            (letrec ((x7818
                                                                      (letrec ((x7819
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7819)))
                                                                     (x7816
                                                                      (letrec ((x7817
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7817))))
                                                              (append
                                                               x7818
                                                               x7816))))))
                                                g7813)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7820
                                                        (letrec ((x7821
                                                                  (letrec ((x7822
                                                                            (letrec ((x7823
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7823))))
                                                                    (car
                                                                     x7822))))
                                                          (car x7821))))
                                                g7820)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7824
                                                        (letrec ((x7825
                                                                  (letrec ((x7826
                                                                            (letrec ((x7827
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7827))))
                                                                    (cdr
                                                                     x7826))))
                                                          (cdr x7825))))
                                                g7824)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7828
                                                        (letrec ((x7830
                                                                  (number? x)))
                                                          (assert x7830)))
                                                       (g7829
                                                        (letrec ((x7831
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7831))))
                                                g7829)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7832
                                                        (letrec ((x7833
                                                                  (letrec ((x7834
                                                                            (letrec ((x7835
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7835))))
                                                                    (car
                                                                     x7834))))
                                                          (car x7833))))
                                                g7832)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7836
                                                        (letrec ((x7839
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7839)))
                                                       (g7837
                                                        (letrec ((x7840
                                                                  (list?
                                                                   args)))
                                                          (assert x7840)))
                                                       (g7838
                                                        (letrec ((x-cnd7841
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7841
                                                            (letrec ((g7842
                                                                      (proc)))
                                                              g7842)
                                                            (letrec ((x-cnd7843
                                                                      (letrec ((x7844
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7844))))
                                                              (if x-cnd7843
                                                                (letrec ((g7845
                                                                          (letrec ((x7846
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7846))))
                                                                  g7845)
                                                                (letrec ((x-cnd7847
                                                                          (letrec ((x7848
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7848))))
                                                                  (if x-cnd7847
                                                                    (letrec ((g7849
                                                                              (letrec ((x7851
                                                                                        (car
                                                                                         args))
                                                                                       (x7850
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7851
                                                                                 x7850))))
                                                                      g7849)
                                                                    (letrec ((x-cnd7852
                                                                              (letrec ((x7853
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7853))))
                                                                      (if x-cnd7852
                                                                        (letrec ((g7854
                                                                                  (letrec ((x7857
                                                                                            (car
                                                                                             args))
                                                                                           (x7856
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7855
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7857
                                                                                     x7856
                                                                                     x7855))))
                                                                          g7854)
                                                                        (letrec ((x-cnd7858
                                                                                  (letrec ((x7859
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7859))))
                                                                          (if x-cnd7858
                                                                            (letrec ((g7860
                                                                                      (letrec ((x7864
                                                                                                (car
                                                                                                 args))
                                                                                               (x7863
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7862
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7861
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7864
                                                                                         x7863
                                                                                         x7862
                                                                                         x7861))))
                                                                              g7860)
                                                                            (letrec ((x-cnd7865
                                                                                      (letrec ((x7866
                                                                                                (letrec ((x7867
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7867))))
                                                                                        (null?
                                                                                         x7866))))
                                                                              (if x-cnd7865
                                                                                (letrec ((g7868
                                                                                          (letrec ((x7874
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7873
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7872
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7871
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7869
                                                                                                    (letrec ((x7870
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7870))))
                                                                                            (proc
                                                                                             x7874
                                                                                             x7873
                                                                                             x7872
                                                                                             x7871
                                                                                             x7869))))
                                                                                  g7868)
                                                                                (letrec ((x-cnd7875
                                                                                          (letrec ((x7876
                                                                                                    (letrec ((x7877
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7877))))
                                                                                            (null?
                                                                                             x7876))))
                                                                                  (if x-cnd7875
                                                                                    (letrec ((g7878
                                                                                              (letrec ((x7886
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7885
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7884
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7883
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7881
                                                                                                        (letrec ((x7882
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7882)))
                                                                                                       (x7879
                                                                                                        (letrec ((x7880
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7880))))
                                                                                                (proc
                                                                                                 x7886
                                                                                                 x7885
                                                                                                 x7884
                                                                                                 x7883
                                                                                                 x7881
                                                                                                 x7879))))
                                                                                      g7878)
                                                                                    (letrec ((x-cnd7887
                                                                                              (letrec ((x7888
                                                                                                        (letrec ((x7889
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7889))))
                                                                                                (null?
                                                                                                 x7888))))
                                                                                      (if x-cnd7887
                                                                                        (letrec ((g7890
                                                                                                  (letrec ((x7900
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7899
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7898
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7897
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7895
                                                                                                            (letrec ((x7896
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7896)))
                                                                                                           (x7893
                                                                                                            (letrec ((x7894
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7894)))
                                                                                                           (x7891
                                                                                                            (letrec ((x7892
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7892))))
                                                                                                    (proc
                                                                                                     x7900
                                                                                                     x7899
                                                                                                     x7898
                                                                                                     x7897
                                                                                                     x7895
                                                                                                     x7893
                                                                                                     x7891))))
                                                                                          g7890)
                                                                                        (letrec ((g7901
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7901)))))))))))))))))))
                                                g7838)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7902
                                                        (letrec ((x7904
                                                                  (list? l)))
                                                          (assert x7904)))
                                                       (g7903
                                                        (letrec ((x-cnd7905
                                                                  (null? l)))
                                                          (if x-cnd7905
                                                            #f
                                                            (letrec ((x-cnd7906
                                                                      (letrec ((x7907
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7907
                                                                         e))))
                                                              (if x-cnd7906
                                                                l
                                                                (letrec ((x7908
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7908))))))))
                                                g7903)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7909
                                                        (letrec ((x7910
                                                                  (letrec ((x7911
                                                                            (letrec ((x7912
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7912))))
                                                                    (cdr
                                                                     x7911))))
                                                          (cdr x7910))))
                                                g7909)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7913
                                                        (letrec ((x7914
                                                                  (letrec ((x7915
                                                                            (letrec ((x7916
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7916))))
                                                                    (cdr
                                                                     x7915))))
                                                          (car x7914))))
                                                g7913)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7917 (random 42)))
                                                g7917)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7918
                                                        (letrec ((x7920
                                                                  (number? x)))
                                                          (assert x7920)))
                                                       (g7919 (= x 0)))
                                                g7919)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7921
                                                        (letrec ((val7257
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7922
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7922))))
                                                g7921)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7923
                                                        (letrec ((x7924
                                                                  (cdr x)))
                                                          (car x7924))))
                                                g7923)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7925
                                                        (letrec ((val7258
                                                                  (letrec ((x-cnd7926
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7926
                                                                      (letrec ((x7927
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7927))
                                                                      #f))))
                                                          (letrec ((g7928
                                                                    (if val7258
                                                                      val7258
                                                                      (null?
                                                                       l))))
                                                            g7928))))
                                                g7925)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7929
                                                        (letrec ((x7930
                                                                  (letrec ((x7931
                                                                            (letrec ((x7932
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7932))))
                                                                    (cdr
                                                                     x7931))))
                                                          (cdr x7930))))
                                                g7929)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7933
                                                        (letrec ((x-cnd7934
                                                                  (letrec ((x7935
                                                                            #\0))
                                                                    (char<=?
                                                                     x7935
                                                                     c))))
                                                          (if x-cnd7934
                                                            (letrec ((x7936
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7936))
                                                            #f))))
                                                g7933)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7937
                                                        (letrec ((x7939
                                                                  (list? l)))
                                                          (assert x7939)))
                                                       (g7938
                                                        (letrec ((x-cnd7940
                                                                  (null? l)))
                                                          (if x-cnd7940
                                                            #f
                                                            (letrec ((x-cnd7941
                                                                      (letrec ((x7942
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7942
                                                                         k))))
                                                              (if x-cnd7941
                                                                (car l)
                                                                (letrec ((x7943
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7943))))))))
                                                g7938)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7944 (if x #f #t)))
                                                g7944)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7945 (append l1 l2)))
                                                g7945)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7946
                                                        (letrec ((x7948
                                                                  (list? l)))
                                                          (assert x7948)))
                                                       (g7947
                                                        (letrec ((x-cnd7949
                                                                  (null? l)))
                                                          (if x-cnd7949
                                                            #f
                                                            (letrec ((x-cnd7950
                                                                      (letrec ((x7951
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7951
                                                                         e))))
                                                              (if x-cnd7950
                                                                l
                                                                (letrec ((x7952
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7952))))))))
                                                g7947)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7953
                                                        (letrec ((x7954
                                                                  (letrec ((x7955
                                                                            (letrec ((x7956
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7956))))
                                                                    (cdr
                                                                     x7955))))
                                                          (car x7954))))
                                                g7953)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7957
                                                        (letrec ((x7959
                                                                  (list? l)))
                                                          (assert x7959)))
                                                       (g7958
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7960
                                                                              (letrec ((x-cnd7961
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7961
                                                                                  0
                                                                                  (letrec ((x7962
                                                                                            (letrec ((x7963
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7963))))
                                                                                    (+
                                                                                     1
                                                                                     x7962))))))
                                                                      g7960))))
                                                          (letrec ((g7964
                                                                    (rec l)))
                                                            g7964))))
                                                g7958)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7965
                                                        (letrec ((x7968
                                                                  (char? c1)))
                                                          (assert x7968)))
                                                       (g7966
                                                        (letrec ((x7969
                                                                  (char? c2)))
                                                          (assert x7969)))
                                                       (g7967
                                                        (letrec ((val7259
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7970
                                                                    (if val7259
                                                                      val7259
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7970))))
                                                g7967)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7971
                                                        (letrec ((x7972
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7972))))
                                                g7971)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7973
                                                        (letrec ((x7974
                                                                  (letrec ((x7975
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7975))))
                                                          (cdr x7974))))
                                                g7973)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7976
                                                        (letrec ((x7978
                                                                  (list? l)))
                                                          (assert x7978)))
                                                       (g7977
                                                        (letrec ((x-cnd7979
                                                                  (null? l)))
                                                          (if x-cnd7979
                                                            #f
                                                            (letrec ((x-cnd7980
                                                                      (letrec ((x7981
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7981
                                                                         k))))
                                                              (if x-cnd7980
                                                                (car l)
                                                                (letrec ((x7982
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7982))))))))
                                                g7977)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7983
                                                        (letrec ((x7984
                                                                  (car x)))
                                                          (car x7984))))
                                                g7983)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7985
                                                        (letrec ((x7988
                                                                  (char? c1)))
                                                          (assert x7988)))
                                                       (g7986
                                                        (letrec ((x7989
                                                                  (char? c2)))
                                                          (assert x7989)))
                                                       (g7987
                                                        (letrec ((x7990
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7990))))
                                                g7987)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7991
                                                        (letrec ((val7260
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7992
                                                                    (if val7260
                                                                      val7260
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7992))))
                                                g7991)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7993
                                                        (letrec ((x7996
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7996)))
                                                       (g7994
                                                        (letrec ((x7997
                                                                  (list? l)))
                                                          (assert x7997)))
                                                       (g7995
                                                        (letrec ((x-cnd7998
                                                                  (null? l)))
                                                          (if x-cnd7998
                                                            #t
                                                            (letrec ((x-cnd7999
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7999
                                                                (letrec ((g8000
                                                                          (letrec ((x8002
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8002)))
                                                                         (g8001
                                                                          (letrec ((x8003
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8003))))
                                                                  g8001)
                                                                '()))))))
                                                g7995)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8004
                                                        (letrec ((x8006
                                                                  (number? x)))
                                                          (assert x8006)))
                                                       (g8005
                                                        (letrec ((x-cnd8007
                                                                  (< x 0)))
                                                          (if x-cnd8007
                                                            (- 0 x)
                                                            x))))
                                                g8005)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8008
                                                        (letrec ((x8011
                                                                  (char? c1)))
                                                          (assert x8011)))
                                                       (g8009
                                                        (letrec ((x8012
                                                                  (char? c2)))
                                                          (assert x8012)))
                                                       (g8010
                                                        (letrec ((val7261
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8013
                                                                    (if val7261
                                                                      val7261
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8013))))
                                                g8010)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8014
                                                        (letrec ((x8015
                                                                  (letrec ((x8016
                                                                            (letrec ((x8017
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8017))))
                                                                    (cdr
                                                                     x8016))))
                                                          (car x8015))))
                                                g8014)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8018 #f)) g8018)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8019
                                                        (letrec ((x8021
                                                                  (letrec ((x8022
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8022)))
                                                                 (x8020
                                                                  (gcd m n)))
                                                          (/ x8021 x8020))))
                                                g8019)))
                                           (deref car)
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8023
                                                        (letrec ((x8027
                                                                  (list? l)))
                                                          (assert x8027)))
                                                       (g8024
                                                        (letrec ((x8028
                                                                  (number?
                                                                   index)))
                                                          (assert x8028)))
                                                       (g8025
                                                        (letrec ((x8029
                                                                  (letrec ((x8030
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8030))))
                                                          (assert x8029)))
                                                       (g8026
                                                        (letrec ((x-cnd8031
                                                                  (= index 0)))
                                                          (if x-cnd8031
                                                            (car l)
                                                            (letrec ((x8033
                                                                      (cdr l))
                                                                     (x8032
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8033
                                                               x8032))))))
                                                g8026)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8034
                                                        (letrec ((x-cnd8035
                                                                  (= b 0)))
                                                          (if x-cnd8035
                                                            a
                                                            (letrec ((x8036
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8036))))))
                                                g8034)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8037
                                                        (orig-cons
                                                         'image
                                                         '())))
                                                g8037)))
                                           (image?
                                            (lambda (image7438)
                                              (letrec ((g8038
                                                        (letrec ((x8039
                                                                  (car
                                                                   image7438)))
                                                          (eq? x8039 'image))))
                                                g8038)))
                                           (image/c
                                            (lambda (j7403 k7404 v7402)
                                              (letrec ((g8040
                                                        (cons image '())))
                                                g8040)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8041 (image)))
                                                g8041)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8042 (image)))
                                                g8042)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8043 (image)))
                                                g8043)))
                                           (posn
                                            (lambda (x7440 y7441)
                                              (letrec ((g8044
                                                        (letrec ((x8045
                                                                  (letrec ((x8046
                                                                            (orig-cons
                                                                             y7441
                                                                             '())))
                                                                    (orig-cons
                                                                     x7440
                                                                     x8046))))
                                                          (orig-cons
                                                           'posn
                                                           x8045))))
                                                g8044)))
                                           (posn?
                                            (lambda (posn7439)
                                              (letrec ((g8047
                                                        (letrec ((x8048
                                                                  (car
                                                                   posn7439)))
                                                          (eq? x8048 'posn))))
                                                g8047)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g8049
                                                        (letrec ((x8050
                                                                  (orig-cdr
                                                                   posn)))
                                                          (orig-car x8050))))
                                                g8049)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g8051
                                                        (letrec ((x8052
                                                                  (letrec ((x8053
                                                                            (orig-cdr
                                                                             posn)))
                                                                    (orig-cdr
                                                                     x8053))))
                                                          (orig-car x8052))))
                                                g8051)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g8054
                                                        (letrec ((x-cnd8055
                                                                  (letrec ((x8057
                                                                            (posn-x
                                                                             p1))
                                                                           (x8056
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x8057
                                                                     x8056))))
                                                          (if x-cnd8055
                                                            (letrec ((x8059
                                                                      (posn-y
                                                                       p1))
                                                                     (x8058
                                                                      (posn-y
                                                                       p2)))
                                                              (= x8059 x8058))
                                                            #f))))
                                                g8054)))
                                           (snake
                                            (lambda (dir7445 segs7446)
                                              (letrec ((g8060
                                                        (letrec ((x8061
                                                                  (letrec ((x8062
                                                                            (orig-cons
                                                                             segs7446
                                                                             '())))
                                                                    (orig-cons
                                                                     dir7445
                                                                     x8062))))
                                                          (orig-cons
                                                           'snake
                                                           x8061))))
                                                g8060)))
                                           (snake?
                                            (lambda (snake7444)
                                              (letrec ((g8063
                                                        (letrec ((x8064
                                                                  (car
                                                                   snake7444)))
                                                          (eq? x8064 'snake))))
                                                g8063)))
                                           (snake-dir
                                            (lambda (snake)
                                              (letrec ((g8065
                                                        (letrec ((x8066
                                                                  (orig-cdr
                                                                   snake)))
                                                          (orig-car x8066))))
                                                g8065)))
                                           (snake-segs
                                            (lambda (snake)
                                              (letrec ((g8067
                                                        (letrec ((x8068
                                                                  (letrec ((x8069
                                                                            (orig-cdr
                                                                             snake)))
                                                                    (orig-cdr
                                                                     x8069))))
                                                          (orig-car x8068))))
                                                g8067)))
                                           (world
                                            (lambda (snake7450 food7451)
                                              (letrec ((g8070
                                                        (letrec ((x8071
                                                                  (letrec ((x8072
                                                                            (orig-cons
                                                                             food7451
                                                                             '())))
                                                                    (orig-cons
                                                                     snake7450
                                                                     x8072))))
                                                          (orig-cons
                                                           'world
                                                           x8071))))
                                                g8070)))
                                           (world?
                                            (lambda (world7449)
                                              (letrec ((g8073
                                                        (letrec ((x8074
                                                                  (car
                                                                   world7449)))
                                                          (eq? x8074 'world))))
                                                g8073)))
                                           (world-snake
                                            (lambda (world)
                                              (letrec ((g8075
                                                        (letrec ((x8076
                                                                  (orig-cdr
                                                                   world)))
                                                          (orig-car x8076))))
                                                g8075)))
                                           (world-food
                                            (lambda (world)
                                              (letrec ((g8077
                                                        (letrec ((x8078
                                                                  (letrec ((x8079
                                                                            (orig-cdr
                                                                             world)))
                                                                    (orig-cdr
                                                                     x8079))))
                                                          (orig-car x8078))))
                                                g8077)))
                                           (DIR/C
                                            (lambda (g7409 g7410 g7411)
                                              (letrec ((g8080
                                                        (letrec ((x-cnd8081
                                                                  ((lambda (v7408)
                                                                     (letrec ((g8082
                                                                               (letrec ((x-cnd8083
                                                                                         (eq?
                                                                                          'up
                                                                                          v7408)))
                                                                                 (if x-cnd8083
                                                                                   #t
                                                                                   (letrec ((x-cnd8084
                                                                                             (eq?
                                                                                              'down
                                                                                              v7408)))
                                                                                     (if x-cnd8084
                                                                                       #t
                                                                                       (letrec ((x-cnd8085
                                                                                                 (eq?
                                                                                                  'left
                                                                                                  v7408)))
                                                                                         (if x-cnd8085
                                                                                           #t
                                                                                           (eq?
                                                                                            'right
                                                                                            v7408)))))))))
                                                                       g8082))
                                                                   g7411)))
                                                          (if x-cnd8081
                                                            g7411
                                                            (blame
                                                             g7409
                                                             '(lambda (v7408)
                                                                (if (eq?
                                                                     'up
                                                                     v7408)
                                                                  #t
                                                                  (if (eq?
                                                                       'down
                                                                       v7408)
                                                                    #t
                                                                    (if (eq?
                                                                         'left
                                                                         v7408)
                                                                      #t
                                                                      (eq?
                                                                       'right
                                                                       v7408))))))))))
                                                g8080)))
                                           (POSN/C
                                            (lambda (j7413 k7414 v7412)
                                              (letrec ((g8086
                                                        (letrec ((checked7415
                                                                  (letrec ((x8087
                                                                            (letrec ((x8088
                                                                                      (orig-cdr
                                                                                       v7412)))
                                                                              (orig-car
                                                                               x8088))))
                                                                    (real?/c
                                                                     j7413
                                                                     k7414
                                                                     x8087))))
                                                          (letrec ((g8089
                                                                    (letrec ((checked7416
                                                                              (letrec ((x8090
                                                                                        (letrec ((x8091
                                                                                                  (letrec ((x8092
                                                                                                            (orig-cdr
                                                                                                             v7412)))
                                                                                                    (orig-cdr
                                                                                                     x8092))))
                                                                                          (orig-car
                                                                                           x8091))))
                                                                                (real?/c
                                                                                 j7413
                                                                                 k7414
                                                                                 x8090))))
                                                                      (letrec ((g8093
                                                                                (letrec ((x8094
                                                                                          (letrec ((x8095
                                                                                                    (cons
                                                                                                     checked7416
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7415
                                                                                             x8095))))
                                                                                  (cons
                                                                                   posn
                                                                                   x8094))))
                                                                        g8093))))
                                                            g8089))))
                                                g8086)))
                                           (SNAKE/C
                                            (lambda (j7419 k7420 v7418)
                                              (letrec ((g8096
                                                        (letrec ((checked7421
                                                                  (letrec ((x8097
                                                                            (letrec ((x8098
                                                                                      (orig-cdr
                                                                                       v7418)))
                                                                              (orig-car
                                                                               x8098))))
                                                                    (DIR/C
                                                                     j7419
                                                                     k7420
                                                                     x8097))))
                                                          (letrec ((g8099
                                                                    (letrec ((checked7422
                                                                              (letrec ((x8103
                                                                                        (letrec ((x8104
                                                                                                  (listof
                                                                                                   POSN/C)))
                                                                                          (and/c
                                                                                           cons?/c
                                                                                           x8104)))
                                                                                       (x8100
                                                                                        (letrec ((x8101
                                                                                                  (letrec ((x8102
                                                                                                            (orig-cdr
                                                                                                             v7418)))
                                                                                                    (orig-cdr
                                                                                                     x8102))))
                                                                                          (orig-car
                                                                                           x8101))))
                                                                                (x8103
                                                                                 j7419
                                                                                 k7420
                                                                                 x8100))))
                                                                      (letrec ((g8105
                                                                                (letrec ((x8106
                                                                                          (letrec ((x8107
                                                                                                    (cons
                                                                                                     checked7422
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7421
                                                                                             x8107))))
                                                                                  (cons
                                                                                   snake
                                                                                   x8106))))
                                                                        g8105))))
                                                            g8099))))
                                                g8096)))
                                           (WORLD/C
                                            (lambda (j7425 k7426 v7424)
                                              (letrec ((g8108
                                                        (letrec ((checked7427
                                                                  (letrec ((x8109
                                                                            (letrec ((x8110
                                                                                      (orig-cdr
                                                                                       v7424)))
                                                                              (orig-car
                                                                               x8110))))
                                                                    (SNAKE/C
                                                                     j7425
                                                                     k7426
                                                                     x8109))))
                                                          (letrec ((g8111
                                                                    (letrec ((checked7428
                                                                              (letrec ((x8112
                                                                                        (letrec ((x8113
                                                                                                  (letrec ((x8114
                                                                                                            (orig-cdr
                                                                                                             v7424)))
                                                                                                    (orig-cdr
                                                                                                     x8114))))
                                                                                          (orig-car
                                                                                           x8113))))
                                                                                (POSN/C
                                                                                 j7425
                                                                                 k7426
                                                                                 x8112))))
                                                                      (letrec ((g8115
                                                                                (letrec ((x8116
                                                                                          (letrec ((x8117
                                                                                                    (cons
                                                                                                     checked7428
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7427
                                                                                             x8117))))
                                                                                  (cons
                                                                                   world
                                                                                   x8116))))
                                                                        g8115))))
                                                            g8111))))
                                                g8108)))
                                           (GRID-SIZE 30)
                                           (BOARD-HEIGHT 20)
                                           (BOARD-WIDTH 30)
                                           (BOARD-HEIGHT-PIXELS
                                            (* GRID-SIZE BOARD-HEIGHT))
                                           (BOARD-WIDTH-PIXELS
                                            (* GRID-SIZE BOARD-WIDTH))
                                           (BACKGROUND
                                            (empty-scene
                                             BOARD-WIDTH-PIXELS
                                             BOARD-HEIGHT-PIXELS))
                                           (SEGMENT-RADIUS (/ GRID-SIZE 2))
                                           (SEGMENT-IMAGE
                                            (circle
                                             SEGMENT-RADIUS
                                             "solid"
                                             "red"))
                                           (FOOD-RADIUS SEGMENT-RADIUS)
                                           (FOOD-IMAGE
                                            (circle
                                             FOOD-RADIUS
                                             "solid"
                                             "green"))
                                           (WORLD
                                            (letrec ((x8119
                                                      (letrec ((x8120
                                                                (letrec ((x8121
                                                                          (posn
                                                                           5
                                                                           3)))
                                                                  (cons
                                                                   x8121
                                                                   empty))))
                                                        (snake 'right x8120)))
                                                     (x8118 (posn 8 12)))
                                              (world x8119 x8118)))
                                           (snake-wall-collide?
                                            (lambda (snk)
                                              (letrec ((g8122
                                                        (letrec ((x8123
                                                                  (letrec ((x8124
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x8124))))
                                                          (head-collide?
                                                           x8123))))
                                                g8122)))
                                           (head-collide?
                                            (lambda (p)
                                              (letrec ((g8125
                                                        (letrec ((val7262
                                                                  (letrec ((x8126
                                                                            (posn-x
                                                                             p)))
                                                                    (<=
                                                                     x8126
                                                                     0))))
                                                          (letrec ((g8127
                                                                    (if val7262
                                                                      val7262
                                                                      (letrec ((val7263
                                                                                (letrec ((x8128
                                                                                          (posn-x
                                                                                           p)))
                                                                                  (>=
                                                                                   x8128
                                                                                   BOARD-WIDTH))))
                                                                        (letrec ((g8129
                                                                                  (if val7263
                                                                                    val7263
                                                                                    (letrec ((val7264
                                                                                              (letrec ((x8130
                                                                                                        (posn-y
                                                                                                         p)))
                                                                                                (<=
                                                                                                 x8130
                                                                                                 0))))
                                                                                      (letrec ((g8131
                                                                                                (if val7264
                                                                                                  val7264
                                                                                                  (letrec ((x8132
                                                                                                            (posn-y
                                                                                                             p)))
                                                                                                    (>=
                                                                                                     x8132
                                                                                                     BOARD-HEIGHT)))))
                                                                                        g8131)))))
                                                                          g8129)))))
                                                            g8127))))
                                                g8125)))
                                           (snake-self-collide?
                                            (lambda (snk)
                                              (letrec ((g8133
                                                        (letrec ((x8136
                                                                  (letrec ((x8137
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x8137)))
                                                                 (x8134
                                                                  (letrec ((x8135
                                                                            (snake-segs
                                                                             snk)))
                                                                    (cdr
                                                                     x8135))))
                                                          (segs-self-collide?
                                                           x8136
                                                           x8134))))
                                                g8133)))
                                           (segs-self-collide?
                                            (lambda (h segs)
                                              (letrec ((g8138
                                                        (letrec ((x-cnd8139
                                                                  (empty?
                                                                   segs)))
                                                          (if x-cnd8139
                                                            (letrec ((g8140
                                                                      #f))
                                                              g8140)
                                                            (letrec ((g8141
                                                                      (letrec ((x8144
                                                                                (letrec ((x8145
                                                                                          (car
                                                                                           segs)))
                                                                                  (posn=?
                                                                                   x8145
                                                                                   h)))
                                                                               (x8142
                                                                                (letrec ((x8143
                                                                                          (cdr
                                                                                           segs)))
                                                                                  (segs-self-collide?
                                                                                   h
                                                                                   x8143))))
                                                                        (or x8144
                                                                            x8142))))
                                                              g8141)))))
                                                g8138)))
                                           (cut-tail
                                            (lambda (segs)
                                              (letrec ((g8146
                                                        (letrec ((r
                                                                  (cdr segs)))
                                                          (letrec ((g8147
                                                                    (letrec ((x-cnd8148
                                                                              (empty?
                                                                               r)))
                                                                      (if x-cnd8148
                                                                        (letrec ((g8149
                                                                                  empty))
                                                                          g8149)
                                                                        (letrec ((g8150
                                                                                  (letrec ((x8152
                                                                                            (car
                                                                                             segs))
                                                                                           (x8151
                                                                                            (cut-tail
                                                                                             r)))
                                                                                    (cons
                                                                                     x8152
                                                                                     x8151))))
                                                                          g8150)))))
                                                            g8147))))
                                                g8146)))
                                           (next-head
                                            (lambda (seg dir)
                                              (letrec ((g8153
                                                        (letrec ((x-cnd8154
                                                                  (equal?
                                                                   'right
                                                                   dir)))
                                                          (if x-cnd8154
                                                            (letrec ((g8155
                                                                      (letrec ((x8157
                                                                                (letrec ((x8158
                                                                                          (posn-x
                                                                                           seg)))
                                                                                  (add1
                                                                                   x8158)))
                                                                               (x8156
                                                                                (posn-y
                                                                                 seg)))
                                                                        (posn
                                                                         x8157
                                                                         x8156))))
                                                              g8155)
                                                            (letrec ((x-cnd8159
                                                                      (equal?
                                                                       'left
                                                                       dir)))
                                                              (if x-cnd8159
                                                                (letrec ((g8160
                                                                          (letrec ((x8162
                                                                                    (letrec ((x8163
                                                                                              (posn-x
                                                                                               seg)))
                                                                                      (sub1
                                                                                       x8163)))
                                                                                   (x8161
                                                                                    (posn-y
                                                                                     seg)))
                                                                            (posn
                                                                             x8162
                                                                             x8161))))
                                                                  g8160)
                                                                (letrec ((x-cnd8164
                                                                          (equal?
                                                                           'down
                                                                           dir)))
                                                                  (if x-cnd8164
                                                                    (letrec ((g8165
                                                                              (letrec ((x8168
                                                                                        (posn-x
                                                                                         seg))
                                                                                       (x8166
                                                                                        (letrec ((x8167
                                                                                                  (posn-y
                                                                                                   seg)))
                                                                                          (sub1
                                                                                           x8167))))
                                                                                (posn
                                                                                 x8168
                                                                                 x8166))))
                                                                      g8165)
                                                                    (letrec ((g8169
                                                                              (letrec ((x8172
                                                                                        (posn-x
                                                                                         seg))
                                                                                       (x8170
                                                                                        (letrec ((x8171
                                                                                                  (posn-y
                                                                                                   seg)))
                                                                                          (add1
                                                                                           x8171))))
                                                                                (posn
                                                                                 x8172
                                                                                 x8170))))
                                                                      g8169)))))))))
                                                g8153)))
                                           (snake-slither
                                            (lambda (snk)
                                              (letrec ((g8173
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g8174
                                                                    (letrec ((x8175
                                                                              (letrec ((x8178
                                                                                        (letrec ((x8179
                                                                                                  (letrec ((x8180
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x8180))))
                                                                                          (next-head
                                                                                           x8179
                                                                                           d)))
                                                                                       (x8176
                                                                                        (letrec ((x8177
                                                                                                  (snake-segs
                                                                                                   snk)))
                                                                                          (cut-tail
                                                                                           x8177))))
                                                                                (cons
                                                                                 x8178
                                                                                 x8176))))
                                                                      (snake
                                                                       d
                                                                       x8175))))
                                                            g8174))))
                                                g8173)))
                                           (snake-grow
                                            (lambda (snk)
                                              (letrec ((g8181
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g8182
                                                                    (letrec ((x8183
                                                                              (letrec ((x8185
                                                                                        (letrec ((x8186
                                                                                                  (letrec ((x8187
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x8187))))
                                                                                          (next-head
                                                                                           x8186
                                                                                           d)))
                                                                                       (x8184
                                                                                        (snake-segs
                                                                                         snk)))
                                                                                (cons
                                                                                 x8185
                                                                                 x8184))))
                                                                      (snake
                                                                       d
                                                                       x8183))))
                                                            g8182))))
                                                g8181)))
                                           (world->world
                                            (lambda (w)
                                              (letrec ((g8188
                                                        (letrec ((x-cnd8189
                                                                  (eating? w)))
                                                          (if x-cnd8189
                                                            (letrec ((g8190
                                                                      (snake-eat
                                                                       w)))
                                                              g8190)
                                                            (letrec ((g8191
                                                                      (letrec ((x8193
                                                                                (letrec ((x8194
                                                                                          (world-snake
                                                                                           w)))
                                                                                  (snake-slither
                                                                                   x8194)))
                                                                               (x8192
                                                                                (world-food
                                                                                 w)))
                                                                        (world
                                                                         x8193
                                                                         x8192))))
                                                              g8191)))))
                                                g8188)))
                                           (eating?
                                            (lambda (w)
                                              (letrec ((g8195
                                                        (letrec ((x8199
                                                                  (world-food
                                                                   w))
                                                                 (x8196
                                                                  (letrec ((x8197
                                                                            (letrec ((x8198
                                                                                      (world-snake
                                                                                       w)))
                                                                              (snake-segs
                                                                               x8198))))
                                                                    (car
                                                                     x8197))))
                                                          (posn=?
                                                           x8199
                                                           x8196))))
                                                g8195)))
                                           (snake-change-direction
                                            (lambda (snk dir)
                                              (letrec ((g8200
                                                        (letrec ((x8201
                                                                  (snake-segs
                                                                   snk)))
                                                          (snake dir x8201))))
                                                g8200)))
                                           (world-change-dir
                                            (lambda (w dir)
                                              (letrec ((g8202
                                                        (letrec ((x8204
                                                                  (letrec ((x8205
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-change-direction
                                                                     x8205
                                                                     dir)))
                                                                 (x8203
                                                                  (world-food
                                                                   w)))
                                                          (world
                                                           x8204
                                                           x8203))))
                                                g8202)))
                                           (snake-eat
                                            (lambda (w)
                                              (letrec ((g8206
                                                        (letrec ((x8210
                                                                  (letrec ((x8211
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-grow
                                                                     x8211)))
                                                                 (x8207
                                                                  (letrec ((x8209
                                                                            (-
                                                                             BOARD-WIDTH
                                                                             1))
                                                                           (x8208
                                                                            (-
                                                                             BOARD-HEIGHT
                                                                             1)))
                                                                    (posn
                                                                     x8209
                                                                     x8208))))
                                                          (world
                                                           x8210
                                                           x8207))))
                                                g8206)))
                                           (handle-key
                                            (lambda (w ke)
                                              (letrec ((g8212
                                                        (letrec ((x-cnd8213
                                                                  (equal?
                                                                   ke
                                                                   "w")))
                                                          (if x-cnd8213
                                                            (letrec ((g8214
                                                                      (world-change-dir
                                                                       w
                                                                       'up)))
                                                              g8214)
                                                            (letrec ((x-cnd8215
                                                                      (equal?
                                                                       ke
                                                                       "s")))
                                                              (if x-cnd8215
                                                                (letrec ((g8216
                                                                          (world-change-dir
                                                                           w
                                                                           'down)))
                                                                  g8216)
                                                                (letrec ((x-cnd8217
                                                                          (equal?
                                                                           ke
                                                                           "a")))
                                                                  (if x-cnd8217
                                                                    (letrec ((g8218
                                                                              (world-change-dir
                                                                               w
                                                                               'left)))
                                                                      g8218)
                                                                    (letrec ((x-cnd8219
                                                                              (equal?
                                                                               ke
                                                                               "d")))
                                                                      (if x-cnd8219
                                                                        (letrec ((g8220
                                                                                  (world-change-dir
                                                                                   w
                                                                                   'right)))
                                                                          g8220)
                                                                        (letrec ((g8221
                                                                                  w))
                                                                          g8221)))))))))))
                                                g8212)))
                                           (game-over?
                                            (lambda (w)
                                              (letrec ((g8222
                                                        (letrec ((val7265
                                                                  (letrec ((x8223
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-wall-collide?
                                                                     x8223))))
                                                          (letrec ((g8224
                                                                    (if val7265
                                                                      val7265
                                                                      (letrec ((x8225
                                                                                (world-snake
                                                                                 w)))
                                                                        (snake-self-collide?
                                                                         x8225)))))
                                                            g8224))))
                                                g8222)))
                                           (world->scene
                                            (lambda (w)
                                              (letrec ((g8226
                                                        (letrec ((x8229
                                                                  (world-snake
                                                                   w))
                                                                 (x8227
                                                                  (letrec ((x8228
                                                                            (world-food
                                                                             w)))
                                                                    (food+scene
                                                                     x8228
                                                                     BACKGROUND))))
                                                          (snake+scene
                                                           x8229
                                                           x8227))))
                                                g8226)))
                                           (food+scene
                                            (lambda (f scn)
                                              (letrec ((g8230
                                                        (letrec ((x8232
                                                                  (posn-x f))
                                                                 (x8231
                                                                  (posn-y f)))
                                                          (place-image-on-grid
                                                           FOOD-IMAGE
                                                           x8232
                                                           x8231
                                                           scn))))
                                                g8230)))
                                           (place-image-on-grid
                                            (lambda (img x y scn)
                                              (letrec ((g8233
                                                        (letrec ((x8236
                                                                  (*
                                                                   GRID-SIZE
                                                                   x))
                                                                 (x8234
                                                                  (letrec ((x8235
                                                                            (*
                                                                             GRID-SIZE
                                                                             y)))
                                                                    (-
                                                                     BOARD-HEIGHT-PIXELS
                                                                     x8235))))
                                                          (place-image
                                                           img
                                                           x8236
                                                           x8234
                                                           scn))))
                                                g8233)))
                                           (snake+scene
                                            (lambda (snk scn)
                                              (letrec ((g8237
                                                        (letrec ((x8238
                                                                  (snake-segs
                                                                   snk)))
                                                          (segments+scene
                                                           x8238
                                                           scn))))
                                                g8237)))
                                           (segments+scene
                                            (lambda (segs scn)
                                              (letrec ((g8239
                                                        (letrec ((x-cnd8240
                                                                  (empty?
                                                                   segs)))
                                                          (if x-cnd8240
                                                            (letrec ((g8241
                                                                      scn))
                                                              g8241)
                                                            (letrec ((g8242
                                                                      (letrec ((x8245
                                                                                (cdr
                                                                                 segs))
                                                                               (x8243
                                                                                (letrec ((x8244
                                                                                          (car
                                                                                           segs)))
                                                                                  (segment+scene
                                                                                   x8244
                                                                                   scn))))
                                                                        (segments+scene
                                                                         x8245
                                                                         x8243))))
                                                              g8242)))))
                                                g8239)))
                                           (segment+scene
                                            (lambda (seg scn)
                                              (letrec ((g8246
                                                        (letrec ((x8248
                                                                  (posn-x seg))
                                                                 (x8247
                                                                  (posn-y
                                                                   seg)))
                                                          (place-image-on-grid
                                                           SEGMENT-IMAGE
                                                           x8248
                                                           x8247
                                                           scn))))
                                                g8246))))
                                    (letrec ((g8249
                                              (parallel
                                               (parallel
                                                (letrec ((xj7430 (loc 'module))
                                                         (xk7431
                                                          (loc 'importer)))
                                                  (letrec ((g8250
                                                            (real?/c
                                                             xj7430
                                                             xk7431
                                                             GRID-SIZE)))
                                                    g8250))
                                                (letrec ((xj7432 (loc 'module))
                                                         (xk7433
                                                          (loc 'importer)))
                                                  (letrec ((g8251
                                                            (real?/c
                                                             xj7432
                                                             xk7433
                                                             BOARD-HEIGHT-PIXELS)))
                                                    g8251))
                                                (letrec ((xj7434 (loc 'module))
                                                         (xk7435
                                                          (loc 'importer)))
                                                  (letrec ((g8252
                                                            (real?/c
                                                             xj7434
                                                             xk7435
                                                             BOARD-WIDTH)))
                                                    g8252))
                                                (letrec ((xj7436 (loc 'module))
                                                         (xk7437
                                                          (loc 'importer)))
                                                  (letrec ((g8253
                                                            (real?/c
                                                             xj7436
                                                             xk7437
                                                             BOARD-HEIGHT)))
                                                    g8253))))))
                                      g8249))))
                          g7482))))
              g7465)))
    g7464))
