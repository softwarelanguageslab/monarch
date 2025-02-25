(letrec ((any? (lambda (v) (letrec ((g7458 #t)) g7458)))
         (meta (lambda (v) (letrec ((g7459 v)) g7459)))
         (member
          (lambda (v lst)
            (letrec ((g7460
                      (letrec ((g7461
                                (letrec ((x-e7462 lst))
                                  (match
                                   x-e7462
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7463 (eq? v v1)))
                                       (if x-cnd7463 #t (member v vs)))))))))
                        g7461)))
              g7460)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7464 (lambda (v) (letrec ((g7465 v)) g7465)))) g7464)))
         (nonzero?
          (lambda (v)
            (letrec ((g7466 (letrec ((x7467 (= v 0))) (not x7467)))) g7466))))
  (letrec ((g7468
            (letrec ((g7469
                      (letrec ((assert
                                (lambda (cnd)
                                  (letrec ((g7470
                                            (if cnd
                                              '()
                                              (error "assertion failed"))))
                                    g7470)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7471
                                            (letrec ((x7473 (number? x)))
                                              (assert x7473)))
                                           (g7472
                                            (letrec ((val7244 (> x y)))
                                              (letrec ((g7474
                                                        (if val7244
                                                          val7244
                                                          (letrec ((val7245
                                                                    (= x y)))
                                                            (letrec ((g7475
                                                                      (if val7245
                                                                        val7245
                                                                        #f)))
                                                              g7475)))))
                                                g7474))))
                                    g7472)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7476
                                            (letrec ((x7478 (number? x)))
                                              (assert x7478)))
                                           (g7477
                                            (letrec ((val7246 (< x y)))
                                              (letrec ((g7479
                                                        (if val7246
                                                          val7246
                                                          (letrec ((val7247
                                                                    (= x y)))
                                                            (letrec ((g7480
                                                                      (if val7247
                                                                        val7247
                                                                        #f)))
                                                              g7480)))))
                                                g7479))))
                                    g7477)))
                               (>
                                (lambda (x y)
                                  (letrec ((g7481
                                            (letrec ((x7483 (number? x)))
                                              (assert x7483)))
                                           (g7482
                                            (letrec ((x7484 (<= x y)))
                                              (not x7484))))
                                    g7482)))
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
                        (letrec ((g7485 '())
                                 (g7486
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7487
                                                        (lambda (k j lst)
                                                          (letrec ((g7488
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7489
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7489))
                                                                     lst)))
                                                            g7488))))
                                                g7487)))
                                           (real?/c
                                            (lambda (g7267 g7268 g7269)
                                              (letrec ((g7490
                                                        (letrec ((x-cnd7491
                                                                  (real?
                                                                   g7269)))
                                                          (if x-cnd7491
                                                            g7269
                                                            (blame
                                                             g7267
                                                             'real?)))))
                                                g7490)))
                                           (boolean?/c
                                            (lambda (g7270 g7271 g7272)
                                              (letrec ((g7492
                                                        (letrec ((x-cnd7493
                                                                  (boolean?
                                                                   g7272)))
                                                          (if x-cnd7493
                                                            g7272
                                                            (blame
                                                             g7270
                                                             'boolean?)))))
                                                g7492)))
                                           (number?/c
                                            (lambda (g7273 g7274 g7275)
                                              (letrec ((g7494
                                                        (letrec ((x-cnd7495
                                                                  (number?
                                                                   g7275)))
                                                          (if x-cnd7495
                                                            g7275
                                                            (blame
                                                             g7273
                                                             'number?)))))
                                                g7494)))
                                           (any/c
                                            (lambda (g7276 g7277 g7278)
                                              (letrec ((g7496
                                                        (letrec ((x-cnd7497
                                                                  ((lambda (v)
                                                                     (letrec ((g7498
                                                                               #t))
                                                                       g7498))
                                                                   g7278)))
                                                          (if x-cnd7497
                                                            g7278
                                                            (blame
                                                             g7276
                                                             '(lambda (v)
                                                                #t))))))
                                                g7496)))
                                           (any?/c
                                            (lambda (g7279 g7280 g7281)
                                              (letrec ((g7499
                                                        (letrec ((x-cnd7500
                                                                  ((lambda (v)
                                                                     (letrec ((g7501
                                                                               #t))
                                                                       g7501))
                                                                   g7281)))
                                                          (if x-cnd7500
                                                            g7281
                                                            (blame
                                                             g7279
                                                             '(lambda (v)
                                                                #t))))))
                                                g7499)))
                                           (cons?/c
                                            (lambda (g7282 g7283 g7284)
                                              (letrec ((g7502
                                                        (letrec ((x-cnd7503
                                                                  (pair?
                                                                   g7284)))
                                                          (if x-cnd7503
                                                            g7284
                                                            (blame
                                                             g7282
                                                             'pair?)))))
                                                g7502)))
                                           (cons/c
                                            (lambda (k1 k2)
                                              (letrec ((g7504
                                                        (lambda (k j v)
                                                          (letrec ((g7505
                                                                    (letrec ((x7508
                                                                              (letrec ((x7509
                                                                                        (car
                                                                                         v)))
                                                                                (k1
                                                                                 k
                                                                                 j
                                                                                 x7509)))
                                                                             (x7506
                                                                              (letrec ((x7507
                                                                                        (cdr
                                                                                         v)))
                                                                                (k2
                                                                                 k
                                                                                 j
                                                                                 x7507))))
                                                                      (cons
                                                                       x7508
                                                                       x7506))))
                                                            g7505))))
                                                g7504)))
                                           (pair?/c
                                            (lambda (g7285 g7286 g7287)
                                              (letrec ((g7510
                                                        (letrec ((x-cnd7511
                                                                  (pair?
                                                                   g7287)))
                                                          (if x-cnd7511
                                                            g7287
                                                            (blame
                                                             g7285
                                                             'pair?)))))
                                                g7510)))
                                           (integer?/c
                                            (lambda (g7288 g7289 g7290)
                                              (letrec ((g7512
                                                        (letrec ((x-cnd7513
                                                                  (integer?
                                                                   g7290)))
                                                          (if x-cnd7513
                                                            g7290
                                                            (blame
                                                             g7288
                                                             'integer?)))))
                                                g7512)))
                                           (symbol?/c
                                            (lambda (g7291 g7292 g7293)
                                              (letrec ((g7514
                                                        (letrec ((x-cnd7515
                                                                  (symbol?
                                                                   g7293)))
                                                          (if x-cnd7515
                                                            g7293
                                                            (blame
                                                             g7291
                                                             'symbol?)))))
                                                g7514)))
                                           (string?/c
                                            (lambda (g7294 g7295 g7296)
                                              (letrec ((g7516
                                                        (letrec ((x-cnd7517
                                                                  (string?
                                                                   g7296)))
                                                          (if x-cnd7517
                                                            g7296
                                                            (blame
                                                             g7294
                                                             'string?)))))
                                                g7516)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7518
                                                        (lambda (k j v)
                                                          (letrec ((g7519
                                                                    (letrec ((x-cnd7520
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7520
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7519))))
                                                g7518)))
                                           (or/c
                                            (lambda (c1 c2)
                                              (letrec ((g7521
                                                        (lambda (k j v)
                                                          (letrec ((g7522
                                                                    (letrec ((val7248
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (letrec ((g7523
                                                                                (if val7248
                                                                                  val7248
                                                                                  (c2
                                                                                   k
                                                                                   j
                                                                                   v))))
                                                                        g7523))))
                                                            g7522))))
                                                g7521)))
                                           (null?/c
                                            (lambda (g7297 g7298 g7299)
                                              (letrec ((g7524
                                                        (letrec ((x-cnd7525
                                                                  (null?
                                                                   g7299)))
                                                          (if x-cnd7525
                                                            g7299
                                                            (blame
                                                             g7297
                                                             'null?)))))
                                                g7524)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7526
                                                        (lambda (k j v)
                                                          (letrec ((g7527
                                                                    (letrec ((x-cnd7528
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7528
                                                                        '()
                                                                        (letrec ((x7532
                                                                                  (letrec ((x7533
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7533)))
                                                                                 (x7529
                                                                                  (letrec ((x7531
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7530
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7531
                                                                                     k
                                                                                     j
                                                                                     x7530))))
                                                                          (orig-cons
                                                                           x7532
                                                                           x7529))))))
                                                            g7527))))
                                                g7526)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7534 #t)) g7534)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7535
                                                        (letrec ((x7536
                                                                  (= v 0)))
                                                          (not x7536))))
                                                g7535)))
                                           (nonzero?/c
                                            (lambda (g7300 g7301 g7302)
                                              (letrec ((g7537
                                                        (letrec ((x-cnd7538
                                                                  ((lambda (v)
                                                                     (letrec ((g7539
                                                                               (letrec ((x7540
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7540))))
                                                                       g7539))
                                                                   g7302)))
                                                          (if x-cnd7538
                                                            g7302
                                                            (blame
                                                             g7300
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7537)))
                                           (>=/c
                                            (lambda (n)
                                              (letrec ((g7541
                                                        (lambda (g7303
                                                                 g7304
                                                                 g7305)
                                                          (letrec ((g7542
                                                                    (letrec ((x-cnd7543
                                                                              ((lambda (v)
                                                                                 (letrec ((g7544
                                                                                           (orig->=
                                                                                            v
                                                                                            n)))
                                                                                   g7544))
                                                                               g7305)))
                                                                      (if x-cnd7543
                                                                        g7305
                                                                        (blame
                                                                         g7303
                                                                         '(lambda (v)
                                                                            (orig->=
                                                                             v
                                                                             n)))))))
                                                            g7542))))
                                                g7541)))
                                           (>/c
                                            (lambda (n)
                                              (letrec ((g7545
                                                        (lambda (g7306
                                                                 g7307
                                                                 g7308)
                                                          (letrec ((g7546
                                                                    (letrec ((x-cnd7547
                                                                              ((lambda (v)
                                                                                 (letrec ((g7548
                                                                                           (orig->
                                                                                            v
                                                                                            n)))
                                                                                   g7548))
                                                                               g7308)))
                                                                      (if x-cnd7547
                                                                        g7308
                                                                        (blame
                                                                         g7306
                                                                         '(lambda (v)
                                                                            (orig->
                                                                             v
                                                                             n)))))))
                                                            g7546))))
                                                g7545)))
                                           (</c
                                            (lambda (n)
                                              (letrec ((g7549
                                                        (lambda (g7309
                                                                 g7310
                                                                 g7311)
                                                          (letrec ((g7550
                                                                    (letrec ((x-cnd7551
                                                                              ((lambda (v)
                                                                                 (letrec ((g7552
                                                                                           (orig-<
                                                                                            v
                                                                                            n)))
                                                                                   g7552))
                                                                               g7311)))
                                                                      (if x-cnd7551
                                                                        g7311
                                                                        (blame
                                                                         g7309
                                                                         '(lambda (v)
                                                                            (orig-<
                                                                             v
                                                                             n)))))))
                                                            g7550))))
                                                g7549)))
                                           (<=/c
                                            (lambda (n)
                                              (letrec ((g7553
                                                        (lambda (g7312
                                                                 g7313
                                                                 g7314)
                                                          (letrec ((g7554
                                                                    (letrec ((x-cnd7555
                                                                              ((lambda (v)
                                                                                 (letrec ((g7556
                                                                                           (orig-<=
                                                                                            v
                                                                                            n)))
                                                                                   g7556))
                                                                               g7314)))
                                                                      (if x-cnd7555
                                                                        g7314
                                                                        (blame
                                                                         g7312
                                                                         '(lambda (v)
                                                                            (orig-<=
                                                                             v
                                                                             n)))))))
                                                            g7554))))
                                                g7553)))
                                           (=/c
                                            (lambda (n)
                                              (letrec ((g7557
                                                        (lambda (g7315
                                                                 g7316
                                                                 g7317)
                                                          (letrec ((g7558
                                                                    (letrec ((x-cnd7559
                                                                              ((lambda (v)
                                                                                 (letrec ((g7560
                                                                                           (orig-=
                                                                                            v
                                                                                            n)))
                                                                                   g7560))
                                                                               g7317)))
                                                                      (if x-cnd7559
                                                                        g7317
                                                                        (blame
                                                                         g7315
                                                                         '(lambda (v)
                                                                            (orig-=
                                                                             v
                                                                             n)))))))
                                                            g7558))))
                                                g7557)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7561 v)) g7561)))
                                           (+
                                            (letrec ((xj7318 'server)
                                                     (xk7319 'client))
                                              (letrec ((g7562
                                                        ((lambda (j7322
                                                                  k7323
                                                                  f7324)
                                                           (letrec ((g7564
                                                                     (lambda (g7320
                                                                              g7321)
                                                                       (letrec ((g7565
                                                                                 (letrec ((x7566
                                                                                           (letrec ((x7568
                                                                                                     (number?/c
                                                                                                      j7322
                                                                                                      k7323
                                                                                                      g7320))
                                                                                                    (x7567
                                                                                                     (number?/c
                                                                                                      j7322
                                                                                                      k7323
                                                                                                      g7321)))
                                                                                             (f7324
                                                                                              x7568
                                                                                              x7567))))
                                                                                   (number?/c
                                                                                    j7322
                                                                                    k7323
                                                                                    x7566))))
                                                                         g7565))))
                                                             g7564))
                                                         xj7318
                                                         xk7319
                                                         (lambda (a b)
                                                           (letrec ((g7563
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7563)))))
                                                g7562)))
                                           (-
                                            (letrec ((xj7325 'server)
                                                     (xk7326 'client))
                                              (letrec ((g7569
                                                        ((lambda (j7329
                                                                  k7330
                                                                  f7331)
                                                           (letrec ((g7571
                                                                     (lambda (g7327
                                                                              g7328)
                                                                       (letrec ((g7572
                                                                                 (letrec ((x7573
                                                                                           (letrec ((x7575
                                                                                                     (number?/c
                                                                                                      j7329
                                                                                                      k7330
                                                                                                      g7327))
                                                                                                    (x7574
                                                                                                     (number?/c
                                                                                                      j7329
                                                                                                      k7330
                                                                                                      g7328)))
                                                                                             (f7331
                                                                                              x7575
                                                                                              x7574))))
                                                                                   (number?/c
                                                                                    j7329
                                                                                    k7330
                                                                                    x7573))))
                                                                         g7572))))
                                                             g7571))
                                                         xj7325
                                                         xk7326
                                                         (lambda (a b)
                                                           (letrec ((g7570
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7570)))))
                                                g7569)))
                                           (*
                                            (letrec ((xj7332 'server)
                                                     (xk7333 'client))
                                              (letrec ((g7576
                                                        ((lambda (j7336
                                                                  k7337
                                                                  f7338)
                                                           (letrec ((g7578
                                                                     (lambda (g7334
                                                                              g7335)
                                                                       (letrec ((g7579
                                                                                 (letrec ((x7580
                                                                                           (letrec ((x7582
                                                                                                     (number?/c
                                                                                                      j7336
                                                                                                      k7337
                                                                                                      g7334))
                                                                                                    (x7581
                                                                                                     (number?/c
                                                                                                      j7336
                                                                                                      k7337
                                                                                                      g7335)))
                                                                                             (f7338
                                                                                              x7582
                                                                                              x7581))))
                                                                                   (number?/c
                                                                                    j7336
                                                                                    k7337
                                                                                    x7580))))
                                                                         g7579))))
                                                             g7578))
                                                         xj7332
                                                         xk7333
                                                         (lambda (a b)
                                                           (letrec ((g7577
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7577)))))
                                                g7576)))
                                           (<
                                            (letrec ((xj7339 'server)
                                                     (xk7340 'client))
                                              (letrec ((g7583
                                                        ((lambda (j7343
                                                                  k7344
                                                                  f7345)
                                                           (letrec ((g7585
                                                                     (lambda (g7341
                                                                              g7342)
                                                                       (letrec ((g7586
                                                                                 (letrec ((x7587
                                                                                           (letrec ((x7589
                                                                                                     (number?/c
                                                                                                      j7343
                                                                                                      k7344
                                                                                                      g7341))
                                                                                                    (x7588
                                                                                                     (number?/c
                                                                                                      j7343
                                                                                                      k7344
                                                                                                      g7342)))
                                                                                             (f7345
                                                                                              x7589
                                                                                              x7588))))
                                                                                   (boolean?/c
                                                                                    j7343
                                                                                    k7344
                                                                                    x7587))))
                                                                         g7586))))
                                                             g7585))
                                                         xj7339
                                                         xk7340
                                                         (lambda (a b)
                                                           (letrec ((g7584
                                                                     (orig-<
                                                                      a
                                                                      b)))
                                                             g7584)))))
                                                g7583)))
                                           (>
                                            (letrec ((xj7346 'server)
                                                     (xk7347 'client))
                                              (letrec ((g7590
                                                        ((lambda (j7350
                                                                  k7351
                                                                  f7352)
                                                           (letrec ((g7592
                                                                     (lambda (g7348
                                                                              g7349)
                                                                       (letrec ((g7593
                                                                                 (letrec ((x7594
                                                                                           (letrec ((x7596
                                                                                                     (number?/c
                                                                                                      j7350
                                                                                                      k7351
                                                                                                      g7348))
                                                                                                    (x7595
                                                                                                     (number?/c
                                                                                                      j7350
                                                                                                      k7351
                                                                                                      g7349)))
                                                                                             (f7352
                                                                                              x7596
                                                                                              x7595))))
                                                                                   (boolean?/c
                                                                                    j7350
                                                                                    k7351
                                                                                    x7594))))
                                                                         g7593))))
                                                             g7592))
                                                         xj7346
                                                         xk7347
                                                         (lambda (a b)
                                                           (letrec ((g7591
                                                                     (orig->
                                                                      a
                                                                      b)))
                                                             g7591)))))
                                                g7590)))
                                           (<=
                                            (letrec ((xj7353 'server)
                                                     (xk7354 'client))
                                              (letrec ((g7597
                                                        ((lambda (j7357
                                                                  k7358
                                                                  f7359)
                                                           (letrec ((g7599
                                                                     (lambda (g7355
                                                                              g7356)
                                                                       (letrec ((g7600
                                                                                 (letrec ((x7601
                                                                                           (letrec ((x7603
                                                                                                     (number?/c
                                                                                                      j7357
                                                                                                      k7358
                                                                                                      g7355))
                                                                                                    (x7602
                                                                                                     (number?/c
                                                                                                      j7357
                                                                                                      k7358
                                                                                                      g7356)))
                                                                                             (f7359
                                                                                              x7603
                                                                                              x7602))))
                                                                                   (boolean?/c
                                                                                    j7357
                                                                                    k7358
                                                                                    x7601))))
                                                                         g7600))))
                                                             g7599))
                                                         xj7353
                                                         xk7354
                                                         (lambda (a b)
                                                           (letrec ((g7598
                                                                     (orig-<=
                                                                      a
                                                                      b)))
                                                             g7598)))))
                                                g7597)))
                                           (>=
                                            (letrec ((xj7360 'server)
                                                     (xk7361 'client))
                                              (letrec ((g7604
                                                        ((lambda (j7364
                                                                  k7365
                                                                  f7366)
                                                           (letrec ((g7606
                                                                     (lambda (g7362
                                                                              g7363)
                                                                       (letrec ((g7607
                                                                                 (letrec ((x7608
                                                                                           (letrec ((x7610
                                                                                                     (number?/c
                                                                                                      j7364
                                                                                                      k7365
                                                                                                      g7362))
                                                                                                    (x7609
                                                                                                     (number?/c
                                                                                                      j7364
                                                                                                      k7365
                                                                                                      g7363)))
                                                                                             (f7366
                                                                                              x7610
                                                                                              x7609))))
                                                                                   (boolean?/c
                                                                                    j7364
                                                                                    k7365
                                                                                    x7608))))
                                                                         g7607))))
                                                             g7606))
                                                         xj7360
                                                         xk7361
                                                         (lambda (a b)
                                                           (letrec ((g7605
                                                                     (orig->=
                                                                      a
                                                                      b)))
                                                             g7605)))))
                                                g7604)))
                                           (/
                                            (letrec ((xj7367 'server)
                                                     (xk7368 'client))
                                              (letrec ((g7611
                                                        ((lambda (j7371
                                                                  k7372
                                                                  f7373)
                                                           (letrec ((g7613
                                                                     (lambda (g7369
                                                                              g7370)
                                                                       (letrec ((g7614
                                                                                 (letrec ((x7615
                                                                                           (letrec ((x7617
                                                                                                     (number?/c
                                                                                                      j7371
                                                                                                      k7372
                                                                                                      g7369))
                                                                                                    (x7616
                                                                                                     (number?/c
                                                                                                      j7371
                                                                                                      k7372
                                                                                                      g7370)))
                                                                                             (f7373
                                                                                              x7617
                                                                                              x7616))))
                                                                                   (number?/c
                                                                                    j7371
                                                                                    k7372
                                                                                    x7615))))
                                                                         g7614))))
                                                             g7613))
                                                         xj7367
                                                         xk7368
                                                         (lambda (a b)
                                                           (letrec ((g7612
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7612)))))
                                                g7611)))
                                           (car
                                            (letrec ((xj7374 'server)
                                                     (xk7375 'client))
                                              (letrec ((g7618
                                                        ((lambda (j7377
                                                                  k7378
                                                                  f7379)
                                                           (letrec ((g7620
                                                                     (lambda (g7376)
                                                                       (letrec ((g7621
                                                                                 (letrec ((x7622
                                                                                           (letrec ((x7623
                                                                                                     (pair?/c
                                                                                                      j7377
                                                                                                      k7378
                                                                                                      g7376)))
                                                                                             (f7379
                                                                                              x7623))))
                                                                                   (any/c
                                                                                    j7377
                                                                                    k7378
                                                                                    x7622))))
                                                                         g7621))))
                                                             g7620))
                                                         xj7374
                                                         xk7375
                                                         (lambda (p)
                                                           (letrec ((g7619
                                                                     (orig-car
                                                                      p)))
                                                             g7619)))))
                                                g7618)))
                                           (cdr
                                            (letrec ((xj7380 'server)
                                                     (xk7381 'client))
                                              (letrec ((g7624
                                                        ((lambda (j7383
                                                                  k7384
                                                                  f7385)
                                                           (letrec ((g7626
                                                                     (lambda (g7382)
                                                                       (letrec ((g7627
                                                                                 (letrec ((x7628
                                                                                           (letrec ((x7629
                                                                                                     (pair?/c
                                                                                                      j7383
                                                                                                      k7384
                                                                                                      g7382)))
                                                                                             (f7385
                                                                                              x7629))))
                                                                                   (any/c
                                                                                    j7383
                                                                                    k7384
                                                                                    x7628))))
                                                                         g7627))))
                                                             g7626))
                                                         xj7380
                                                         xk7381
                                                         (lambda (p)
                                                           (letrec ((g7625
                                                                     (orig-cdr
                                                                      p)))
                                                             g7625)))))
                                                g7624)))
                                           (cons
                                            (letrec ((xj7386 'server)
                                                     (xk7387 'client))
                                              (letrec ((g7630
                                                        ((lambda (j7390
                                                                  k7391
                                                                  f7392)
                                                           (letrec ((g7632
                                                                     (lambda (g7388
                                                                              g7389)
                                                                       (letrec ((g7633
                                                                                 (letrec ((x7634
                                                                                           (letrec ((x7636
                                                                                                     (any/c
                                                                                                      j7390
                                                                                                      k7391
                                                                                                      g7388))
                                                                                                    (x7635
                                                                                                     (any/c
                                                                                                      j7390
                                                                                                      k7391
                                                                                                      g7389)))
                                                                                             (f7392
                                                                                              x7636
                                                                                              x7635))))
                                                                                   (pair?/c
                                                                                    j7390
                                                                                    k7391
                                                                                    x7634))))
                                                                         g7633))))
                                                             g7632))
                                                         xj7386
                                                         xk7387
                                                         (lambda (a b)
                                                           (letrec ((g7631
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7631)))))
                                                g7630)))
                                           (vector-ref
                                            (letrec ((xj7393 'server)
                                                     (xk7394 'client))
                                              (letrec ((g7637
                                                        ((lambda (j7396
                                                                  k7397
                                                                  f7398)
                                                           (letrec ((g7639
                                                                     (lambda (g7395)
                                                                       (letrec ((g7640
                                                                                 (letrec ((x7641
                                                                                           (letrec ((x7642
                                                                                                     (vector?/c
                                                                                                      j7396
                                                                                                      k7397
                                                                                                      g7395)))
                                                                                             (f7398
                                                                                              x7642))))
                                                                                   (integer?/c
                                                                                    j7396
                                                                                    k7397
                                                                                    x7641))))
                                                                         g7640))))
                                                             g7639))
                                                         xj7393
                                                         xk7394
                                                         (lambda (v i)
                                                           (letrec ((g7638
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7638)))))
                                                g7637)))
                                           (vector-set!
                                            (letrec ((xj7399 'server)
                                                     (xk7400 'client))
                                              (letrec ((g7643
                                                        ((lambda (j7403
                                                                  k7404
                                                                  f7405)
                                                           (letrec ((g7645
                                                                     (lambda (g7401
                                                                              g7402)
                                                                       (letrec ((g7646
                                                                                 (letrec ((x7647
                                                                                           (letrec ((x7649
                                                                                                     (vector?/c
                                                                                                      j7403
                                                                                                      k7404
                                                                                                      g7401))
                                                                                                    (x7648
                                                                                                     (integer?/c
                                                                                                      j7403
                                                                                                      k7404
                                                                                                      g7402)))
                                                                                             (f7405
                                                                                              x7649
                                                                                              x7648))))
                                                                                   (any/c
                                                                                    j7403
                                                                                    k7404
                                                                                    x7647))))
                                                                         g7646))))
                                                             g7645))
                                                         xj7399
                                                         xk7400
                                                         (lambda (vec i v)
                                                           (letrec ((g7644
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7644)))))
                                                g7643)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7650
                                                        (letrec ((x7651
                                                                  (letrec ((x7652
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7652))))
                                                          (cdr x7651))))
                                                g7650)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7653
                                                        (letrec ((x7656
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7656)))
                                                       (g7654
                                                        (letrec ((x7657
                                                                  (list? l)))
                                                          (assert x7657)))
                                                       (g7655
                                                        (letrec ((x-cnd7658
                                                                  (null? l)))
                                                          (if x-cnd7658
                                                            '()
                                                            (letrec ((x7661
                                                                      (letrec ((x7662
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7662)))
                                                                     (x7659
                                                                      (letrec ((x7660
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7660))))
                                                              (cons
                                                               x7661
                                                               x7659))))))
                                                g7655)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7663
                                                        (letrec ((x7664
                                                                  (car x)))
                                                          (cdr x7664))))
                                                g7663)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7665
                                                        (letrec ((x7666
                                                                  (letrec ((x7667
                                                                            (letrec ((x7668
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7668))))
                                                                    (cdr
                                                                     x7667))))
                                                          (car x7666))))
                                                g7665)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7669
                                                        (letrec ((x7670
                                                                  (letrec ((x7671
                                                                            (letrec ((x7672
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7672))))
                                                                    (car
                                                                     x7671))))
                                                          (cdr x7670))))
                                                g7669)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7673
                                                        (letrec ((x7676
                                                                  (string?
                                                                   filename)))
                                                          (assert x7676)))
                                                       (g7674
                                                        (letrec ((x7677
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7677)))
                                                       (g7675
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7678
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7679 res))
                                                            g7679))))
                                                g7675)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7680
                                                        (letrec ((x7681
                                                                  (letrec ((x7682
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7682))))
                                                          (car x7681))))
                                                g7680)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7683
                                                        (letrec ((x7684
                                                                  (letrec ((x7685
                                                                            (letrec ((x7686
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7686))))
                                                                    (car
                                                                     x7685))))
                                                          (cdr x7684))))
                                                g7683)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7687
                                                        (letrec ((x7689
                                                                  (list? l)))
                                                          (assert x7689)))
                                                       (g7688
                                                        (letrec ((x-cnd7690
                                                                  (null? l)))
                                                          (if x-cnd7690
                                                            #f
                                                            (letrec ((x-cnd7691
                                                                      (letrec ((x7692
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7692
                                                                         k))))
                                                              (if x-cnd7691
                                                                (car l)
                                                                (letrec ((x7693
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7693))))))))
                                                g7688)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7694
                                                        (letrec ((x7695
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7695))))
                                                g7694)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7696
                                                        (letrec ((x7698
                                                                  (list? l)))
                                                          (assert x7698)))
                                                       (g7697
                                                        (letrec ((x-cnd7699
                                                                  (null? l)))
                                                          (if x-cnd7699
                                                            ""
                                                            (letrec ((x7702
                                                                      (letrec ((x7703
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7703)))
                                                                     (x7700
                                                                      (letrec ((x7701
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7701))))
                                                              (string-append
                                                               x7702
                                                               x7700))))))
                                                g7697)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7704
                                                        (letrec ((x7707
                                                                  (char? c1)))
                                                          (assert x7707)))
                                                       (g7705
                                                        (letrec ((x7708
                                                                  (char? c2)))
                                                          (assert x7708)))
                                                       (g7706
                                                        (letrec ((val7249
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7709
                                                                    (if val7249
                                                                      val7249
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7709))))
                                                g7706)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7710
                                                        (letrec ((x7711
                                                                  (letrec ((x7712
                                                                            (letrec ((x7713
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7713))))
                                                                    (cdr
                                                                     x7712))))
                                                          (cdr x7711))))
                                                g7710)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7714
                                                        (letrec ((x7717
                                                                  (list? l)))
                                                          (assert x7717)))
                                                       (g7715
                                                        (letrec ((x7718
                                                                  (number?)))
                                                          (assert x7718)))
                                                       (g7716
                                                        (letrec ((x-cnd7719
                                                                  (zero? k)))
                                                          (if x-cnd7719
                                                            x
                                                            (letrec ((x7721
                                                                      (cdr x))
                                                                     (x7720
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7721
                                                               x7720))))))
                                                g7716)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7722 '())) g7722)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7723
                                                        (letrec ((x-cnd7724
                                                                  (letrec ((x7725
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7725))))
                                                          (if x-cnd7724
                                                            (letrec ((x7726
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7726))
                                                            #f))))
                                                g7723)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7727
                                                        (letrec ((val7250
                                                                  (letrec ((x7728
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7728
                                                                     9))))
                                                          (letrec ((g7729
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (letrec ((x7730
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7730
                                                                                   10))))
                                                                        (letrec ((g7731
                                                                                  (if val7251
                                                                                    val7251
                                                                                    (letrec ((x7732
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7732
                                                                                       32)))))
                                                                          g7731)))))
                                                            g7729))))
                                                g7727)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7733
                                                        (letrec ((x7734
                                                                  (letrec ((x7735
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7735))))
                                                          (cdr x7734))))
                                                g7733)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7736
                                                        (letrec ((x7738
                                                                  (number? x)))
                                                          (assert x7738)))
                                                       (g7737 (> x 0)))
                                                g7737)))
                                           (string=?
                                            (lambda (s1 s2)
                                              (letrec ((g7739 (bool-top)))
                                                g7739)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7740 #f)) g7740)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7741
                                                        (letrec ((x7742
                                                                  (cdr x)))
                                                          (cdr x7742))))
                                                g7741)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7743
                                                        (letrec ((x7745
                                                                  (number? x)))
                                                          (assert x7745)))
                                                       (g7744
                                                        (letrec ((x-cnd7746
                                                                  (< x 0)))
                                                          (if x-cnd7746
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7744)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7747
                                                        (letrec ((val7252
                                                                  (eq? a b)))
                                                          (letrec ((g7748
                                                                    (if val7252
                                                                      val7252
                                                                      (letrec ((val7253
                                                                                (letrec ((x-cnd7749
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7749
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7750
                                                                                  (if val7253
                                                                                    val7253
                                                                                    (letrec ((val7254
                                                                                              (letrec ((x-cnd7751
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7751
                                                                                                  (letrec ((x-cnd7752
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7752
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7753
                                                                                                (if val7254
                                                                                                  val7254
                                                                                                  (letrec ((val7255
                                                                                                            (letrec ((x-cnd7754
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7754
                                                                                                                (letrec ((x-cnd7755
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7755
                                                                                                                    (letrec ((x-cnd7756
                                                                                                                              (letrec ((x7758
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7757
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7758
                                                                                                                                 x7757))))
                                                                                                                      (if x-cnd7756
                                                                                                                        (letrec ((x7760
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7759
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7760
                                                                                                                           x7759))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7761
                                                                                                              (if val7255
                                                                                                                val7255
                                                                                                                (letrec ((x-cnd7762
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7762
                                                                                                                    (letrec ((x-cnd7763
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7763
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7764
                                                                                                                                    (letrec ((x-cnd7765
                                                                                                                                              (letrec ((x7766
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7766
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7765
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7767
                                                                                                                                                              (letrec ((val7256
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7768
                                                                                                                                                                          (if val7256
                                                                                                                                                                            val7256
                                                                                                                                                                            (letrec ((x-cnd7769
                                                                                                                                                                                      (letrec ((x7771
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7770
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7771
                                                                                                                                                                                         x7770))))
                                                                                                                                                                              (if x-cnd7769
                                                                                                                                                                                (letrec ((x7772
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7772))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7768))))
                                                                                                                                                      g7767))))
                                                                                                                                          (letrec ((g7773
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7773))
                                                                                                                                        #f))))
                                                                                                                            g7764))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7761)))))
                                                                                        g7753)))))
                                                                          g7750)))))
                                                            g7748))))
                                                g7747)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7774
                                                        (letrec ((x7775
                                                                  (letrec ((x7776
                                                                            (letrec ((x7777
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7777))))
                                                                    (car
                                                                     x7776))))
                                                          (cdr x7775))))
                                                g7774)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7778
                                                        (letrec ((x7779
                                                                  (letrec ((x7780
                                                                            (letrec ((x7781
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7781))))
                                                                    (car
                                                                     x7780))))
                                                          (car x7779))))
                                                g7778)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7782 (eq? x y)))
                                                g7782)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7783
                                                        (letrec ((x7786
                                                                  (string?
                                                                   filename)))
                                                          (assert x7786)))
                                                       (g7784
                                                        (letrec ((x7787
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7787)))
                                                       (g7785
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7788
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7789 res))
                                                            g7789))))
                                                g7785)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7790 (cons x '())))
                                                g7790)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7791
                                                        (letrec ((x7794
                                                                  (char? c1)))
                                                          (assert x7794)))
                                                       (g7792
                                                        (letrec ((x7795
                                                                  (char? c2)))
                                                          (assert x7795)))
                                                       (g7793
                                                        (letrec ((val7257
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7796
                                                                    (if val7257
                                                                      val7257
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7796))))
                                                g7793)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7797
                                                        (letrec ((x7798
                                                                  (letrec ((x7799
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7799))))
                                                          (cdr x7798))))
                                                g7797)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7800
                                                        (letrec ((x7801
                                                                  (letrec ((x7802
                                                                            (letrec ((x7803
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7803))))
                                                                    (car
                                                                     x7802))))
                                                          (cdr x7801))))
                                                g7800)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7804
                                                        (letrec ((x7805
                                                                  (letrec ((x7806
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7806))))
                                                          (car x7805))))
                                                g7804)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7807
                                                        (letrec ((x7808
                                                                  (letrec ((x7809
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7809))))
                                                          (car x7808))))
                                                g7807)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7810
                                                        (letrec ((x7813
                                                                  (char? c1)))
                                                          (assert x7813)))
                                                       (g7811
                                                        (letrec ((x7814
                                                                  (char? c2)))
                                                          (assert x7814)))
                                                       (g7812
                                                        (letrec ((x7815
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7815))))
                                                g7812)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7816
                                                        (letrec ((x7817
                                                                  (letrec ((x7818
                                                                            (letrec ((x7819
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7819))))
                                                                    (car
                                                                     x7818))))
                                                          (car x7817))))
                                                g7816)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7820
                                                        (letrec ((x7822
                                                                  (number? x)))
                                                          (assert x7822)))
                                                       (g7821 (< x 0)))
                                                g7821)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7823 (memq e l)))
                                                g7823)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7824
                                                        (letrec ((x7825
                                                                  (letrec ((x7826
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7826))))
                                                          (car x7825))))
                                                g7824)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7827 '())) g7827)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7828
                                                        (letrec ((x7830
                                                                  (list? l)))
                                                          (assert x7830)))
                                                       (g7829
                                                        (letrec ((x-cnd7831
                                                                  (null? l)))
                                                          (if x-cnd7831
                                                            '()
                                                            (letrec ((x7834
                                                                      (letrec ((x7835
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7835)))
                                                                     (x7832
                                                                      (letrec ((x7833
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7833))))
                                                              (append
                                                               x7834
                                                               x7832))))))
                                                g7829)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7836
                                                        (letrec ((x7837
                                                                  (letrec ((x7838
                                                                            (letrec ((x7839
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7839))))
                                                                    (car
                                                                     x7838))))
                                                          (car x7837))))
                                                g7836)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7840
                                                        (letrec ((x7841
                                                                  (letrec ((x7842
                                                                            (letrec ((x7843
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7843))))
                                                                    (cdr
                                                                     x7842))))
                                                          (cdr x7841))))
                                                g7840)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7844
                                                        (letrec ((x7846
                                                                  (number? x)))
                                                          (assert x7846)))
                                                       (g7845
                                                        (letrec ((x7847
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7847))))
                                                g7845)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7848
                                                        (letrec ((x7849
                                                                  (letrec ((x7850
                                                                            (letrec ((x7851
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7851))))
                                                                    (car
                                                                     x7850))))
                                                          (car x7849))))
                                                g7848)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7852
                                                        (letrec ((x7855
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7855)))
                                                       (g7853
                                                        (letrec ((x7856
                                                                  (list?
                                                                   args)))
                                                          (assert x7856)))
                                                       (g7854
                                                        (letrec ((x-cnd7857
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7857
                                                            (letrec ((g7858
                                                                      (proc)))
                                                              g7858)
                                                            (letrec ((x-cnd7859
                                                                      (letrec ((x7860
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7860))))
                                                              (if x-cnd7859
                                                                (letrec ((g7861
                                                                          (letrec ((x7862
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7862))))
                                                                  g7861)
                                                                (letrec ((x-cnd7863
                                                                          (letrec ((x7864
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7864))))
                                                                  (if x-cnd7863
                                                                    (letrec ((g7865
                                                                              (letrec ((x7867
                                                                                        (car
                                                                                         args))
                                                                                       (x7866
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7867
                                                                                 x7866))))
                                                                      g7865)
                                                                    (letrec ((x-cnd7868
                                                                              (letrec ((x7869
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7869))))
                                                                      (if x-cnd7868
                                                                        (letrec ((g7870
                                                                                  (letrec ((x7873
                                                                                            (car
                                                                                             args))
                                                                                           (x7872
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7871
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7873
                                                                                     x7872
                                                                                     x7871))))
                                                                          g7870)
                                                                        (letrec ((x-cnd7874
                                                                                  (letrec ((x7875
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7875))))
                                                                          (if x-cnd7874
                                                                            (letrec ((g7876
                                                                                      (letrec ((x7880
                                                                                                (car
                                                                                                 args))
                                                                                               (x7879
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7878
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7877
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7880
                                                                                         x7879
                                                                                         x7878
                                                                                         x7877))))
                                                                              g7876)
                                                                            (letrec ((x-cnd7881
                                                                                      (letrec ((x7882
                                                                                                (letrec ((x7883
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7883))))
                                                                                        (null?
                                                                                         x7882))))
                                                                              (if x-cnd7881
                                                                                (letrec ((g7884
                                                                                          (letrec ((x7890
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7889
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7888
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7887
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7885
                                                                                                    (letrec ((x7886
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7886))))
                                                                                            (proc
                                                                                             x7890
                                                                                             x7889
                                                                                             x7888
                                                                                             x7887
                                                                                             x7885))))
                                                                                  g7884)
                                                                                (letrec ((x-cnd7891
                                                                                          (letrec ((x7892
                                                                                                    (letrec ((x7893
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7893))))
                                                                                            (null?
                                                                                             x7892))))
                                                                                  (if x-cnd7891
                                                                                    (letrec ((g7894
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
                                                                                                           x7896))))
                                                                                                (proc
                                                                                                 x7902
                                                                                                 x7901
                                                                                                 x7900
                                                                                                 x7899
                                                                                                 x7897
                                                                                                 x7895))))
                                                                                      g7894)
                                                                                    (letrec ((x-cnd7903
                                                                                              (letrec ((x7904
                                                                                                        (letrec ((x7905
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7905))))
                                                                                                (null?
                                                                                                 x7904))))
                                                                                      (if x-cnd7903
                                                                                        (letrec ((g7906
                                                                                                  (letrec ((x7916
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7915
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7914
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7913
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7911
                                                                                                            (letrec ((x7912
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7912)))
                                                                                                           (x7909
                                                                                                            (letrec ((x7910
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7910)))
                                                                                                           (x7907
                                                                                                            (letrec ((x7908
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7908))))
                                                                                                    (proc
                                                                                                     x7916
                                                                                                     x7915
                                                                                                     x7914
                                                                                                     x7913
                                                                                                     x7911
                                                                                                     x7909
                                                                                                     x7907))))
                                                                                          g7906)
                                                                                        (letrec ((g7917
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7917)))))))))))))))))))
                                                g7854)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7918
                                                        (letrec ((x7920
                                                                  (list? l)))
                                                          (assert x7920)))
                                                       (g7919
                                                        (letrec ((x-cnd7921
                                                                  (null? l)))
                                                          (if x-cnd7921
                                                            #f
                                                            (letrec ((x-cnd7922
                                                                      (letrec ((x7923
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7923
                                                                         e))))
                                                              (if x-cnd7922
                                                                l
                                                                (letrec ((x7924
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7924))))))))
                                                g7919)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7925
                                                        (letrec ((x7926
                                                                  (letrec ((x7927
                                                                            (letrec ((x7928
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7928))))
                                                                    (cdr
                                                                     x7927))))
                                                          (cdr x7926))))
                                                g7925)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7929
                                                        (letrec ((x7930
                                                                  (letrec ((x7931
                                                                            (letrec ((x7932
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7932))))
                                                                    (cdr
                                                                     x7931))))
                                                          (car x7930))))
                                                g7929)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7933 (random 42)))
                                                g7933)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7934
                                                        (letrec ((x7936
                                                                  (number? x)))
                                                          (assert x7936)))
                                                       (g7935 (= x 0)))
                                                g7935)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7937
                                                        (letrec ((val7258
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7938
                                                                    (if val7258
                                                                      val7258
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7938))))
                                                g7937)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7939
                                                        (letrec ((x7940
                                                                  (cdr x)))
                                                          (car x7940))))
                                                g7939)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7941
                                                        (letrec ((val7259
                                                                  (letrec ((x-cnd7942
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7942
                                                                      (letrec ((x7943
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7943))
                                                                      #f))))
                                                          (letrec ((g7944
                                                                    (if val7259
                                                                      val7259
                                                                      (null?
                                                                       l))))
                                                            g7944))))
                                                g7941)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7945
                                                        (letrec ((x7946
                                                                  (letrec ((x7947
                                                                            (letrec ((x7948
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7948))))
                                                                    (cdr
                                                                     x7947))))
                                                          (cdr x7946))))
                                                g7945)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7949
                                                        (letrec ((x-cnd7950
                                                                  (letrec ((x7951
                                                                            #\0))
                                                                    (char<=?
                                                                     x7951
                                                                     c))))
                                                          (if x-cnd7950
                                                            (letrec ((x7952
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7952))
                                                            #f))))
                                                g7949)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7953
                                                        (letrec ((x7955
                                                                  (list? l)))
                                                          (assert x7955)))
                                                       (g7954
                                                        (letrec ((x-cnd7956
                                                                  (null? l)))
                                                          (if x-cnd7956
                                                            #f
                                                            (letrec ((x-cnd7957
                                                                      (letrec ((x7958
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7958
                                                                         k))))
                                                              (if x-cnd7957
                                                                (car l)
                                                                (letrec ((x7959
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7959))))))))
                                                g7954)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7960 (if x #f #t)))
                                                g7960)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7961 (append l1 l2)))
                                                g7961)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7962
                                                        (letrec ((x7964
                                                                  (list? l)))
                                                          (assert x7964)))
                                                       (g7963
                                                        (letrec ((x-cnd7965
                                                                  (null? l)))
                                                          (if x-cnd7965
                                                            #f
                                                            (letrec ((x-cnd7966
                                                                      (letrec ((x7967
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7967
                                                                         e))))
                                                              (if x-cnd7966
                                                                l
                                                                (letrec ((x7968
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7968))))))))
                                                g7963)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7969
                                                        (letrec ((x7970
                                                                  (letrec ((x7971
                                                                            (letrec ((x7972
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7972))))
                                                                    (cdr
                                                                     x7971))))
                                                          (car x7970))))
                                                g7969)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7973
                                                        (letrec ((x7975
                                                                  (list? l)))
                                                          (assert x7975)))
                                                       (g7974
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7976
                                                                              (letrec ((x-cnd7977
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7977
                                                                                  0
                                                                                  (letrec ((x7978
                                                                                            (letrec ((x7979
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7979))))
                                                                                    (+
                                                                                     1
                                                                                     x7978))))))
                                                                      g7976))))
                                                          (letrec ((g7980
                                                                    (rec l)))
                                                            g7980))))
                                                g7974)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7981
                                                        (letrec ((x7984
                                                                  (char? c1)))
                                                          (assert x7984)))
                                                       (g7982
                                                        (letrec ((x7985
                                                                  (char? c2)))
                                                          (assert x7985)))
                                                       (g7983
                                                        (letrec ((val7260
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7986
                                                                    (if val7260
                                                                      val7260
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7986))))
                                                g7983)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7987
                                                        (letrec ((x7988
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7988))))
                                                g7987)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7989
                                                        (letrec ((x7990
                                                                  (letrec ((x7991
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7991))))
                                                          (cdr x7990))))
                                                g7989)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7992
                                                        (letrec ((x7994
                                                                  (list? l)))
                                                          (assert x7994)))
                                                       (g7993
                                                        (letrec ((x-cnd7995
                                                                  (null? l)))
                                                          (if x-cnd7995
                                                            #f
                                                            (letrec ((x-cnd7996
                                                                      (letrec ((x7997
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7997
                                                                         k))))
                                                              (if x-cnd7996
                                                                (car l)
                                                                (letrec ((x7998
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7998))))))))
                                                g7993)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7999
                                                        (letrec ((x8000
                                                                  (car x)))
                                                          (car x8000))))
                                                g7999)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8001
                                                        (letrec ((x8004
                                                                  (char? c1)))
                                                          (assert x8004)))
                                                       (g8002
                                                        (letrec ((x8005
                                                                  (char? c2)))
                                                          (assert x8005)))
                                                       (g8003
                                                        (letrec ((x8006
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8006))))
                                                g8003)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8007
                                                        (letrec ((val7261
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8008
                                                                    (if val7261
                                                                      val7261
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8008))))
                                                g8007)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8009
                                                        (letrec ((x8012
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8012)))
                                                       (g8010
                                                        (letrec ((x8013
                                                                  (list? l)))
                                                          (assert x8013)))
                                                       (g8011
                                                        (letrec ((x-cnd8014
                                                                  (null? l)))
                                                          (if x-cnd8014
                                                            #t
                                                            (letrec ((x-cnd8015
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8015
                                                                (letrec ((g8016
                                                                          (letrec ((x8018
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8018)))
                                                                         (g8017
                                                                          (letrec ((x8019
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8019))))
                                                                  g8017)
                                                                '()))))))
                                                g8011)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8020
                                                        (letrec ((x8022
                                                                  (number? x)))
                                                          (assert x8022)))
                                                       (g8021
                                                        (letrec ((x-cnd8023
                                                                  (< x 0)))
                                                          (if x-cnd8023
                                                            (- 0 x)
                                                            x))))
                                                g8021)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8024
                                                        (letrec ((x8027
                                                                  (char? c1)))
                                                          (assert x8027)))
                                                       (g8025
                                                        (letrec ((x8028
                                                                  (char? c2)))
                                                          (assert x8028)))
                                                       (g8026
                                                        (letrec ((val7262
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8029
                                                                    (if val7262
                                                                      val7262
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8029))))
                                                g8026)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8030
                                                        (letrec ((x8031
                                                                  (letrec ((x8032
                                                                            (letrec ((x8033
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8033))))
                                                                    (cdr
                                                                     x8032))))
                                                          (car x8031))))
                                                g8030)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8034 #f)) g8034)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8035
                                                        (letrec ((x8037
                                                                  (letrec ((x8038
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8038)))
                                                                 (x8036
                                                                  (gcd m n)))
                                                          (/ x8037 x8036))))
                                                g8035)))
                                           (deref car)
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8039
                                                        (letrec ((x8043
                                                                  (list? l)))
                                                          (assert x8043)))
                                                       (g8040
                                                        (letrec ((x8044
                                                                  (number?
                                                                   index)))
                                                          (assert x8044)))
                                                       (g8041
                                                        (letrec ((x8045
                                                                  (letrec ((x8046
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8046))))
                                                          (assert x8045)))
                                                       (g8042
                                                        (letrec ((x-cnd8047
                                                                  (= index 0)))
                                                          (if x-cnd8047
                                                            (car l)
                                                            (letrec ((x8049
                                                                      (cdr l))
                                                                     (x8048
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8049
                                                               x8048))))))
                                                g8042)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8050
                                                        (letrec ((x-cnd8051
                                                                  (= b 0)))
                                                          (if x-cnd8051
                                                            a
                                                            (letrec ((x8052
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8052))))))
                                                g8050)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8053
                                                        (orig-cons
                                                         'image
                                                         '())))
                                                g8053)))
                                           (image?
                                            (lambda (image7442)
                                              (letrec ((g8054
                                                        (letrec ((x8055
                                                                  (car
                                                                   image7442)))
                                                          (eq? x8055 'image))))
                                                g8054)))
                                           (image/c
                                            (lambda (j7407 k7408 v7406)
                                              (letrec ((g8056
                                                        (cons image '())))
                                                g8056)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8057 (image)))
                                                g8057)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8058 (image)))
                                                g8058)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8059 (image)))
                                                g8059)))
                                           (posn
                                            (lambda (x7444 y7445)
                                              (letrec ((g8060
                                                        (letrec ((x8061
                                                                  (letrec ((x8062
                                                                            (orig-cons
                                                                             y7445
                                                                             '())))
                                                                    (orig-cons
                                                                     x7444
                                                                     x8062))))
                                                          (orig-cons
                                                           'posn
                                                           x8061))))
                                                g8060)))
                                           (posn?
                                            (lambda (posn7443)
                                              (letrec ((g8063
                                                        (letrec ((x8064
                                                                  (car
                                                                   posn7443)))
                                                          (eq? x8064 'posn))))
                                                g8063)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g8065
                                                        (letrec ((x8066
                                                                  (orig-cdr
                                                                   posn)))
                                                          (orig-car x8066))))
                                                g8065)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g8067
                                                        (letrec ((x8068
                                                                  (letrec ((x8069
                                                                            (orig-cdr
                                                                             posn)))
                                                                    (orig-cdr
                                                                     x8069))))
                                                          (orig-car x8068))))
                                                g8067)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g8070
                                                        (letrec ((x-cnd8071
                                                                  (letrec ((x8073
                                                                            (posn-x
                                                                             p1))
                                                                           (x8072
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x8073
                                                                     x8072))))
                                                          (if x-cnd8071
                                                            (letrec ((x8075
                                                                      (posn-y
                                                                       p1))
                                                                     (x8074
                                                                      (posn-y
                                                                       p2)))
                                                              (= x8075 x8074))
                                                            #f))))
                                                g8070)))
                                           (snake
                                            (lambda (dir7449 segs7450)
                                              (letrec ((g8076
                                                        (letrec ((x8077
                                                                  (letrec ((x8078
                                                                            (orig-cons
                                                                             segs7450
                                                                             '())))
                                                                    (orig-cons
                                                                     dir7449
                                                                     x8078))))
                                                          (orig-cons
                                                           'snake
                                                           x8077))))
                                                g8076)))
                                           (snake?
                                            (lambda (snake7448)
                                              (letrec ((g8079
                                                        (letrec ((x8080
                                                                  (car
                                                                   snake7448)))
                                                          (eq? x8080 'snake))))
                                                g8079)))
                                           (snake-dir
                                            (lambda (snake)
                                              (letrec ((g8081
                                                        (letrec ((x8082
                                                                  (orig-cdr
                                                                   snake)))
                                                          (orig-car x8082))))
                                                g8081)))
                                           (snake-segs
                                            (lambda (snake)
                                              (letrec ((g8083
                                                        (letrec ((x8084
                                                                  (letrec ((x8085
                                                                            (orig-cdr
                                                                             snake)))
                                                                    (orig-cdr
                                                                     x8085))))
                                                          (orig-car x8084))))
                                                g8083)))
                                           (world
                                            (lambda (snake7454 food7455)
                                              (letrec ((g8086
                                                        (letrec ((x8087
                                                                  (letrec ((x8088
                                                                            (orig-cons
                                                                             food7455
                                                                             '())))
                                                                    (orig-cons
                                                                     snake7454
                                                                     x8088))))
                                                          (orig-cons
                                                           'world
                                                           x8087))))
                                                g8086)))
                                           (world?
                                            (lambda (world7453)
                                              (letrec ((g8089
                                                        (letrec ((x8090
                                                                  (car
                                                                   world7453)))
                                                          (eq? x8090 'world))))
                                                g8089)))
                                           (world-snake
                                            (lambda (world)
                                              (letrec ((g8091
                                                        (letrec ((x8092
                                                                  (orig-cdr
                                                                   world)))
                                                          (orig-car x8092))))
                                                g8091)))
                                           (world-food
                                            (lambda (world)
                                              (letrec ((g8093
                                                        (letrec ((x8094
                                                                  (letrec ((x8095
                                                                            (orig-cdr
                                                                             world)))
                                                                    (orig-cdr
                                                                     x8095))))
                                                          (orig-car x8094))))
                                                g8093)))
                                           (DIR/C
                                            (lambda (g7413 g7414 g7415)
                                              (letrec ((g8096
                                                        (letrec ((x-cnd8097
                                                                  ((lambda (v7412)
                                                                     (letrec ((g8098
                                                                               (letrec ((x-cnd8099
                                                                                         (eq?
                                                                                          'up
                                                                                          v7412)))
                                                                                 (if x-cnd8099
                                                                                   #t
                                                                                   (letrec ((x-cnd8100
                                                                                             (eq?
                                                                                              'down
                                                                                              v7412)))
                                                                                     (if x-cnd8100
                                                                                       #t
                                                                                       (letrec ((x-cnd8101
                                                                                                 (eq?
                                                                                                  'left
                                                                                                  v7412)))
                                                                                         (if x-cnd8101
                                                                                           #t
                                                                                           (eq?
                                                                                            'right
                                                                                            v7412)))))))))
                                                                       g8098))
                                                                   g7415)))
                                                          (if x-cnd8097
                                                            g7415
                                                            (blame
                                                             g7413
                                                             '(lambda (v7412)
                                                                (if (eq?
                                                                     'up
                                                                     v7412)
                                                                  #t
                                                                  (if (eq?
                                                                       'down
                                                                       v7412)
                                                                    #t
                                                                    (if (eq?
                                                                         'left
                                                                         v7412)
                                                                      #t
                                                                      (eq?
                                                                       'right
                                                                       v7412))))))))))
                                                g8096)))
                                           (POSN/C
                                            (lambda (j7417 k7418 v7416)
                                              (letrec ((g8102
                                                        (letrec ((checked7419
                                                                  (letrec ((x8103
                                                                            (letrec ((x8104
                                                                                      (orig-cdr
                                                                                       v7416)))
                                                                              (orig-car
                                                                               x8104))))
                                                                    (real?/c
                                                                     j7417
                                                                     k7418
                                                                     x8103))))
                                                          (letrec ((g8105
                                                                    (letrec ((checked7420
                                                                              (letrec ((x8106
                                                                                        (letrec ((x8107
                                                                                                  (letrec ((x8108
                                                                                                            (orig-cdr
                                                                                                             v7416)))
                                                                                                    (orig-cdr
                                                                                                     x8108))))
                                                                                          (orig-car
                                                                                           x8107))))
                                                                                (real?/c
                                                                                 j7417
                                                                                 k7418
                                                                                 x8106))))
                                                                      (letrec ((g8109
                                                                                (letrec ((x8110
                                                                                          (letrec ((x8111
                                                                                                    (cons
                                                                                                     checked7420
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7419
                                                                                             x8111))))
                                                                                  (cons
                                                                                   posn
                                                                                   x8110))))
                                                                        g8109))))
                                                            g8105))))
                                                g8102)))
                                           (SNAKE/C
                                            (lambda (j7423 k7424 v7422)
                                              (letrec ((g8112
                                                        (letrec ((checked7425
                                                                  (letrec ((x8113
                                                                            (letrec ((x8114
                                                                                      (orig-cdr
                                                                                       v7422)))
                                                                              (orig-car
                                                                               x8114))))
                                                                    (DIR/C
                                                                     j7423
                                                                     k7424
                                                                     x8113))))
                                                          (letrec ((g8115
                                                                    (letrec ((checked7426
                                                                              (letrec ((x8119
                                                                                        (letrec ((x8120
                                                                                                  (listof
                                                                                                   POSN/C)))
                                                                                          (and/c
                                                                                           cons?/c
                                                                                           x8120)))
                                                                                       (x8116
                                                                                        (letrec ((x8117
                                                                                                  (letrec ((x8118
                                                                                                            (orig-cdr
                                                                                                             v7422)))
                                                                                                    (orig-cdr
                                                                                                     x8118))))
                                                                                          (orig-car
                                                                                           x8117))))
                                                                                (x8119
                                                                                 j7423
                                                                                 k7424
                                                                                 x8116))))
                                                                      (letrec ((g8121
                                                                                (letrec ((x8122
                                                                                          (letrec ((x8123
                                                                                                    (cons
                                                                                                     checked7426
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7425
                                                                                             x8123))))
                                                                                  (cons
                                                                                   snake
                                                                                   x8122))))
                                                                        g8121))))
                                                            g8115))))
                                                g8112)))
                                           (WORLD/C
                                            (lambda (j7429 k7430 v7428)
                                              (letrec ((g8124
                                                        (letrec ((checked7431
                                                                  (letrec ((x8125
                                                                            (letrec ((x8126
                                                                                      (orig-cdr
                                                                                       v7428)))
                                                                              (orig-car
                                                                               x8126))))
                                                                    (SNAKE/C
                                                                     j7429
                                                                     k7430
                                                                     x8125))))
                                                          (letrec ((g8127
                                                                    (letrec ((checked7432
                                                                              (letrec ((x8128
                                                                                        (letrec ((x8129
                                                                                                  (letrec ((x8130
                                                                                                            (orig-cdr
                                                                                                             v7428)))
                                                                                                    (orig-cdr
                                                                                                     x8130))))
                                                                                          (orig-car
                                                                                           x8129))))
                                                                                (POSN/C
                                                                                 j7429
                                                                                 k7430
                                                                                 x8128))))
                                                                      (letrec ((g8131
                                                                                (letrec ((x8132
                                                                                          (letrec ((x8133
                                                                                                    (cons
                                                                                                     checked7432
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7431
                                                                                             x8133))))
                                                                                  (cons
                                                                                   world
                                                                                   x8132))))
                                                                        g8131))))
                                                            g8127))))
                                                g8124)))
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
                                            (letrec ((x8135
                                                      (letrec ((x8136
                                                                (letrec ((x8137
                                                                          (posn
                                                                           5
                                                                           3)))
                                                                  (cons
                                                                   x8137
                                                                   empty))))
                                                        (snake 'right x8136)))
                                                     (x8134 (posn 8 12)))
                                              (world x8135 x8134)))
                                           (snake-wall-collide?
                                            (lambda (snk)
                                              (letrec ((g8138
                                                        (letrec ((x8139
                                                                  (letrec ((x8140
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x8140))))
                                                          (head-collide?
                                                           x8139))))
                                                g8138)))
                                           (head-collide?
                                            (lambda (p)
                                              (letrec ((g8141
                                                        (letrec ((val7263
                                                                  (letrec ((x8142
                                                                            (posn-x
                                                                             p)))
                                                                    (<=
                                                                     x8142
                                                                     0))))
                                                          (letrec ((g8143
                                                                    (if val7263
                                                                      val7263
                                                                      (letrec ((val7264
                                                                                (letrec ((x8144
                                                                                          (posn-x
                                                                                           p)))
                                                                                  (>=
                                                                                   x8144
                                                                                   BOARD-WIDTH))))
                                                                        (letrec ((g8145
                                                                                  (if val7264
                                                                                    val7264
                                                                                    (letrec ((val7265
                                                                                              (letrec ((x8146
                                                                                                        (posn-y
                                                                                                         p)))
                                                                                                (<=
                                                                                                 x8146
                                                                                                 0))))
                                                                                      (letrec ((g8147
                                                                                                (if val7265
                                                                                                  val7265
                                                                                                  (letrec ((x8148
                                                                                                            (posn-y
                                                                                                             p)))
                                                                                                    (>=
                                                                                                     x8148
                                                                                                     BOARD-HEIGHT)))))
                                                                                        g8147)))))
                                                                          g8145)))))
                                                            g8143))))
                                                g8141)))
                                           (snake-self-collide?
                                            (lambda (snk)
                                              (letrec ((g8149
                                                        (letrec ((x8152
                                                                  (letrec ((x8153
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x8153)))
                                                                 (x8150
                                                                  (letrec ((x8151
                                                                            (snake-segs
                                                                             snk)))
                                                                    (cdr
                                                                     x8151))))
                                                          (segs-self-collide?
                                                           x8152
                                                           x8150))))
                                                g8149)))
                                           (segs-self-collide?
                                            (lambda (h segs)
                                              (letrec ((g8154
                                                        (letrec ((x-cnd8155
                                                                  (empty?
                                                                   segs)))
                                                          (if x-cnd8155
                                                            (letrec ((g8156
                                                                      #f))
                                                              g8156)
                                                            (letrec ((g8157
                                                                      (letrec ((x8160
                                                                                (letrec ((x8161
                                                                                          (car
                                                                                           segs)))
                                                                                  (posn=?
                                                                                   x8161
                                                                                   h)))
                                                                               (x8158
                                                                                (letrec ((x8159
                                                                                          (cdr
                                                                                           segs)))
                                                                                  (segs-self-collide?
                                                                                   h
                                                                                   x8159))))
                                                                        (or x8160
                                                                            x8158))))
                                                              g8157)))))
                                                g8154)))
                                           (cut-tail
                                            (lambda (segs)
                                              (letrec ((g8162
                                                        (letrec ((r
                                                                  (cdr segs)))
                                                          (letrec ((g8163
                                                                    (letrec ((x-cnd8164
                                                                              (empty?
                                                                               r)))
                                                                      (if x-cnd8164
                                                                        (letrec ((g8165
                                                                                  empty))
                                                                          g8165)
                                                                        (letrec ((g8166
                                                                                  (letrec ((x8168
                                                                                            (car
                                                                                             segs))
                                                                                           (x8167
                                                                                            (cut-tail
                                                                                             r)))
                                                                                    (cons
                                                                                     x8168
                                                                                     x8167))))
                                                                          g8166)))))
                                                            g8163))))
                                                g8162)))
                                           (next-head
                                            (lambda (seg dir)
                                              (letrec ((g8169
                                                        (letrec ((x-cnd8170
                                                                  (equal?
                                                                   'right
                                                                   dir)))
                                                          (if x-cnd8170
                                                            (letrec ((g8171
                                                                      (letrec ((x8173
                                                                                (letrec ((x8174
                                                                                          (posn-x
                                                                                           seg)))
                                                                                  (add1
                                                                                   x8174)))
                                                                               (x8172
                                                                                (posn-y
                                                                                 seg)))
                                                                        (posn
                                                                         x8173
                                                                         x8172))))
                                                              g8171)
                                                            (letrec ((x-cnd8175
                                                                      (equal?
                                                                       'left
                                                                       dir)))
                                                              (if x-cnd8175
                                                                (letrec ((g8176
                                                                          (letrec ((x8178
                                                                                    (letrec ((x8179
                                                                                              (posn-x
                                                                                               seg)))
                                                                                      (sub1
                                                                                       x8179)))
                                                                                   (x8177
                                                                                    (posn-y
                                                                                     seg)))
                                                                            (posn
                                                                             x8178
                                                                             x8177))))
                                                                  g8176)
                                                                (letrec ((x-cnd8180
                                                                          (equal?
                                                                           'down
                                                                           dir)))
                                                                  (if x-cnd8180
                                                                    (letrec ((g8181
                                                                              (letrec ((x8184
                                                                                        (posn-x
                                                                                         seg))
                                                                                       (x8182
                                                                                        (letrec ((x8183
                                                                                                  (posn-y
                                                                                                   seg)))
                                                                                          (sub1
                                                                                           x8183))))
                                                                                (posn
                                                                                 x8184
                                                                                 x8182))))
                                                                      g8181)
                                                                    (letrec ((g8185
                                                                              (letrec ((x8188
                                                                                        (posn-x
                                                                                         seg))
                                                                                       (x8186
                                                                                        (letrec ((x8187
                                                                                                  (posn-y
                                                                                                   seg)))
                                                                                          (add1
                                                                                           x8187))))
                                                                                (posn
                                                                                 x8188
                                                                                 x8186))))
                                                                      g8185)))))))))
                                                g8169)))
                                           (snake-slither
                                            (lambda (snk)
                                              (letrec ((g8189
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g8190
                                                                    (letrec ((x8191
                                                                              (letrec ((x8194
                                                                                        (letrec ((x8195
                                                                                                  (letrec ((x8196
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x8196))))
                                                                                          (next-head
                                                                                           x8195
                                                                                           d)))
                                                                                       (x8192
                                                                                        (letrec ((x8193
                                                                                                  (snake-segs
                                                                                                   snk)))
                                                                                          (cut-tail
                                                                                           x8193))))
                                                                                (cons
                                                                                 x8194
                                                                                 x8192))))
                                                                      (snake
                                                                       d
                                                                       x8191))))
                                                            g8190))))
                                                g8189)))
                                           (snake-grow
                                            (lambda (snk)
                                              (letrec ((g8197
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g8198
                                                                    (letrec ((x8199
                                                                              (letrec ((x8201
                                                                                        (letrec ((x8202
                                                                                                  (letrec ((x8203
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x8203))))
                                                                                          (next-head
                                                                                           x8202
                                                                                           d)))
                                                                                       (x8200
                                                                                        (snake-segs
                                                                                         snk)))
                                                                                (cons
                                                                                 x8201
                                                                                 x8200))))
                                                                      (snake
                                                                       d
                                                                       x8199))))
                                                            g8198))))
                                                g8197)))
                                           (world->world
                                            (lambda (w)
                                              (letrec ((g8204
                                                        (letrec ((x-cnd8205
                                                                  (eating? w)))
                                                          (if x-cnd8205
                                                            (letrec ((g8206
                                                                      (snake-eat
                                                                       w)))
                                                              g8206)
                                                            (letrec ((g8207
                                                                      (letrec ((x8209
                                                                                (letrec ((x8210
                                                                                          (world-snake
                                                                                           w)))
                                                                                  (snake-slither
                                                                                   x8210)))
                                                                               (x8208
                                                                                (world-food
                                                                                 w)))
                                                                        (world
                                                                         x8209
                                                                         x8208))))
                                                              g8207)))))
                                                g8204)))
                                           (eating?
                                            (lambda (w)
                                              (letrec ((g8211
                                                        (letrec ((x8215
                                                                  (world-food
                                                                   w))
                                                                 (x8212
                                                                  (letrec ((x8213
                                                                            (letrec ((x8214
                                                                                      (world-snake
                                                                                       w)))
                                                                              (snake-segs
                                                                               x8214))))
                                                                    (car
                                                                     x8213))))
                                                          (posn=?
                                                           x8215
                                                           x8212))))
                                                g8211)))
                                           (snake-change-direction
                                            (lambda (snk dir)
                                              (letrec ((g8216
                                                        (letrec ((x8217
                                                                  (snake-segs
                                                                   snk)))
                                                          (snake dir x8217))))
                                                g8216)))
                                           (world-change-dir
                                            (lambda (w dir)
                                              (letrec ((g8218
                                                        (letrec ((x8220
                                                                  (letrec ((x8221
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-change-direction
                                                                     x8221
                                                                     dir)))
                                                                 (x8219
                                                                  (world-food
                                                                   w)))
                                                          (world
                                                           x8220
                                                           x8219))))
                                                g8218)))
                                           (snake-eat
                                            (lambda (w)
                                              (letrec ((g8222
                                                        (letrec ((x8226
                                                                  (letrec ((x8227
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-grow
                                                                     x8227)))
                                                                 (x8223
                                                                  (letrec ((x8225
                                                                            (-
                                                                             BOARD-WIDTH
                                                                             1))
                                                                           (x8224
                                                                            (-
                                                                             BOARD-HEIGHT
                                                                             1)))
                                                                    (posn
                                                                     x8225
                                                                     x8224))))
                                                          (world
                                                           x8226
                                                           x8223))))
                                                g8222)))
                                           (handle-key
                                            (lambda (w ke)
                                              (letrec ((g8228
                                                        (letrec ((x-cnd8229
                                                                  (equal?
                                                                   ke
                                                                   "w")))
                                                          (if x-cnd8229
                                                            (letrec ((g8230
                                                                      (world-change-dir
                                                                       w
                                                                       'up)))
                                                              g8230)
                                                            (letrec ((x-cnd8231
                                                                      (equal?
                                                                       ke
                                                                       "s")))
                                                              (if x-cnd8231
                                                                (letrec ((g8232
                                                                          (world-change-dir
                                                                           w
                                                                           'down)))
                                                                  g8232)
                                                                (letrec ((x-cnd8233
                                                                          (equal?
                                                                           ke
                                                                           "a")))
                                                                  (if x-cnd8233
                                                                    (letrec ((g8234
                                                                              (world-change-dir
                                                                               w
                                                                               'left)))
                                                                      g8234)
                                                                    (letrec ((x-cnd8235
                                                                              (equal?
                                                                               ke
                                                                               "d")))
                                                                      (if x-cnd8235
                                                                        (letrec ((g8236
                                                                                  (world-change-dir
                                                                                   w
                                                                                   'right)))
                                                                          g8236)
                                                                        (letrec ((g8237
                                                                                  w))
                                                                          g8237)))))))))))
                                                g8228)))
                                           (game-over?
                                            (lambda (w)
                                              (letrec ((g8238
                                                        (letrec ((val7266
                                                                  (letrec ((x8239
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-wall-collide?
                                                                     x8239))))
                                                          (letrec ((g8240
                                                                    (if val7266
                                                                      val7266
                                                                      (letrec ((x8241
                                                                                (world-snake
                                                                                 w)))
                                                                        (snake-self-collide?
                                                                         x8241)))))
                                                            g8240))))
                                                g8238)))
                                           (world->scene
                                            (lambda (w)
                                              (letrec ((g8242
                                                        (letrec ((x8245
                                                                  (world-snake
                                                                   w))
                                                                 (x8243
                                                                  (letrec ((x8244
                                                                            (world-food
                                                                             w)))
                                                                    (food+scene
                                                                     x8244
                                                                     BACKGROUND))))
                                                          (snake+scene
                                                           x8245
                                                           x8243))))
                                                g8242)))
                                           (food+scene
                                            (lambda (f scn)
                                              (letrec ((g8246
                                                        (letrec ((x8248
                                                                  (posn-x f))
                                                                 (x8247
                                                                  (posn-y f)))
                                                          (place-image-on-grid
                                                           FOOD-IMAGE
                                                           x8248
                                                           x8247
                                                           scn))))
                                                g8246)))
                                           (place-image-on-grid
                                            (lambda (img x y scn)
                                              (letrec ((g8249
                                                        (letrec ((x8252
                                                                  (*
                                                                   GRID-SIZE
                                                                   x))
                                                                 (x8250
                                                                  (letrec ((x8251
                                                                            (*
                                                                             GRID-SIZE
                                                                             y)))
                                                                    (-
                                                                     BOARD-HEIGHT-PIXELS
                                                                     x8251))))
                                                          (place-image
                                                           img
                                                           x8252
                                                           x8250
                                                           scn))))
                                                g8249)))
                                           (snake+scene
                                            (lambda (snk scn)
                                              (letrec ((g8253
                                                        (letrec ((x8254
                                                                  (snake-segs
                                                                   snk)))
                                                          (segments+scene
                                                           x8254
                                                           scn))))
                                                g8253)))
                                           (segments+scene
                                            (lambda (segs scn)
                                              (letrec ((g8255
                                                        (letrec ((x-cnd8256
                                                                  (empty?
                                                                   segs)))
                                                          (if x-cnd8256
                                                            (letrec ((g8257
                                                                      scn))
                                                              g8257)
                                                            (letrec ((g8258
                                                                      (letrec ((x8261
                                                                                (cdr
                                                                                 segs))
                                                                               (x8259
                                                                                (letrec ((x8260
                                                                                          (car
                                                                                           segs)))
                                                                                  (segment+scene
                                                                                   x8260
                                                                                   scn))))
                                                                        (segments+scene
                                                                         x8261
                                                                         x8259))))
                                                              g8258)))))
                                                g8255)))
                                           (segment+scene
                                            (lambda (seg scn)
                                              (letrec ((g8262
                                                        (letrec ((x8264
                                                                  (posn-x seg))
                                                                 (x8263
                                                                  (posn-y
                                                                   seg)))
                                                          (place-image-on-grid
                                                           SEGMENT-IMAGE
                                                           x8264
                                                           x8263
                                                           scn))))
                                                g8262))))
                                    (letrec ((g8265
                                              (parallel
                                               (parallel
                                                (letrec ((xj7434 (loc 'module))
                                                         (xk7435
                                                          (loc 'importer)))
                                                  (letrec ((g8266
                                                            (real?/c
                                                             xj7434
                                                             xk7435
                                                             GRID-SIZE)))
                                                    g8266))
                                                (letrec ((xj7436 (loc 'module))
                                                         (xk7437
                                                          (loc 'importer)))
                                                  (letrec ((g8267
                                                            (real?/c
                                                             xj7436
                                                             xk7437
                                                             BOARD-HEIGHT-PIXELS)))
                                                    g8267))
                                                (letrec ((xj7438 (loc 'module))
                                                         (xk7439
                                                          (loc 'importer)))
                                                  (letrec ((g8268
                                                            (real?/c
                                                             xj7438
                                                             xk7439
                                                             BOARD-WIDTH)))
                                                    g8268))
                                                (letrec ((xj7440 (loc 'module))
                                                         (xk7441
                                                          (loc 'importer)))
                                                  (letrec ((g8269
                                                            (real?/c
                                                             xj7440
                                                             xk7441
                                                             BOARD-HEIGHT)))
                                                    g8269))))))
                                      g8265))))
                          g7486))))
              g7469)))
    g7468))
