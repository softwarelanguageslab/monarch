(letrec ((any? (lambda (v) (letrec ((g7443 #t)) g7443)))
         (meta (lambda (v) (letrec ((g7444 v)) g7444)))
         (member
          (lambda (v lst)
            (letrec ((g7445
                      (letrec ((g7446
                                (letrec ((x-e7447 lst))
                                  (match
                                   x-e7447
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7448 (eq? v v1)))
                                       (if x-cnd7448 #t (member v vs)))))))))
                        g7446)))
              g7445)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7449 (lambda (v) (letrec ((g7450 v)) g7450)))) g7449)))
         (nonzero?
          (lambda (v)
            (letrec ((g7451 (letrec ((x7452 (= v 0))) (not x7452)))) g7451))))
  (letrec ((g7453
            (letrec ((g7454
                      (letrec ((assert
                                (lambda (cnd)
                                  (letrec ((g7455
                                            (if cnd
                                              '()
                                              (error "assertion failed"))))
                                    g7455)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7456
                                            (letrec ((x7458 (number? x)))
                                              (assert x7458)))
                                           (g7457
                                            (letrec ((val7244 (> x y)))
                                              (letrec ((g7459
                                                        (if val7244
                                                          val7244
                                                          (letrec ((val7245
                                                                    (= x y)))
                                                            (letrec ((g7460
                                                                      (if val7245
                                                                        val7245
                                                                        #f)))
                                                              g7460)))))
                                                g7459))))
                                    g7457)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7461
                                            (letrec ((x7463 (number? x)))
                                              (assert x7463)))
                                           (g7462
                                            (letrec ((val7246 (< x y)))
                                              (letrec ((g7464
                                                        (if val7246
                                                          val7246
                                                          (letrec ((val7247
                                                                    (= x y)))
                                                            (letrec ((g7465
                                                                      (if val7247
                                                                        val7247
                                                                        #f)))
                                                              g7465)))))
                                                g7464))))
                                    g7462)))
                               (>
                                (lambda (x y)
                                  (letrec ((g7466
                                            (letrec ((x7468 (number? x)))
                                              (assert x7468)))
                                           (g7467
                                            (letrec ((x7469 (<= x y)))
                                              (not x7469))))
                                    g7467)))
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
                        (letrec ((g7470 '())
                                 (g7471
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7472
                                                        (lambda (k j lst)
                                                          (letrec ((g7473
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7474
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7474))
                                                                     lst)))
                                                            g7473))))
                                                g7472)))
                                           (real?/c
                                            (lambda (g7263 g7264 g7265)
                                              (letrec ((g7475
                                                        (letrec ((x-cnd7476
                                                                  (real?
                                                                   g7265)))
                                                          (if x-cnd7476
                                                            g7265
                                                            (blame
                                                             g7263
                                                             'real?)))))
                                                g7475)))
                                           (boolean?/c
                                            (lambda (g7266 g7267 g7268)
                                              (letrec ((g7477
                                                        (letrec ((x-cnd7478
                                                                  (boolean?
                                                                   g7268)))
                                                          (if x-cnd7478
                                                            g7268
                                                            (blame
                                                             g7266
                                                             'boolean?)))))
                                                g7477)))
                                           (number?/c
                                            (lambda (g7269 g7270 g7271)
                                              (letrec ((g7479
                                                        (letrec ((x-cnd7480
                                                                  (number?
                                                                   g7271)))
                                                          (if x-cnd7480
                                                            g7271
                                                            (blame
                                                             g7269
                                                             'number?)))))
                                                g7479)))
                                           (any/c
                                            (lambda (g7272 g7273 g7274)
                                              (letrec ((g7481
                                                        (letrec ((x-cnd7482
                                                                  ((lambda (v)
                                                                     (letrec ((g7483
                                                                               #t))
                                                                       g7483))
                                                                   g7274)))
                                                          (if x-cnd7482
                                                            g7274
                                                            (blame
                                                             g7272
                                                             '(lambda (v)
                                                                #t))))))
                                                g7481)))
                                           (any?/c
                                            (lambda (g7275 g7276 g7277)
                                              (letrec ((g7484
                                                        (letrec ((x-cnd7485
                                                                  ((lambda (v)
                                                                     (letrec ((g7486
                                                                               #t))
                                                                       g7486))
                                                                   g7277)))
                                                          (if x-cnd7485
                                                            g7277
                                                            (blame
                                                             g7275
                                                             '(lambda (v)
                                                                #t))))))
                                                g7484)))
                                           (cons?/c
                                            (lambda (g7278 g7279 g7280)
                                              (letrec ((g7487
                                                        (letrec ((x-cnd7488
                                                                  (pair?
                                                                   g7280)))
                                                          (if x-cnd7488
                                                            g7280
                                                            (blame
                                                             g7278
                                                             'pair?)))))
                                                g7487)))
                                           (cons/c
                                            (lambda (k1 k2)
                                              (letrec ((g7489
                                                        (lambda (k j v)
                                                          (letrec ((g7490
                                                                    (letrec ((x7493
                                                                              (letrec ((x7494
                                                                                        (car
                                                                                         v)))
                                                                                (k1
                                                                                 k
                                                                                 j
                                                                                 x7494)))
                                                                             (x7491
                                                                              (letrec ((x7492
                                                                                        (cdr
                                                                                         v)))
                                                                                (k2
                                                                                 k
                                                                                 j
                                                                                 x7492))))
                                                                      (cons
                                                                       x7493
                                                                       x7491))))
                                                            g7490))))
                                                g7489)))
                                           (pair?/c
                                            (lambda (g7281 g7282 g7283)
                                              (letrec ((g7495
                                                        (letrec ((x-cnd7496
                                                                  (pair?
                                                                   g7283)))
                                                          (if x-cnd7496
                                                            g7283
                                                            (blame
                                                             g7281
                                                             'pair?)))))
                                                g7495)))
                                           (integer?/c
                                            (lambda (g7284 g7285 g7286)
                                              (letrec ((g7497
                                                        (letrec ((x-cnd7498
                                                                  (integer?
                                                                   g7286)))
                                                          (if x-cnd7498
                                                            g7286
                                                            (blame
                                                             g7284
                                                             'integer?)))))
                                                g7497)))
                                           (symbol?/c
                                            (lambda (g7287 g7288 g7289)
                                              (letrec ((g7499
                                                        (letrec ((x-cnd7500
                                                                  (symbol?
                                                                   g7289)))
                                                          (if x-cnd7500
                                                            g7289
                                                            (blame
                                                             g7287
                                                             'symbol?)))))
                                                g7499)))
                                           (string?/c
                                            (lambda (g7290 g7291 g7292)
                                              (letrec ((g7501
                                                        (letrec ((x-cnd7502
                                                                  (string?
                                                                   g7292)))
                                                          (if x-cnd7502
                                                            g7292
                                                            (blame
                                                             g7290
                                                             'string?)))))
                                                g7501)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7503
                                                        (lambda (k j v)
                                                          (letrec ((g7504
                                                                    (letrec ((x-cnd7505
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7505
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7504))))
                                                g7503)))
                                           (or/c
                                            (lambda (c1 c2)
                                              (letrec ((g7506
                                                        (lambda (k j v)
                                                          (letrec ((g7507
                                                                    (letrec ((val7248
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (letrec ((g7508
                                                                                (if val7248
                                                                                  val7248
                                                                                  (c2
                                                                                   k
                                                                                   j
                                                                                   v))))
                                                                        g7508))))
                                                            g7507))))
                                                g7506)))
                                           (null?/c
                                            (lambda (g7293 g7294 g7295)
                                              (letrec ((g7509
                                                        (letrec ((x-cnd7510
                                                                  (null?
                                                                   g7295)))
                                                          (if x-cnd7510
                                                            g7295
                                                            (blame
                                                             g7293
                                                             'null?)))))
                                                g7509)))
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
                                           (add1
                                            (lambda (x)
                                              (letrec ((g7596 (+ x 1)))
                                                g7596)))
                                           (/
                                            (letrec ((xj7363 'server)
                                                     (xk7364 'client))
                                              (letrec ((g7597
                                                        ((lambda (j7367
                                                                  k7368
                                                                  f7369)
                                                           (letrec ((g7599
                                                                     (lambda (g7365
                                                                              g7366)
                                                                       (letrec ((g7600
                                                                                 (letrec ((x7601
                                                                                           (letrec ((x7603
                                                                                                     (number?/c
                                                                                                      j7367
                                                                                                      k7368
                                                                                                      g7365))
                                                                                                    (x7602
                                                                                                     (number?/c
                                                                                                      j7367
                                                                                                      k7368
                                                                                                      g7366)))
                                                                                             (f7369
                                                                                              x7603
                                                                                              x7602))))
                                                                                   (number?/c
                                                                                    j7367
                                                                                    k7368
                                                                                    x7601))))
                                                                         g7600))))
                                                             g7599))
                                                         xj7363
                                                         xk7364
                                                         (lambda (a b)
                                                           (letrec ((g7598
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7598)))))
                                                g7597)))
                                           (car
                                            (letrec ((xj7370 'server)
                                                     (xk7371 'client))
                                              (letrec ((g7604
                                                        ((lambda (j7373
                                                                  k7374
                                                                  f7375)
                                                           (letrec ((g7606
                                                                     (lambda (g7372)
                                                                       (letrec ((g7607
                                                                                 (letrec ((x7608
                                                                                           (letrec ((x7609
                                                                                                     (pair?/c
                                                                                                      j7373
                                                                                                      k7374
                                                                                                      g7372)))
                                                                                             (f7375
                                                                                              x7609))))
                                                                                   (any/c
                                                                                    j7373
                                                                                    k7374
                                                                                    x7608))))
                                                                         g7607))))
                                                             g7606))
                                                         xj7370
                                                         xk7371
                                                         (lambda (p)
                                                           (letrec ((g7605
                                                                     (orig-car
                                                                      p)))
                                                             g7605)))))
                                                g7604)))
                                           (cdr
                                            (letrec ((xj7376 'server)
                                                     (xk7377 'client))
                                              (letrec ((g7610
                                                        ((lambda (j7379
                                                                  k7380
                                                                  f7381)
                                                           (letrec ((g7612
                                                                     (lambda (g7378)
                                                                       (letrec ((g7613
                                                                                 (letrec ((x7614
                                                                                           (letrec ((x7615
                                                                                                     (pair?/c
                                                                                                      j7379
                                                                                                      k7380
                                                                                                      g7378)))
                                                                                             (f7381
                                                                                              x7615))))
                                                                                   (any/c
                                                                                    j7379
                                                                                    k7380
                                                                                    x7614))))
                                                                         g7613))))
                                                             g7612))
                                                         xj7376
                                                         xk7377
                                                         (lambda (p)
                                                           (letrec ((g7611
                                                                     (orig-cdr
                                                                      p)))
                                                             g7611)))))
                                                g7610)))
                                           (cons
                                            (letrec ((xj7382 'server)
                                                     (xk7383 'client))
                                              (letrec ((g7616
                                                        ((lambda (j7386
                                                                  k7387
                                                                  f7388)
                                                           (letrec ((g7618
                                                                     (lambda (g7384
                                                                              g7385)
                                                                       (letrec ((g7619
                                                                                 (letrec ((x7620
                                                                                           (letrec ((x7622
                                                                                                     (any/c
                                                                                                      j7386
                                                                                                      k7387
                                                                                                      g7384))
                                                                                                    (x7621
                                                                                                     (any/c
                                                                                                      j7386
                                                                                                      k7387
                                                                                                      g7385)))
                                                                                             (f7388
                                                                                              x7622
                                                                                              x7621))))
                                                                                   (pair?/c
                                                                                    j7386
                                                                                    k7387
                                                                                    x7620))))
                                                                         g7619))))
                                                             g7618))
                                                         xj7382
                                                         xk7383
                                                         (lambda (a b)
                                                           (letrec ((g7617
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7617)))))
                                                g7616)))
                                           (vector-ref
                                            (letrec ((xj7389 'server)
                                                     (xk7390 'client))
                                              (letrec ((g7623
                                                        ((lambda (j7392
                                                                  k7393
                                                                  f7394)
                                                           (letrec ((g7625
                                                                     (lambda (g7391)
                                                                       (letrec ((g7626
                                                                                 (letrec ((x7627
                                                                                           (letrec ((x7628
                                                                                                     (vector?/c
                                                                                                      j7392
                                                                                                      k7393
                                                                                                      g7391)))
                                                                                             (f7394
                                                                                              x7628))))
                                                                                   (integer?/c
                                                                                    j7392
                                                                                    k7393
                                                                                    x7627))))
                                                                         g7626))))
                                                             g7625))
                                                         xj7389
                                                         xk7390
                                                         (lambda (v i)
                                                           (letrec ((g7624
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7624)))))
                                                g7623)))
                                           (vector-set!
                                            (letrec ((xj7395 'server)
                                                     (xk7396 'client))
                                              (letrec ((g7629
                                                        ((lambda (j7399
                                                                  k7400
                                                                  f7401)
                                                           (letrec ((g7631
                                                                     (lambda (g7397
                                                                              g7398)
                                                                       (letrec ((g7632
                                                                                 (letrec ((x7633
                                                                                           (letrec ((x7635
                                                                                                     (vector?/c
                                                                                                      j7399
                                                                                                      k7400
                                                                                                      g7397))
                                                                                                    (x7634
                                                                                                     (integer?/c
                                                                                                      j7399
                                                                                                      k7400
                                                                                                      g7398)))
                                                                                             (f7401
                                                                                              x7635
                                                                                              x7634))))
                                                                                   (any/c
                                                                                    j7399
                                                                                    k7400
                                                                                    x7633))))
                                                                         g7632))))
                                                             g7631))
                                                         xj7395
                                                         xk7396
                                                         (lambda (vec i v)
                                                           (letrec ((g7630
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7630)))))
                                                g7629)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7636
                                                        (letrec ((x7637
                                                                  (letrec ((x7638
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7638))))
                                                          (cdr x7637))))
                                                g7636)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7639
                                                        (letrec ((x7642
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7642)))
                                                       (g7640
                                                        (letrec ((x7643
                                                                  (list? l)))
                                                          (assert x7643)))
                                                       (g7641
                                                        (letrec ((x-cnd7644
                                                                  (null? l)))
                                                          (if x-cnd7644
                                                            '()
                                                            (letrec ((x7647
                                                                      (letrec ((x7648
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7648)))
                                                                     (x7645
                                                                      (letrec ((x7646
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7646))))
                                                              (cons
                                                               x7647
                                                               x7645))))))
                                                g7641)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7649
                                                        (letrec ((x7650
                                                                  (car x)))
                                                          (cdr x7650))))
                                                g7649)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7651
                                                        (letrec ((x7652
                                                                  (letrec ((x7653
                                                                            (letrec ((x7654
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7654))))
                                                                    (cdr
                                                                     x7653))))
                                                          (car x7652))))
                                                g7651)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7655
                                                        (letrec ((x7656
                                                                  (letrec ((x7657
                                                                            (letrec ((x7658
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7658))))
                                                                    (car
                                                                     x7657))))
                                                          (cdr x7656))))
                                                g7655)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7659
                                                        (letrec ((x7662
                                                                  (string?
                                                                   filename)))
                                                          (assert x7662)))
                                                       (g7660
                                                        (letrec ((x7663
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7663)))
                                                       (g7661
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7664
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7665 res))
                                                            g7665))))
                                                g7661)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7666
                                                        (letrec ((x7667
                                                                  (letrec ((x7668
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7668))))
                                                          (car x7667))))
                                                g7666)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7669
                                                        (letrec ((x7670
                                                                  (letrec ((x7671
                                                                            (letrec ((x7672
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7672))))
                                                                    (car
                                                                     x7671))))
                                                          (cdr x7670))))
                                                g7669)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7673
                                                        (letrec ((x7675
                                                                  (list? l)))
                                                          (assert x7675)))
                                                       (g7674
                                                        (letrec ((x-cnd7676
                                                                  (null? l)))
                                                          (if x-cnd7676
                                                            #f
                                                            (letrec ((x-cnd7677
                                                                      (letrec ((x7678
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7678
                                                                         k))))
                                                              (if x-cnd7677
                                                                (car l)
                                                                (letrec ((x7679
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7679))))))))
                                                g7674)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7680
                                                        (letrec ((x7681
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7681))))
                                                g7680)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7682
                                                        (letrec ((x7684
                                                                  (list? l)))
                                                          (assert x7684)))
                                                       (g7683
                                                        (letrec ((x-cnd7685
                                                                  (null? l)))
                                                          (if x-cnd7685
                                                            ""
                                                            (letrec ((x7688
                                                                      (letrec ((x7689
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7689)))
                                                                     (x7686
                                                                      (letrec ((x7687
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7687))))
                                                              (string-append
                                                               x7688
                                                               x7686))))))
                                                g7683)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7690
                                                        (letrec ((x7693
                                                                  (char? c1)))
                                                          (assert x7693)))
                                                       (g7691
                                                        (letrec ((x7694
                                                                  (char? c2)))
                                                          (assert x7694)))
                                                       (g7692
                                                        (letrec ((val7249
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7695
                                                                    (if val7249
                                                                      val7249
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7695))))
                                                g7692)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7696
                                                        (letrec ((x7697
                                                                  (letrec ((x7698
                                                                            (letrec ((x7699
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7699))))
                                                                    (cdr
                                                                     x7698))))
                                                          (cdr x7697))))
                                                g7696)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7700
                                                        (letrec ((x7703
                                                                  (list? l)))
                                                          (assert x7703)))
                                                       (g7701
                                                        (letrec ((x7704
                                                                  (number?)))
                                                          (assert x7704)))
                                                       (g7702
                                                        (letrec ((x-cnd7705
                                                                  (zero? k)))
                                                          (if x-cnd7705
                                                            x
                                                            (letrec ((x7707
                                                                      (cdr x))
                                                                     (x7706
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7707
                                                               x7706))))))
                                                g7702)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7708 '())) g7708)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7709
                                                        (letrec ((x-cnd7710
                                                                  (letrec ((x7711
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7711))))
                                                          (if x-cnd7710
                                                            (letrec ((x7712
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7712))
                                                            #f))))
                                                g7709)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7713
                                                        (letrec ((val7250
                                                                  (letrec ((x7714
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7714
                                                                     9))))
                                                          (letrec ((g7715
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (letrec ((x7716
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7716
                                                                                   10))))
                                                                        (letrec ((g7717
                                                                                  (if val7251
                                                                                    val7251
                                                                                    (letrec ((x7718
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7718
                                                                                       32)))))
                                                                          g7717)))))
                                                            g7715))))
                                                g7713)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7719
                                                        (letrec ((x7720
                                                                  (letrec ((x7721
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7721))))
                                                          (cdr x7720))))
                                                g7719)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7722
                                                        (letrec ((x7724
                                                                  (number? x)))
                                                          (assert x7724)))
                                                       (g7723 (> x 0)))
                                                g7723)))
                                           (string=?
                                            (lambda (s1 s2)
                                              (letrec ((g7725 (bool-top)))
                                                g7725)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7726 #f)) g7726)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7727
                                                        (letrec ((x7728
                                                                  (cdr x)))
                                                          (cdr x7728))))
                                                g7727)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7729
                                                        (letrec ((x7731
                                                                  (number? x)))
                                                          (assert x7731)))
                                                       (g7730
                                                        (letrec ((x-cnd7732
                                                                  (< x 0)))
                                                          (if x-cnd7732
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7730)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7733
                                                        (letrec ((val7252
                                                                  (eq? a b)))
                                                          (letrec ((g7734
                                                                    (if val7252
                                                                      val7252
                                                                      (letrec ((val7253
                                                                                (letrec ((x-cnd7735
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7735
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7736
                                                                                  (if val7253
                                                                                    val7253
                                                                                    (letrec ((val7254
                                                                                              (letrec ((x-cnd7737
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7737
                                                                                                  (letrec ((x-cnd7738
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7738
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7739
                                                                                                (if val7254
                                                                                                  val7254
                                                                                                  (letrec ((val7255
                                                                                                            (letrec ((x-cnd7740
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7740
                                                                                                                (letrec ((x-cnd7741
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7741
                                                                                                                    (letrec ((x-cnd7742
                                                                                                                              (letrec ((x7744
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7743
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7744
                                                                                                                                 x7743))))
                                                                                                                      (if x-cnd7742
                                                                                                                        (letrec ((x7746
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7745
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7746
                                                                                                                           x7745))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7747
                                                                                                              (if val7255
                                                                                                                val7255
                                                                                                                (letrec ((x-cnd7748
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7748
                                                                                                                    (letrec ((x-cnd7749
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7749
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7750
                                                                                                                                    (letrec ((x-cnd7751
                                                                                                                                              (letrec ((x7752
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7752
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7751
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7753
                                                                                                                                                              (letrec ((val7256
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7754
                                                                                                                                                                          (if val7256
                                                                                                                                                                            val7256
                                                                                                                                                                            (letrec ((x-cnd7755
                                                                                                                                                                                      (letrec ((x7757
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7756
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7757
                                                                                                                                                                                         x7756))))
                                                                                                                                                                              (if x-cnd7755
                                                                                                                                                                                (letrec ((x7758
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7758))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7754))))
                                                                                                                                                      g7753))))
                                                                                                                                          (letrec ((g7759
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7759))
                                                                                                                                        #f))))
                                                                                                                            g7750))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7747)))))
                                                                                        g7739)))))
                                                                          g7736)))))
                                                            g7734))))
                                                g7733)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7760
                                                        (letrec ((x7761
                                                                  (letrec ((x7762
                                                                            (letrec ((x7763
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7763))))
                                                                    (car
                                                                     x7762))))
                                                          (cdr x7761))))
                                                g7760)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7764
                                                        (letrec ((x7765
                                                                  (letrec ((x7766
                                                                            (letrec ((x7767
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7767))))
                                                                    (car
                                                                     x7766))))
                                                          (car x7765))))
                                                g7764)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7768 (eq? x y)))
                                                g7768)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7769
                                                        (letrec ((x7772
                                                                  (string?
                                                                   filename)))
                                                          (assert x7772)))
                                                       (g7770
                                                        (letrec ((x7773
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7773)))
                                                       (g7771
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7774
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7775 res))
                                                            g7775))))
                                                g7771)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7776 (cons x '())))
                                                g7776)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7777
                                                        (letrec ((x7780
                                                                  (char? c1)))
                                                          (assert x7780)))
                                                       (g7778
                                                        (letrec ((x7781
                                                                  (char? c2)))
                                                          (assert x7781)))
                                                       (g7779
                                                        (letrec ((val7257
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7782
                                                                    (if val7257
                                                                      val7257
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7782))))
                                                g7779)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7783
                                                        (letrec ((x7784
                                                                  (letrec ((x7785
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7785))))
                                                          (cdr x7784))))
                                                g7783)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7786
                                                        (letrec ((x7787
                                                                  (letrec ((x7788
                                                                            (letrec ((x7789
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7789))))
                                                                    (car
                                                                     x7788))))
                                                          (cdr x7787))))
                                                g7786)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7790
                                                        (letrec ((x7791
                                                                  (letrec ((x7792
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7792))))
                                                          (car x7791))))
                                                g7790)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7793
                                                        (letrec ((x7794
                                                                  (letrec ((x7795
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7795))))
                                                          (car x7794))))
                                                g7793)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7796
                                                        (letrec ((x7799
                                                                  (char? c1)))
                                                          (assert x7799)))
                                                       (g7797
                                                        (letrec ((x7800
                                                                  (char? c2)))
                                                          (assert x7800)))
                                                       (g7798
                                                        (letrec ((x7801
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7801))))
                                                g7798)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7802
                                                        (letrec ((x7803
                                                                  (letrec ((x7804
                                                                            (letrec ((x7805
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7805))))
                                                                    (car
                                                                     x7804))))
                                                          (car x7803))))
                                                g7802)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7806
                                                        (letrec ((x7808
                                                                  (number? x)))
                                                          (assert x7808)))
                                                       (g7807 (< x 0)))
                                                g7807)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7809 (memq e l)))
                                                g7809)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7810
                                                        (letrec ((x7811
                                                                  (letrec ((x7812
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7812))))
                                                          (car x7811))))
                                                g7810)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7813 '())) g7813)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7814
                                                        (letrec ((x7816
                                                                  (list? l)))
                                                          (assert x7816)))
                                                       (g7815
                                                        (letrec ((x-cnd7817
                                                                  (null? l)))
                                                          (if x-cnd7817
                                                            '()
                                                            (letrec ((x7820
                                                                      (letrec ((x7821
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7821)))
                                                                     (x7818
                                                                      (letrec ((x7819
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7819))))
                                                              (append
                                                               x7820
                                                               x7818))))))
                                                g7815)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7822
                                                        (letrec ((x7823
                                                                  (letrec ((x7824
                                                                            (letrec ((x7825
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7825))))
                                                                    (car
                                                                     x7824))))
                                                          (car x7823))))
                                                g7822)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7826
                                                        (letrec ((x7827
                                                                  (letrec ((x7828
                                                                            (letrec ((x7829
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7829))))
                                                                    (cdr
                                                                     x7828))))
                                                          (cdr x7827))))
                                                g7826)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7830
                                                        (letrec ((x7832
                                                                  (number? x)))
                                                          (assert x7832)))
                                                       (g7831
                                                        (letrec ((x7833
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7833))))
                                                g7831)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7834
                                                        (letrec ((x7835
                                                                  (letrec ((x7836
                                                                            (letrec ((x7837
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7837))))
                                                                    (car
                                                                     x7836))))
                                                          (car x7835))))
                                                g7834)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7838
                                                        (letrec ((x7841
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7841)))
                                                       (g7839
                                                        (letrec ((x7842
                                                                  (list?
                                                                   args)))
                                                          (assert x7842)))
                                                       (g7840
                                                        (letrec ((x-cnd7843
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7843
                                                            (letrec ((g7844
                                                                      (proc)))
                                                              g7844)
                                                            (letrec ((x-cnd7845
                                                                      (letrec ((x7846
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7846))))
                                                              (if x-cnd7845
                                                                (letrec ((g7847
                                                                          (letrec ((x7848
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7848))))
                                                                  g7847)
                                                                (letrec ((x-cnd7849
                                                                          (letrec ((x7850
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7850))))
                                                                  (if x-cnd7849
                                                                    (letrec ((g7851
                                                                              (letrec ((x7853
                                                                                        (car
                                                                                         args))
                                                                                       (x7852
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7853
                                                                                 x7852))))
                                                                      g7851)
                                                                    (letrec ((x-cnd7854
                                                                              (letrec ((x7855
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7855))))
                                                                      (if x-cnd7854
                                                                        (letrec ((g7856
                                                                                  (letrec ((x7859
                                                                                            (car
                                                                                             args))
                                                                                           (x7858
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7857
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7859
                                                                                     x7858
                                                                                     x7857))))
                                                                          g7856)
                                                                        (letrec ((x-cnd7860
                                                                                  (letrec ((x7861
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7861))))
                                                                          (if x-cnd7860
                                                                            (letrec ((g7862
                                                                                      (letrec ((x7866
                                                                                                (car
                                                                                                 args))
                                                                                               (x7865
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7864
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7863
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7866
                                                                                         x7865
                                                                                         x7864
                                                                                         x7863))))
                                                                              g7862)
                                                                            (letrec ((x-cnd7867
                                                                                      (letrec ((x7868
                                                                                                (letrec ((x7869
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7869))))
                                                                                        (null?
                                                                                         x7868))))
                                                                              (if x-cnd7867
                                                                                (letrec ((g7870
                                                                                          (letrec ((x7876
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7875
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7874
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7873
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7871
                                                                                                    (letrec ((x7872
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7872))))
                                                                                            (proc
                                                                                             x7876
                                                                                             x7875
                                                                                             x7874
                                                                                             x7873
                                                                                             x7871))))
                                                                                  g7870)
                                                                                (letrec ((x-cnd7877
                                                                                          (letrec ((x7878
                                                                                                    (letrec ((x7879
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7879))))
                                                                                            (null?
                                                                                             x7878))))
                                                                                  (if x-cnd7877
                                                                                    (letrec ((g7880
                                                                                              (letrec ((x7888
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7887
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7886
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7885
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7883
                                                                                                        (letrec ((x7884
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7884)))
                                                                                                       (x7881
                                                                                                        (letrec ((x7882
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7882))))
                                                                                                (proc
                                                                                                 x7888
                                                                                                 x7887
                                                                                                 x7886
                                                                                                 x7885
                                                                                                 x7883
                                                                                                 x7881))))
                                                                                      g7880)
                                                                                    (letrec ((x-cnd7889
                                                                                              (letrec ((x7890
                                                                                                        (letrec ((x7891
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7891))))
                                                                                                (null?
                                                                                                 x7890))))
                                                                                      (if x-cnd7889
                                                                                        (letrec ((g7892
                                                                                                  (letrec ((x7902
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7901
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7900
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7899
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7897
                                                                                                            (letrec ((x7898
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7898)))
                                                                                                           (x7895
                                                                                                            (letrec ((x7896
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7896)))
                                                                                                           (x7893
                                                                                                            (letrec ((x7894
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7894))))
                                                                                                    (proc
                                                                                                     x7902
                                                                                                     x7901
                                                                                                     x7900
                                                                                                     x7899
                                                                                                     x7897
                                                                                                     x7895
                                                                                                     x7893))))
                                                                                          g7892)
                                                                                        (letrec ((g7903
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7903)))))))))))))))))))
                                                g7840)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7904
                                                        (letrec ((x7906
                                                                  (list? l)))
                                                          (assert x7906)))
                                                       (g7905
                                                        (letrec ((x-cnd7907
                                                                  (null? l)))
                                                          (if x-cnd7907
                                                            #f
                                                            (letrec ((x-cnd7908
                                                                      (letrec ((x7909
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7909
                                                                         e))))
                                                              (if x-cnd7908
                                                                l
                                                                (letrec ((x7910
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7910))))))))
                                                g7905)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7911
                                                        (letrec ((x7912
                                                                  (letrec ((x7913
                                                                            (letrec ((x7914
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7914))))
                                                                    (cdr
                                                                     x7913))))
                                                          (cdr x7912))))
                                                g7911)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7915
                                                        (letrec ((x7916
                                                                  (letrec ((x7917
                                                                            (letrec ((x7918
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7918))))
                                                                    (cdr
                                                                     x7917))))
                                                          (car x7916))))
                                                g7915)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7919 (random 42)))
                                                g7919)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7920
                                                        (letrec ((x7922
                                                                  (number? x)))
                                                          (assert x7922)))
                                                       (g7921 (= x 0)))
                                                g7921)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7923
                                                        (letrec ((val7258
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7924
                                                                    (if val7258
                                                                      val7258
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7924))))
                                                g7923)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7925
                                                        (letrec ((x7926
                                                                  (cdr x)))
                                                          (car x7926))))
                                                g7925)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7927
                                                        (letrec ((val7259
                                                                  (letrec ((x-cnd7928
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7928
                                                                      (letrec ((x7929
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7929))
                                                                      #f))))
                                                          (letrec ((g7930
                                                                    (if val7259
                                                                      val7259
                                                                      (null?
                                                                       l))))
                                                            g7930))))
                                                g7927)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7931
                                                        (letrec ((x7932
                                                                  (letrec ((x7933
                                                                            (letrec ((x7934
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7934))))
                                                                    (cdr
                                                                     x7933))))
                                                          (cdr x7932))))
                                                g7931)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7935
                                                        (letrec ((x-cnd7936
                                                                  (letrec ((x7937
                                                                            #\0))
                                                                    (char<=?
                                                                     x7937
                                                                     c))))
                                                          (if x-cnd7936
                                                            (letrec ((x7938
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7938))
                                                            #f))))
                                                g7935)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7939
                                                        (letrec ((x7941
                                                                  (list? l)))
                                                          (assert x7941)))
                                                       (g7940
                                                        (letrec ((x-cnd7942
                                                                  (null? l)))
                                                          (if x-cnd7942
                                                            #f
                                                            (letrec ((x-cnd7943
                                                                      (letrec ((x7944
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7944
                                                                         k))))
                                                              (if x-cnd7943
                                                                (car l)
                                                                (letrec ((x7945
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7945))))))))
                                                g7940)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7946 (if x #f #t)))
                                                g7946)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7947 (append l1 l2)))
                                                g7947)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7948
                                                        (letrec ((x7950
                                                                  (list? l)))
                                                          (assert x7950)))
                                                       (g7949
                                                        (letrec ((x-cnd7951
                                                                  (null? l)))
                                                          (if x-cnd7951
                                                            #f
                                                            (letrec ((x-cnd7952
                                                                      (letrec ((x7953
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7953
                                                                         e))))
                                                              (if x-cnd7952
                                                                l
                                                                (letrec ((x7954
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7954))))))))
                                                g7949)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7955
                                                        (letrec ((x7956
                                                                  (letrec ((x7957
                                                                            (letrec ((x7958
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7958))))
                                                                    (cdr
                                                                     x7957))))
                                                          (car x7956))))
                                                g7955)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7959
                                                        (letrec ((x7961
                                                                  (list? l)))
                                                          (assert x7961)))
                                                       (g7960
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7962
                                                                              (letrec ((x-cnd7963
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7963
                                                                                  0
                                                                                  (letrec ((x7964
                                                                                            (letrec ((x7965
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7965))))
                                                                                    (+
                                                                                     1
                                                                                     x7964))))))
                                                                      g7962))))
                                                          (letrec ((g7966
                                                                    (rec l)))
                                                            g7966))))
                                                g7960)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7967
                                                        (letrec ((x7970
                                                                  (char? c1)))
                                                          (assert x7970)))
                                                       (g7968
                                                        (letrec ((x7971
                                                                  (char? c2)))
                                                          (assert x7971)))
                                                       (g7969
                                                        (letrec ((val7260
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7972
                                                                    (if val7260
                                                                      val7260
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7972))))
                                                g7969)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7973
                                                        (letrec ((x7974
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7974))))
                                                g7973)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7975
                                                        (letrec ((x7976
                                                                  (letrec ((x7977
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7977))))
                                                          (cdr x7976))))
                                                g7975)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7978
                                                        (letrec ((x7980
                                                                  (list? l)))
                                                          (assert x7980)))
                                                       (g7979
                                                        (letrec ((x-cnd7981
                                                                  (null? l)))
                                                          (if x-cnd7981
                                                            #f
                                                            (letrec ((x-cnd7982
                                                                      (letrec ((x7983
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7983
                                                                         k))))
                                                              (if x-cnd7982
                                                                (car l)
                                                                (letrec ((x7984
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7984))))))))
                                                g7979)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7985
                                                        (letrec ((x7986
                                                                  (car x)))
                                                          (car x7986))))
                                                g7985)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7987
                                                        (letrec ((x7990
                                                                  (char? c1)))
                                                          (assert x7990)))
                                                       (g7988
                                                        (letrec ((x7991
                                                                  (char? c2)))
                                                          (assert x7991)))
                                                       (g7989
                                                        (letrec ((x7992
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7992))))
                                                g7989)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7993
                                                        (letrec ((val7261
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7994
                                                                    (if val7261
                                                                      val7261
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7994))))
                                                g7993)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7995
                                                        (letrec ((x7998
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7998)))
                                                       (g7996
                                                        (letrec ((x7999
                                                                  (list? l)))
                                                          (assert x7999)))
                                                       (g7997
                                                        (letrec ((x-cnd8000
                                                                  (null? l)))
                                                          (if x-cnd8000
                                                            #t
                                                            (letrec ((x-cnd8001
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8001
                                                                (letrec ((g8002
                                                                          (letrec ((x8004
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8004)))
                                                                         (g8003
                                                                          (letrec ((x8005
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8005))))
                                                                  g8003)
                                                                '()))))))
                                                g7997)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8006
                                                        (letrec ((x8008
                                                                  (number? x)))
                                                          (assert x8008)))
                                                       (g8007
                                                        (letrec ((x-cnd8009
                                                                  (< x 0)))
                                                          (if x-cnd8009
                                                            (- 0 x)
                                                            x))))
                                                g8007)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8010
                                                        (letrec ((x8013
                                                                  (char? c1)))
                                                          (assert x8013)))
                                                       (g8011
                                                        (letrec ((x8014
                                                                  (char? c2)))
                                                          (assert x8014)))
                                                       (g8012
                                                        (letrec ((val7262
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8015
                                                                    (if val7262
                                                                      val7262
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8015))))
                                                g8012)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8016
                                                        (letrec ((x8017
                                                                  (letrec ((x8018
                                                                            (letrec ((x8019
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8019))))
                                                                    (cdr
                                                                     x8018))))
                                                          (car x8017))))
                                                g8016)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8020 #f)) g8020)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8021
                                                        (letrec ((x8023
                                                                  (letrec ((x8024
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8024)))
                                                                 (x8022
                                                                  (gcd m n)))
                                                          (/ x8023 x8022))))
                                                g8021)))
                                           (deref car)
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8025
                                                        (letrec ((x8029
                                                                  (list? l)))
                                                          (assert x8029)))
                                                       (g8026
                                                        (letrec ((x8030
                                                                  (number?
                                                                   index)))
                                                          (assert x8030)))
                                                       (g8027
                                                        (letrec ((x8031
                                                                  (letrec ((x8032
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8032))))
                                                          (assert x8031)))
                                                       (g8028
                                                        (letrec ((x-cnd8033
                                                                  (= index 0)))
                                                          (if x-cnd8033
                                                            (car l)
                                                            (letrec ((x8035
                                                                      (cdr l))
                                                                     (x8034
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8035
                                                               x8034))))))
                                                g8028)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8036
                                                        (letrec ((x-cnd8037
                                                                  (= b 0)))
                                                          (if x-cnd8037
                                                            a
                                                            (letrec ((x8038
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8038))))))
                                                g8036)))
                                           (posn
                                            (lambda (x7429 y7430)
                                              (letrec ((g8039
                                                        (letrec ((x8040
                                                                  (letrec ((x8041
                                                                            (orig-cons
                                                                             y7430
                                                                             '())))
                                                                    (orig-cons
                                                                     x7429
                                                                     x8041))))
                                                          (orig-cons
                                                           'posn
                                                           x8040))))
                                                g8039)))
                                           (posn?
                                            (lambda (posn7428)
                                              (letrec ((g8042
                                                        (letrec ((x8043
                                                                  (car
                                                                   posn7428)))
                                                          (eq? x8043 'posn))))
                                                g8042)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g8044
                                                        (letrec ((x8045
                                                                  (orig-cdr
                                                                   posn)))
                                                          (orig-car x8045))))
                                                g8044)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g8046
                                                        (letrec ((x8047
                                                                  (letrec ((x8048
                                                                            (orig-cdr
                                                                             posn)))
                                                                    (orig-cdr
                                                                     x8048))))
                                                          (orig-car x8047))))
                                                g8046)))
                                           (snake
                                            (lambda (dir7434 segs7435)
                                              (letrec ((g8049
                                                        (letrec ((x8050
                                                                  (letrec ((x8051
                                                                            (orig-cons
                                                                             segs7435
                                                                             '())))
                                                                    (orig-cons
                                                                     dir7434
                                                                     x8051))))
                                                          (orig-cons
                                                           'snake
                                                           x8050))))
                                                g8049)))
                                           (snake?
                                            (lambda (snake7433)
                                              (letrec ((g8052
                                                        (letrec ((x8053
                                                                  (car
                                                                   snake7433)))
                                                          (eq? x8053 'snake))))
                                                g8052)))
                                           (snake-dir
                                            (lambda (snake)
                                              (letrec ((g8054
                                                        (letrec ((x8055
                                                                  (orig-cdr
                                                                   snake)))
                                                          (orig-car x8055))))
                                                g8054)))
                                           (snake-segs
                                            (lambda (snake)
                                              (letrec ((g8056
                                                        (letrec ((x8057
                                                                  (letrec ((x8058
                                                                            (orig-cdr
                                                                             snake)))
                                                                    (orig-cdr
                                                                     x8058))))
                                                          (orig-car x8057))))
                                                g8056)))
                                           (world
                                            (lambda (snake7439 food7440)
                                              (letrec ((g8059
                                                        (letrec ((x8060
                                                                  (letrec ((x8061
                                                                            (orig-cons
                                                                             food7440
                                                                             '())))
                                                                    (orig-cons
                                                                     snake7439
                                                                     x8061))))
                                                          (orig-cons
                                                           'world
                                                           x8060))))
                                                g8059)))
                                           (world?
                                            (lambda (world7438)
                                              (letrec ((g8062
                                                        (letrec ((x8063
                                                                  (car
                                                                   world7438)))
                                                          (eq? x8063 'world))))
                                                g8062)))
                                           (world-snake
                                            (lambda (world)
                                              (letrec ((g8064
                                                        (letrec ((x8065
                                                                  (orig-cdr
                                                                   world)))
                                                          (orig-car x8065))))
                                                g8064)))
                                           (world-food
                                            (lambda (world)
                                              (letrec ((g8066
                                                        (letrec ((x8067
                                                                  (letrec ((x8068
                                                                            (orig-cdr
                                                                             world)))
                                                                    (orig-cdr
                                                                     x8068))))
                                                          (orig-car x8067))))
                                                g8066)))
                                           (DIR/C
                                            (lambda (g7405 g7406 g7407)
                                              (letrec ((g8069
                                                        (letrec ((x-cnd8070
                                                                  ((lambda (v7404)
                                                                     (letrec ((g8071
                                                                               (letrec ((x-cnd8072
                                                                                         (eq?
                                                                                          'up
                                                                                          v7404)))
                                                                                 (if x-cnd8072
                                                                                   #t
                                                                                   (letrec ((x-cnd8073
                                                                                             (eq?
                                                                                              'down
                                                                                              v7404)))
                                                                                     (if x-cnd8073
                                                                                       #t
                                                                                       (letrec ((x-cnd8074
                                                                                                 (eq?
                                                                                                  'left
                                                                                                  v7404)))
                                                                                         (if x-cnd8074
                                                                                           #t
                                                                                           (eq?
                                                                                            'right
                                                                                            v7404)))))))))
                                                                       g8071))
                                                                   g7407)))
                                                          (if x-cnd8070
                                                            g7407
                                                            (blame
                                                             g7405
                                                             '(lambda (v7404)
                                                                (if (eq?
                                                                     'up
                                                                     v7404)
                                                                  #t
                                                                  (if (eq?
                                                                       'down
                                                                       v7404)
                                                                    #t
                                                                    (if (eq?
                                                                         'left
                                                                         v7404)
                                                                      #t
                                                                      (eq?
                                                                       'right
                                                                       v7404))))))))))
                                                g8069)))
                                           (POSN/C
                                            (lambda (j7409 k7410 v7408)
                                              (letrec ((g8075
                                                        (letrec ((checked7411
                                                                  (letrec ((x8076
                                                                            (letrec ((x8077
                                                                                      (orig-cdr
                                                                                       v7408)))
                                                                              (orig-car
                                                                               x8077))))
                                                                    (real?/c
                                                                     j7409
                                                                     k7410
                                                                     x8076))))
                                                          (letrec ((g8078
                                                                    (letrec ((checked7412
                                                                              (letrec ((x8079
                                                                                        (letrec ((x8080
                                                                                                  (letrec ((x8081
                                                                                                            (orig-cdr
                                                                                                             v7408)))
                                                                                                    (orig-cdr
                                                                                                     x8081))))
                                                                                          (orig-car
                                                                                           x8080))))
                                                                                (real?/c
                                                                                 j7409
                                                                                 k7410
                                                                                 x8079))))
                                                                      (letrec ((g8082
                                                                                (letrec ((x8083
                                                                                          (letrec ((x8084
                                                                                                    (cons
                                                                                                     checked7412
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7411
                                                                                             x8084))))
                                                                                  (cons
                                                                                   posn
                                                                                   x8083))))
                                                                        g8082))))
                                                            g8078))))
                                                g8075)))
                                           (SNAKE/C
                                            (lambda (j7415 k7416 v7414)
                                              (letrec ((g8085
                                                        (letrec ((checked7417
                                                                  (letrec ((x8086
                                                                            (letrec ((x8087
                                                                                      (orig-cdr
                                                                                       v7414)))
                                                                              (orig-car
                                                                               x8087))))
                                                                    (DIR/C
                                                                     j7415
                                                                     k7416
                                                                     x8086))))
                                                          (letrec ((g8088
                                                                    (letrec ((checked7418
                                                                              (letrec ((x8092
                                                                                        (letrec ((x8093
                                                                                                  (listof
                                                                                                   POSN/C)))
                                                                                          (and/c
                                                                                           cons?/c
                                                                                           x8093)))
                                                                                       (x8089
                                                                                        (letrec ((x8090
                                                                                                  (letrec ((x8091
                                                                                                            (orig-cdr
                                                                                                             v7414)))
                                                                                                    (orig-cdr
                                                                                                     x8091))))
                                                                                          (orig-car
                                                                                           x8090))))
                                                                                (x8092
                                                                                 j7415
                                                                                 k7416
                                                                                 x8089))))
                                                                      (letrec ((g8094
                                                                                (letrec ((x8095
                                                                                          (letrec ((x8096
                                                                                                    (cons
                                                                                                     checked7418
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7417
                                                                                             x8096))))
                                                                                  (cons
                                                                                   snake
                                                                                   x8095))))
                                                                        g8094))))
                                                            g8088))))
                                                g8085)))
                                           (WORLD/C
                                            (lambda (j7421 k7422 v7420)
                                              (letrec ((g8097
                                                        (letrec ((checked7423
                                                                  (letrec ((x8098
                                                                            (letrec ((x8099
                                                                                      (orig-cdr
                                                                                       v7420)))
                                                                              (orig-car
                                                                               x8099))))
                                                                    (SNAKE/C
                                                                     j7421
                                                                     k7422
                                                                     x8098))))
                                                          (letrec ((g8100
                                                                    (letrec ((checked7424
                                                                              (letrec ((x8101
                                                                                        (letrec ((x8102
                                                                                                  (letrec ((x8103
                                                                                                            (orig-cdr
                                                                                                             v7420)))
                                                                                                    (orig-cdr
                                                                                                     x8103))))
                                                                                          (orig-car
                                                                                           x8102))))
                                                                                (POSN/C
                                                                                 j7421
                                                                                 k7422
                                                                                 x8101))))
                                                                      (letrec ((g8104
                                                                                (letrec ((x8105
                                                                                          (letrec ((x8106
                                                                                                    (cons
                                                                                                     checked7424
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7423
                                                                                             x8106))))
                                                                                  (cons
                                                                                   world
                                                                                   x8105))))
                                                                        g8104))))
                                                            g8100))))
                                                g8097)))
                                           (WORLD
                                            (letrec ((x8108
                                                      (letrec ((x8109
                                                                (letrec ((x8110
                                                                          (posn
                                                                           5
                                                                           3)))
                                                                  (cons
                                                                   x8110
                                                                   empty))))
                                                        (snake 'right x8109)))
                                                     (x8107 (posn 8 12)))
                                              (world x8108 x8107))))
                                    (letrec ((g8111
                                              (parallel
                                               (parallel
                                                (letrec ((xj7426 (loc 'module))
                                                         (xk7427
                                                          (loc 'importer)))
                                                  (letrec ((g8112
                                                            (WORLD/C
                                                             xj7426
                                                             xk7427
                                                             WORLD)))
                                                    g8112))))))
                                      g8111))))
                          g7471))))
              g7454)))
    g7453))
