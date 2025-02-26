(letrec ((any? (lambda (v) (letrec ((g7410 #t)) g7410)))
         (meta (lambda (v) (letrec ((g7411 v)) g7411)))
         (member
          (lambda (v lst)
            (letrec ((g7412
                      (letrec ((g7413
                                (letrec ((x-e7414 lst))
                                  (match
                                   x-e7414
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7415 (eq? v v1)))
                                       (if x-cnd7415 #t (member v vs)))))))))
                        g7413)))
              g7412)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7416 (lambda (v) (letrec ((g7417 v)) g7417)))) g7416)))
         (nonzero?
          (lambda (v)
            (letrec ((g7418 (letrec ((x7419 (= v 0))) (not x7419)))) g7418))))
  (letrec ((g7420
            (letrec ((g7421
                      (letrec ((assert
                                (lambda (cnd)
                                  (letrec ((g7422
                                            (if cnd
                                              '()
                                              (error "assertion failed"))))
                                    g7422)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7423
                                            (letrec ((x7425 (number? x)))
                                              (assert x7425)))
                                           (g7424
                                            (letrec ((val7244 (> x y)))
                                              (letrec ((g7426
                                                        (if val7244
                                                          val7244
                                                          (letrec ((val7245
                                                                    (= x y)))
                                                            (letrec ((g7427
                                                                      (if val7245
                                                                        val7245
                                                                        #f)))
                                                              g7427)))))
                                                g7426))))
                                    g7424)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7428
                                            (letrec ((x7430 (number? x)))
                                              (assert x7430)))
                                           (g7429
                                            (letrec ((val7246 (< x y)))
                                              (letrec ((g7431
                                                        (if val7246
                                                          val7246
                                                          (letrec ((val7247
                                                                    (= x y)))
                                                            (letrec ((g7432
                                                                      (if val7247
                                                                        val7247
                                                                        #f)))
                                                              g7432)))))
                                                g7431))))
                                    g7429)))
                               (>
                                (lambda (x y)
                                  (letrec ((g7433
                                            (letrec ((x7435 (number? x)))
                                              (assert x7435)))
                                           (g7434
                                            (letrec ((x7436 (<= x y)))
                                              (not x7436))))
                                    g7434)))
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
                        (letrec ((g7437 '())
                                 (g7438
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7439
                                                        (lambda (k j lst)
                                                          (letrec ((g7440
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7441
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7441))
                                                                     lst)))
                                                            g7440))))
                                                g7439)))
                                           (real?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7442
                                                        (letrec ((x-cnd7443
                                                                  (real?
                                                                   g7273)))
                                                          (if x-cnd7443
                                                            g7273
                                                            (blame
                                                             g7271
                                                             'real?)))))
                                                g7442)))
                                           (boolean?/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7444
                                                        (letrec ((x-cnd7445
                                                                  (boolean?
                                                                   g7276)))
                                                          (if x-cnd7445
                                                            g7276
                                                            (blame
                                                             g7274
                                                             'boolean?)))))
                                                g7444)))
                                           (number?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7446
                                                        (letrec ((x-cnd7447
                                                                  (number?
                                                                   g7279)))
                                                          (if x-cnd7447
                                                            g7279
                                                            (blame
                                                             g7277
                                                             'number?)))))
                                                g7446)))
                                           (any/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7448
                                                        (letrec ((x-cnd7449
                                                                  ((lambda (v)
                                                                     (letrec ((g7450
                                                                               #t))
                                                                       g7450))
                                                                   g7282)))
                                                          (if x-cnd7449
                                                            g7282
                                                            (blame
                                                             g7280
                                                             '(lambda (v)
                                                                #t))))))
                                                g7448)))
                                           (any?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7451
                                                        (letrec ((x-cnd7452
                                                                  ((lambda (v)
                                                                     (letrec ((g7453
                                                                               #t))
                                                                       g7453))
                                                                   g7285)))
                                                          (if x-cnd7452
                                                            g7285
                                                            (blame
                                                             g7283
                                                             '(lambda (v)
                                                                #t))))))
                                                g7451)))
                                           (cons?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7454
                                                        (letrec ((x-cnd7455
                                                                  (pair?
                                                                   g7288)))
                                                          (if x-cnd7455
                                                            g7288
                                                            (blame
                                                             g7286
                                                             'pair?)))))
                                                g7454)))
                                           (cons/c
                                            (lambda (k1 k2)
                                              (letrec ((g7456
                                                        (lambda (k j v)
                                                          (letrec ((g7457
                                                                    (letrec ((x7460
                                                                              (letrec ((x7461
                                                                                        (car
                                                                                         v)))
                                                                                (k1
                                                                                 k
                                                                                 j
                                                                                 x7461)))
                                                                             (x7458
                                                                              (letrec ((x7459
                                                                                        (cdr
                                                                                         v)))
                                                                                (k2
                                                                                 k
                                                                                 j
                                                                                 x7459))))
                                                                      (cons
                                                                       x7460
                                                                       x7458))))
                                                            g7457))))
                                                g7456)))
                                           (pair?/c
                                            (lambda (g7289 g7290 g7291)
                                              (letrec ((g7462
                                                        (letrec ((x-cnd7463
                                                                  (pair?
                                                                   g7291)))
                                                          (if x-cnd7463
                                                            g7291
                                                            (blame
                                                             g7289
                                                             'pair?)))))
                                                g7462)))
                                           (integer?/c
                                            (lambda (g7292 g7293 g7294)
                                              (letrec ((g7464
                                                        (letrec ((x-cnd7465
                                                                  (integer?
                                                                   g7294)))
                                                          (if x-cnd7465
                                                            g7294
                                                            (blame
                                                             g7292
                                                             'integer?)))))
                                                g7464)))
                                           (symbol?/c
                                            (lambda (g7295 g7296 g7297)
                                              (letrec ((g7466
                                                        (letrec ((x-cnd7467
                                                                  (symbol?
                                                                   g7297)))
                                                          (if x-cnd7467
                                                            g7297
                                                            (blame
                                                             g7295
                                                             'symbol?)))))
                                                g7466)))
                                           (string?/c
                                            (lambda (g7298 g7299 g7300)
                                              (letrec ((g7468
                                                        (letrec ((x-cnd7469
                                                                  (string?
                                                                   g7300)))
                                                          (if x-cnd7469
                                                            g7300
                                                            (blame
                                                             g7298
                                                             'string?)))))
                                                g7468)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7470
                                                        (lambda (k j v)
                                                          (letrec ((g7471
                                                                    (letrec ((x-cnd7472
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7472
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7471))))
                                                g7470)))
                                           (or/c
                                            (lambda (c1 c2)
                                              (letrec ((g7473
                                                        (lambda (k j v)
                                                          (letrec ((g7474
                                                                    (letrec ((val7248
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (letrec ((g7475
                                                                                (if val7248
                                                                                  val7248
                                                                                  (c2
                                                                                   k
                                                                                   j
                                                                                   v))))
                                                                        g7475))))
                                                            g7474))))
                                                g7473)))
                                           (null?/c
                                            (lambda (g7301 g7302 g7303)
                                              (letrec ((g7476
                                                        (letrec ((x-cnd7477
                                                                  (null?
                                                                   g7303)))
                                                          (if x-cnd7477
                                                            g7303
                                                            (blame
                                                             g7301
                                                             'null?)))))
                                                g7476)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7478
                                                        (lambda (k j v)
                                                          (letrec ((g7479
                                                                    (letrec ((x-cnd7480
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7480
                                                                        '()
                                                                        (letrec ((x7484
                                                                                  (letrec ((x7485
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7485)))
                                                                                 (x7481
                                                                                  (letrec ((x7483
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7482
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7483
                                                                                     k
                                                                                     j
                                                                                     x7482))))
                                                                          (orig-cons
                                                                           x7484
                                                                           x7481))))))
                                                            g7479))))
                                                g7478)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7486 #t)) g7486)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7487
                                                        (letrec ((x7488
                                                                  (= v 0)))
                                                          (not x7488))))
                                                g7487)))
                                           (nonzero?/c
                                            (lambda (g7304 g7305 g7306)
                                              (letrec ((g7489
                                                        (letrec ((x-cnd7490
                                                                  ((lambda (v)
                                                                     (letrec ((g7491
                                                                               (letrec ((x7492
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7492))))
                                                                       g7491))
                                                                   g7306)))
                                                          (if x-cnd7490
                                                            g7306
                                                            (blame
                                                             g7304
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7489)))
                                           (>=/c
                                            (lambda (n)
                                              (letrec ((g7493
                                                        (lambda (g7307
                                                                 g7308
                                                                 g7309)
                                                          (letrec ((g7494
                                                                    (letrec ((x-cnd7495
                                                                              ((lambda (v)
                                                                                 (letrec ((g7496
                                                                                           (orig->=
                                                                                            v
                                                                                            n)))
                                                                                   g7496))
                                                                               g7309)))
                                                                      (if x-cnd7495
                                                                        g7309
                                                                        (blame
                                                                         g7307
                                                                         '(lambda (v)
                                                                            (orig->=
                                                                             v
                                                                             n)))))))
                                                            g7494))))
                                                g7493)))
                                           (>/c
                                            (lambda (n)
                                              (letrec ((g7497
                                                        (lambda (g7310
                                                                 g7311
                                                                 g7312)
                                                          (letrec ((g7498
                                                                    (letrec ((x-cnd7499
                                                                              ((lambda (v)
                                                                                 (letrec ((g7500
                                                                                           (orig->
                                                                                            v
                                                                                            n)))
                                                                                   g7500))
                                                                               g7312)))
                                                                      (if x-cnd7499
                                                                        g7312
                                                                        (blame
                                                                         g7310
                                                                         '(lambda (v)
                                                                            (orig->
                                                                             v
                                                                             n)))))))
                                                            g7498))))
                                                g7497)))
                                           (</c
                                            (lambda (n)
                                              (letrec ((g7501
                                                        (lambda (g7313
                                                                 g7314
                                                                 g7315)
                                                          (letrec ((g7502
                                                                    (letrec ((x-cnd7503
                                                                              ((lambda (v)
                                                                                 (letrec ((g7504
                                                                                           (orig-<
                                                                                            v
                                                                                            n)))
                                                                                   g7504))
                                                                               g7315)))
                                                                      (if x-cnd7503
                                                                        g7315
                                                                        (blame
                                                                         g7313
                                                                         '(lambda (v)
                                                                            (orig-<
                                                                             v
                                                                             n)))))))
                                                            g7502))))
                                                g7501)))
                                           (<=/c
                                            (lambda (n)
                                              (letrec ((g7505
                                                        (lambda (g7316
                                                                 g7317
                                                                 g7318)
                                                          (letrec ((g7506
                                                                    (letrec ((x-cnd7507
                                                                              ((lambda (v)
                                                                                 (letrec ((g7508
                                                                                           (orig-<=
                                                                                            v
                                                                                            n)))
                                                                                   g7508))
                                                                               g7318)))
                                                                      (if x-cnd7507
                                                                        g7318
                                                                        (blame
                                                                         g7316
                                                                         '(lambda (v)
                                                                            (orig-<=
                                                                             v
                                                                             n)))))))
                                                            g7506))))
                                                g7505)))
                                           (=/c
                                            (lambda (n)
                                              (letrec ((g7509
                                                        (lambda (g7319
                                                                 g7320
                                                                 g7321)
                                                          (letrec ((g7510
                                                                    (letrec ((x-cnd7511
                                                                              ((lambda (v)
                                                                                 (letrec ((g7512
                                                                                           (orig-=
                                                                                            v
                                                                                            n)))
                                                                                   g7512))
                                                                               g7321)))
                                                                      (if x-cnd7511
                                                                        g7321
                                                                        (blame
                                                                         g7319
                                                                         '(lambda (v)
                                                                            (orig-=
                                                                             v
                                                                             n)))))))
                                                            g7510))))
                                                g7509)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7513 v)) g7513)))
                                           (+
                                            (letrec ((xj7322 'server)
                                                     (xk7323 'client))
                                              (letrec ((g7514
                                                        ((lambda (j7326
                                                                  k7327
                                                                  f7328)
                                                           (letrec ((g7516
                                                                     (lambda (g7324
                                                                              g7325)
                                                                       (letrec ((g7517
                                                                                 (letrec ((x7518
                                                                                           (letrec ((x7520
                                                                                                     (number?/c
                                                                                                      j7326
                                                                                                      k7327
                                                                                                      g7324))
                                                                                                    (x7519
                                                                                                     (number?/c
                                                                                                      j7326
                                                                                                      k7327
                                                                                                      g7325)))
                                                                                             (f7328
                                                                                              x7520
                                                                                              x7519))))
                                                                                   (number?/c
                                                                                    j7326
                                                                                    k7327
                                                                                    x7518))))
                                                                         g7517))))
                                                             g7516))
                                                         xj7322
                                                         xk7323
                                                         (lambda (a b)
                                                           (letrec ((g7515
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7515)))))
                                                g7514)))
                                           (-
                                            (letrec ((xj7329 'server)
                                                     (xk7330 'client))
                                              (letrec ((g7521
                                                        ((lambda (j7333
                                                                  k7334
                                                                  f7335)
                                                           (letrec ((g7523
                                                                     (lambda (g7331
                                                                              g7332)
                                                                       (letrec ((g7524
                                                                                 (letrec ((x7525
                                                                                           (letrec ((x7527
                                                                                                     (number?/c
                                                                                                      j7333
                                                                                                      k7334
                                                                                                      g7331))
                                                                                                    (x7526
                                                                                                     (number?/c
                                                                                                      j7333
                                                                                                      k7334
                                                                                                      g7332)))
                                                                                             (f7335
                                                                                              x7527
                                                                                              x7526))))
                                                                                   (number?/c
                                                                                    j7333
                                                                                    k7334
                                                                                    x7525))))
                                                                         g7524))))
                                                             g7523))
                                                         xj7329
                                                         xk7330
                                                         (lambda (a b)
                                                           (letrec ((g7522
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7522)))))
                                                g7521)))
                                           (*
                                            (letrec ((xj7336 'server)
                                                     (xk7337 'client))
                                              (letrec ((g7528
                                                        ((lambda (j7340
                                                                  k7341
                                                                  f7342)
                                                           (letrec ((g7530
                                                                     (lambda (g7338
                                                                              g7339)
                                                                       (letrec ((g7531
                                                                                 (letrec ((x7532
                                                                                           (letrec ((x7534
                                                                                                     (number?/c
                                                                                                      j7340
                                                                                                      k7341
                                                                                                      g7338))
                                                                                                    (x7533
                                                                                                     (number?/c
                                                                                                      j7340
                                                                                                      k7341
                                                                                                      g7339)))
                                                                                             (f7342
                                                                                              x7534
                                                                                              x7533))))
                                                                                   (number?/c
                                                                                    j7340
                                                                                    k7341
                                                                                    x7532))))
                                                                         g7531))))
                                                             g7530))
                                                         xj7336
                                                         xk7337
                                                         (lambda (a b)
                                                           (letrec ((g7529
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7529)))))
                                                g7528)))
                                           (<
                                            (letrec ((xj7343 'server)
                                                     (xk7344 'client))
                                              (letrec ((g7535
                                                        ((lambda (j7347
                                                                  k7348
                                                                  f7349)
                                                           (letrec ((g7537
                                                                     (lambda (g7345
                                                                              g7346)
                                                                       (letrec ((g7538
                                                                                 (letrec ((x7539
                                                                                           (letrec ((x7541
                                                                                                     (number?/c
                                                                                                      j7347
                                                                                                      k7348
                                                                                                      g7345))
                                                                                                    (x7540
                                                                                                     (number?/c
                                                                                                      j7347
                                                                                                      k7348
                                                                                                      g7346)))
                                                                                             (f7349
                                                                                              x7541
                                                                                              x7540))))
                                                                                   (boolean?/c
                                                                                    j7347
                                                                                    k7348
                                                                                    x7539))))
                                                                         g7538))))
                                                             g7537))
                                                         xj7343
                                                         xk7344
                                                         (lambda (a b)
                                                           (letrec ((g7536
                                                                     (orig-<
                                                                      a
                                                                      b)))
                                                             g7536)))))
                                                g7535)))
                                           (>
                                            (letrec ((xj7350 'server)
                                                     (xk7351 'client))
                                              (letrec ((g7542
                                                        ((lambda (j7354
                                                                  k7355
                                                                  f7356)
                                                           (letrec ((g7544
                                                                     (lambda (g7352
                                                                              g7353)
                                                                       (letrec ((g7545
                                                                                 (letrec ((x7546
                                                                                           (letrec ((x7548
                                                                                                     (number?/c
                                                                                                      j7354
                                                                                                      k7355
                                                                                                      g7352))
                                                                                                    (x7547
                                                                                                     (number?/c
                                                                                                      j7354
                                                                                                      k7355
                                                                                                      g7353)))
                                                                                             (f7356
                                                                                              x7548
                                                                                              x7547))))
                                                                                   (boolean?/c
                                                                                    j7354
                                                                                    k7355
                                                                                    x7546))))
                                                                         g7545))))
                                                             g7544))
                                                         xj7350
                                                         xk7351
                                                         (lambda (a b)
                                                           (letrec ((g7543
                                                                     (orig->
                                                                      a
                                                                      b)))
                                                             g7543)))))
                                                g7542)))
                                           (<=
                                            (letrec ((xj7357 'server)
                                                     (xk7358 'client))
                                              (letrec ((g7549
                                                        ((lambda (j7361
                                                                  k7362
                                                                  f7363)
                                                           (letrec ((g7551
                                                                     (lambda (g7359
                                                                              g7360)
                                                                       (letrec ((g7552
                                                                                 (letrec ((x7553
                                                                                           (letrec ((x7555
                                                                                                     (number?/c
                                                                                                      j7361
                                                                                                      k7362
                                                                                                      g7359))
                                                                                                    (x7554
                                                                                                     (number?/c
                                                                                                      j7361
                                                                                                      k7362
                                                                                                      g7360)))
                                                                                             (f7363
                                                                                              x7555
                                                                                              x7554))))
                                                                                   (boolean?/c
                                                                                    j7361
                                                                                    k7362
                                                                                    x7553))))
                                                                         g7552))))
                                                             g7551))
                                                         xj7357
                                                         xk7358
                                                         (lambda (a b)
                                                           (letrec ((g7550
                                                                     (orig-<=
                                                                      a
                                                                      b)))
                                                             g7550)))))
                                                g7549)))
                                           (>=
                                            (letrec ((xj7364 'server)
                                                     (xk7365 'client))
                                              (letrec ((g7556
                                                        ((lambda (j7368
                                                                  k7369
                                                                  f7370)
                                                           (letrec ((g7558
                                                                     (lambda (g7366
                                                                              g7367)
                                                                       (letrec ((g7559
                                                                                 (letrec ((x7560
                                                                                           (letrec ((x7562
                                                                                                     (number?/c
                                                                                                      j7368
                                                                                                      k7369
                                                                                                      g7366))
                                                                                                    (x7561
                                                                                                     (number?/c
                                                                                                      j7368
                                                                                                      k7369
                                                                                                      g7367)))
                                                                                             (f7370
                                                                                              x7562
                                                                                              x7561))))
                                                                                   (boolean?/c
                                                                                    j7368
                                                                                    k7369
                                                                                    x7560))))
                                                                         g7559))))
                                                             g7558))
                                                         xj7364
                                                         xk7365
                                                         (lambda (a b)
                                                           (letrec ((g7557
                                                                     (orig->=
                                                                      a
                                                                      b)))
                                                             g7557)))))
                                                g7556)))
                                           (add1
                                            (lambda (x)
                                              (letrec ((g7563 (+ x 1)))
                                                g7563)))
                                           (/
                                            (letrec ((xj7371 'server)
                                                     (xk7372 'client))
                                              (letrec ((g7564
                                                        ((lambda (j7375
                                                                  k7376
                                                                  f7377)
                                                           (letrec ((g7566
                                                                     (lambda (g7373
                                                                              g7374)
                                                                       (letrec ((g7567
                                                                                 (letrec ((x7568
                                                                                           (letrec ((x7570
                                                                                                     (number?/c
                                                                                                      j7375
                                                                                                      k7376
                                                                                                      g7373))
                                                                                                    (x7569
                                                                                                     (number?/c
                                                                                                      j7375
                                                                                                      k7376
                                                                                                      g7374)))
                                                                                             (f7377
                                                                                              x7570
                                                                                              x7569))))
                                                                                   (number?/c
                                                                                    j7375
                                                                                    k7376
                                                                                    x7568))))
                                                                         g7567))))
                                                             g7566))
                                                         xj7371
                                                         xk7372
                                                         (lambda (a b)
                                                           (letrec ((g7565
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7565)))))
                                                g7564)))
                                           (car
                                            (letrec ((xj7378 'server)
                                                     (xk7379 'client))
                                              (letrec ((g7571
                                                        ((lambda (j7381
                                                                  k7382
                                                                  f7383)
                                                           (letrec ((g7573
                                                                     (lambda (g7380)
                                                                       (letrec ((g7574
                                                                                 (letrec ((x7575
                                                                                           (letrec ((x7576
                                                                                                     (pair?/c
                                                                                                      j7381
                                                                                                      k7382
                                                                                                      g7380)))
                                                                                             (f7383
                                                                                              x7576))))
                                                                                   (any/c
                                                                                    j7381
                                                                                    k7382
                                                                                    x7575))))
                                                                         g7574))))
                                                             g7573))
                                                         xj7378
                                                         xk7379
                                                         (lambda (p)
                                                           (letrec ((g7572
                                                                     (orig-car
                                                                      p)))
                                                             g7572)))))
                                                g7571)))
                                           (cdr
                                            (letrec ((xj7384 'server)
                                                     (xk7385 'client))
                                              (letrec ((g7577
                                                        ((lambda (j7387
                                                                  k7388
                                                                  f7389)
                                                           (letrec ((g7579
                                                                     (lambda (g7386)
                                                                       (letrec ((g7580
                                                                                 (letrec ((x7581
                                                                                           (letrec ((x7582
                                                                                                     (pair?/c
                                                                                                      j7387
                                                                                                      k7388
                                                                                                      g7386)))
                                                                                             (f7389
                                                                                              x7582))))
                                                                                   (any/c
                                                                                    j7387
                                                                                    k7388
                                                                                    x7581))))
                                                                         g7580))))
                                                             g7579))
                                                         xj7384
                                                         xk7385
                                                         (lambda (p)
                                                           (letrec ((g7578
                                                                     (orig-cdr
                                                                      p)))
                                                             g7578)))))
                                                g7577)))
                                           (cons
                                            (letrec ((xj7390 'server)
                                                     (xk7391 'client))
                                              (letrec ((g7583
                                                        ((lambda (j7394
                                                                  k7395
                                                                  f7396)
                                                           (letrec ((g7585
                                                                     (lambda (g7392
                                                                              g7393)
                                                                       (letrec ((g7586
                                                                                 (letrec ((x7587
                                                                                           (letrec ((x7589
                                                                                                     (any/c
                                                                                                      j7394
                                                                                                      k7395
                                                                                                      g7392))
                                                                                                    (x7588
                                                                                                     (any/c
                                                                                                      j7394
                                                                                                      k7395
                                                                                                      g7393)))
                                                                                             (f7396
                                                                                              x7589
                                                                                              x7588))))
                                                                                   (pair?/c
                                                                                    j7394
                                                                                    k7395
                                                                                    x7587))))
                                                                         g7586))))
                                                             g7585))
                                                         xj7390
                                                         xk7391
                                                         (lambda (a b)
                                                           (letrec ((g7584
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7584)))))
                                                g7583)))
                                           (vector-ref
                                            (letrec ((xj7397 'server)
                                                     (xk7398 'client))
                                              (letrec ((g7590
                                                        ((lambda (j7400
                                                                  k7401
                                                                  f7402)
                                                           (letrec ((g7592
                                                                     (lambda (g7399)
                                                                       (letrec ((g7593
                                                                                 (letrec ((x7594
                                                                                           (letrec ((x7595
                                                                                                     (vector?/c
                                                                                                      j7400
                                                                                                      k7401
                                                                                                      g7399)))
                                                                                             (f7402
                                                                                              x7595))))
                                                                                   (integer?/c
                                                                                    j7400
                                                                                    k7401
                                                                                    x7594))))
                                                                         g7593))))
                                                             g7592))
                                                         xj7397
                                                         xk7398
                                                         (lambda (v i)
                                                           (letrec ((g7591
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7591)))))
                                                g7590)))
                                           (vector-set!
                                            (letrec ((xj7403 'server)
                                                     (xk7404 'client))
                                              (letrec ((g7596
                                                        ((lambda (j7407
                                                                  k7408
                                                                  f7409)
                                                           (letrec ((g7598
                                                                     (lambda (g7405
                                                                              g7406)
                                                                       (letrec ((g7599
                                                                                 (letrec ((x7600
                                                                                           (letrec ((x7602
                                                                                                     (vector?/c
                                                                                                      j7407
                                                                                                      k7408
                                                                                                      g7405))
                                                                                                    (x7601
                                                                                                     (integer?/c
                                                                                                      j7407
                                                                                                      k7408
                                                                                                      g7406)))
                                                                                             (f7409
                                                                                              x7602
                                                                                              x7601))))
                                                                                   (any/c
                                                                                    j7407
                                                                                    k7408
                                                                                    x7600))))
                                                                         g7599))))
                                                             g7598))
                                                         xj7403
                                                         xk7404
                                                         (lambda (vec i v)
                                                           (letrec ((g7597
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7597)))))
                                                g7596)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7603
                                                        (letrec ((x7604
                                                                  (letrec ((x7605
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7605))))
                                                          (cdr x7604))))
                                                g7603)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7606
                                                        (letrec ((x7609
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7609)))
                                                       (g7607
                                                        (letrec ((x7610
                                                                  (list? l)))
                                                          (assert x7610)))
                                                       (g7608
                                                        (letrec ((x-cnd7611
                                                                  (null? l)))
                                                          (if x-cnd7611
                                                            '()
                                                            (letrec ((x7614
                                                                      (letrec ((x7615
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7615)))
                                                                     (x7612
                                                                      (letrec ((x7613
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7613))))
                                                              (cons
                                                               x7614
                                                               x7612))))))
                                                g7608)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7616
                                                        (letrec ((x7617
                                                                  (car x)))
                                                          (cdr x7617))))
                                                g7616)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7618
                                                        (letrec ((x7619
                                                                  (letrec ((x7620
                                                                            (letrec ((x7621
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7621))))
                                                                    (cdr
                                                                     x7620))))
                                                          (car x7619))))
                                                g7618)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7622
                                                        (letrec ((x7623
                                                                  (letrec ((x7624
                                                                            (letrec ((x7625
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7625))))
                                                                    (car
                                                                     x7624))))
                                                          (cdr x7623))))
                                                g7622)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7626
                                                        (letrec ((x7629
                                                                  (string?
                                                                   filename)))
                                                          (assert x7629)))
                                                       (g7627
                                                        (letrec ((x7630
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7630)))
                                                       (g7628
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7631
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7632 res))
                                                            g7632))))
                                                g7628)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7633
                                                        (letrec ((x7634
                                                                  (letrec ((x7635
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7635))))
                                                          (car x7634))))
                                                g7633)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7636
                                                        (letrec ((x7637
                                                                  (letrec ((x7638
                                                                            (letrec ((x7639
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7639))))
                                                                    (car
                                                                     x7638))))
                                                          (cdr x7637))))
                                                g7636)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7640
                                                        (letrec ((x7642
                                                                  (list? l)))
                                                          (assert x7642)))
                                                       (g7641
                                                        (letrec ((x-cnd7643
                                                                  (null? l)))
                                                          (if x-cnd7643
                                                            #f
                                                            (letrec ((x-cnd7644
                                                                      (letrec ((x7645
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7645
                                                                         k))))
                                                              (if x-cnd7644
                                                                (car l)
                                                                (letrec ((x7646
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7646))))))))
                                                g7641)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7647
                                                        (letrec ((x7648
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7648))))
                                                g7647)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7649
                                                        (letrec ((x7651
                                                                  (list? l)))
                                                          (assert x7651)))
                                                       (g7650
                                                        (letrec ((x-cnd7652
                                                                  (null? l)))
                                                          (if x-cnd7652
                                                            ""
                                                            (letrec ((x7655
                                                                      (letrec ((x7656
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7656)))
                                                                     (x7653
                                                                      (letrec ((x7654
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7654))))
                                                              (string-append
                                                               x7655
                                                               x7653))))))
                                                g7650)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7657
                                                        (letrec ((x7660
                                                                  (char? c1)))
                                                          (assert x7660)))
                                                       (g7658
                                                        (letrec ((x7661
                                                                  (char? c2)))
                                                          (assert x7661)))
                                                       (g7659
                                                        (letrec ((val7249
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7662
                                                                    (if val7249
                                                                      val7249
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7662))))
                                                g7659)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7663
                                                        (letrec ((x7664
                                                                  (letrec ((x7665
                                                                            (letrec ((x7666
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7666))))
                                                                    (cdr
                                                                     x7665))))
                                                          (cdr x7664))))
                                                g7663)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7667
                                                        (letrec ((x7670
                                                                  (list? l)))
                                                          (assert x7670)))
                                                       (g7668
                                                        (letrec ((x7671
                                                                  (number?)))
                                                          (assert x7671)))
                                                       (g7669
                                                        (letrec ((x-cnd7672
                                                                  (zero? k)))
                                                          (if x-cnd7672
                                                            x
                                                            (letrec ((x7674
                                                                      (cdr x))
                                                                     (x7673
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7674
                                                               x7673))))))
                                                g7669)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7675 '())) g7675)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7676
                                                        (letrec ((x-cnd7677
                                                                  (letrec ((x7678
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7678))))
                                                          (if x-cnd7677
                                                            (letrec ((x7679
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7679))
                                                            #f))))
                                                g7676)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7680
                                                        (letrec ((val7250
                                                                  (letrec ((x7681
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7681
                                                                     9))))
                                                          (letrec ((g7682
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (letrec ((x7683
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7683
                                                                                   10))))
                                                                        (letrec ((g7684
                                                                                  (if val7251
                                                                                    val7251
                                                                                    (letrec ((x7685
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7685
                                                                                       32)))))
                                                                          g7684)))))
                                                            g7682))))
                                                g7680)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7686
                                                        (letrec ((x7687
                                                                  (letrec ((x7688
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7688))))
                                                          (cdr x7687))))
                                                g7686)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7689
                                                        (letrec ((x7691
                                                                  (number? x)))
                                                          (assert x7691)))
                                                       (g7690 (> x 0)))
                                                g7690)))
                                           (string=?
                                            (lambda (s1 s2)
                                              (letrec ((g7692 (bool-top)))
                                                g7692)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7693 #f)) g7693)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7694
                                                        (letrec ((x7695
                                                                  (cdr x)))
                                                          (cdr x7695))))
                                                g7694)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7696
                                                        (letrec ((x7698
                                                                  (number? x)))
                                                          (assert x7698)))
                                                       (g7697
                                                        (letrec ((x-cnd7699
                                                                  (< x 0)))
                                                          (if x-cnd7699
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7697)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7700
                                                        (letrec ((val7252
                                                                  (eq? a b)))
                                                          (letrec ((g7701
                                                                    (if val7252
                                                                      val7252
                                                                      (letrec ((val7253
                                                                                (letrec ((x-cnd7702
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7702
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7703
                                                                                  (if val7253
                                                                                    val7253
                                                                                    (letrec ((val7254
                                                                                              (letrec ((x-cnd7704
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7704
                                                                                                  (letrec ((x-cnd7705
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7705
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7706
                                                                                                (if val7254
                                                                                                  val7254
                                                                                                  (letrec ((val7255
                                                                                                            (letrec ((x-cnd7707
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7707
                                                                                                                (letrec ((x-cnd7708
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7708
                                                                                                                    (letrec ((x-cnd7709
                                                                                                                              (letrec ((x7711
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7710
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7711
                                                                                                                                 x7710))))
                                                                                                                      (if x-cnd7709
                                                                                                                        (letrec ((x7713
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7712
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7713
                                                                                                                           x7712))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7714
                                                                                                              (if val7255
                                                                                                                val7255
                                                                                                                (letrec ((x-cnd7715
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7715
                                                                                                                    (letrec ((x-cnd7716
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7716
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7717
                                                                                                                                    (letrec ((x-cnd7718
                                                                                                                                              (letrec ((x7719
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7719
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7718
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7720
                                                                                                                                                              (letrec ((val7256
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7721
                                                                                                                                                                          (if val7256
                                                                                                                                                                            val7256
                                                                                                                                                                            (letrec ((x-cnd7722
                                                                                                                                                                                      (letrec ((x7724
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7723
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7724
                                                                                                                                                                                         x7723))))
                                                                                                                                                                              (if x-cnd7722
                                                                                                                                                                                (letrec ((x7725
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7725))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7721))))
                                                                                                                                                      g7720))))
                                                                                                                                          (letrec ((g7726
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7726))
                                                                                                                                        #f))))
                                                                                                                            g7717))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7714)))))
                                                                                        g7706)))))
                                                                          g7703)))))
                                                            g7701))))
                                                g7700)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7727
                                                        (letrec ((x7728
                                                                  (letrec ((x7729
                                                                            (letrec ((x7730
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7730))))
                                                                    (car
                                                                     x7729))))
                                                          (cdr x7728))))
                                                g7727)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7731
                                                        (letrec ((x7732
                                                                  (letrec ((x7733
                                                                            (letrec ((x7734
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7734))))
                                                                    (car
                                                                     x7733))))
                                                          (car x7732))))
                                                g7731)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7735 (eq? x y)))
                                                g7735)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7736
                                                        (letrec ((x7739
                                                                  (string?
                                                                   filename)))
                                                          (assert x7739)))
                                                       (g7737
                                                        (letrec ((x7740
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7740)))
                                                       (g7738
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7741
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7742 res))
                                                            g7742))))
                                                g7738)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7743 (cons x '())))
                                                g7743)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7744
                                                        (letrec ((x7747
                                                                  (char? c1)))
                                                          (assert x7747)))
                                                       (g7745
                                                        (letrec ((x7748
                                                                  (char? c2)))
                                                          (assert x7748)))
                                                       (g7746
                                                        (letrec ((val7257
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7749
                                                                    (if val7257
                                                                      val7257
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7749))))
                                                g7746)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7750
                                                        (letrec ((x7751
                                                                  (letrec ((x7752
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7752))))
                                                          (cdr x7751))))
                                                g7750)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7753
                                                        (letrec ((x7754
                                                                  (letrec ((x7755
                                                                            (letrec ((x7756
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7756))))
                                                                    (car
                                                                     x7755))))
                                                          (cdr x7754))))
                                                g7753)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7757
                                                        (letrec ((x7758
                                                                  (letrec ((x7759
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7759))))
                                                          (car x7758))))
                                                g7757)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7760
                                                        (letrec ((x7761
                                                                  (letrec ((x7762
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7762))))
                                                          (car x7761))))
                                                g7760)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7763
                                                        (letrec ((x7766
                                                                  (char? c1)))
                                                          (assert x7766)))
                                                       (g7764
                                                        (letrec ((x7767
                                                                  (char? c2)))
                                                          (assert x7767)))
                                                       (g7765
                                                        (letrec ((x7768
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7768))))
                                                g7765)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7769
                                                        (letrec ((x7770
                                                                  (letrec ((x7771
                                                                            (letrec ((x7772
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7772))))
                                                                    (car
                                                                     x7771))))
                                                          (car x7770))))
                                                g7769)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7773
                                                        (letrec ((x7775
                                                                  (number? x)))
                                                          (assert x7775)))
                                                       (g7774 (< x 0)))
                                                g7774)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7776 (memq e l)))
                                                g7776)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7777
                                                        (letrec ((x7778
                                                                  (letrec ((x7779
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7779))))
                                                          (car x7778))))
                                                g7777)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7780 '())) g7780)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7781
                                                        (letrec ((x7783
                                                                  (list? l)))
                                                          (assert x7783)))
                                                       (g7782
                                                        (letrec ((x-cnd7784
                                                                  (null? l)))
                                                          (if x-cnd7784
                                                            '()
                                                            (letrec ((x7787
                                                                      (letrec ((x7788
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7788)))
                                                                     (x7785
                                                                      (letrec ((x7786
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7786))))
                                                              (append
                                                               x7787
                                                               x7785))))))
                                                g7782)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7789
                                                        (letrec ((x7790
                                                                  (letrec ((x7791
                                                                            (letrec ((x7792
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7792))))
                                                                    (car
                                                                     x7791))))
                                                          (car x7790))))
                                                g7789)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7793
                                                        (letrec ((x7794
                                                                  (letrec ((x7795
                                                                            (letrec ((x7796
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7796))))
                                                                    (cdr
                                                                     x7795))))
                                                          (cdr x7794))))
                                                g7793)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7797
                                                        (letrec ((x7799
                                                                  (number? x)))
                                                          (assert x7799)))
                                                       (g7798
                                                        (letrec ((x7800
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7800))))
                                                g7798)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7801
                                                        (letrec ((x7802
                                                                  (letrec ((x7803
                                                                            (letrec ((x7804
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7804))))
                                                                    (car
                                                                     x7803))))
                                                          (car x7802))))
                                                g7801)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7805
                                                        (letrec ((x7808
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7808)))
                                                       (g7806
                                                        (letrec ((x7809
                                                                  (list?
                                                                   args)))
                                                          (assert x7809)))
                                                       (g7807
                                                        (letrec ((x-cnd7810
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7810
                                                            (letrec ((g7811
                                                                      (proc)))
                                                              g7811)
                                                            (letrec ((x-cnd7812
                                                                      (letrec ((x7813
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7813))))
                                                              (if x-cnd7812
                                                                (letrec ((g7814
                                                                          (letrec ((x7815
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7815))))
                                                                  g7814)
                                                                (letrec ((x-cnd7816
                                                                          (letrec ((x7817
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7817))))
                                                                  (if x-cnd7816
                                                                    (letrec ((g7818
                                                                              (letrec ((x7820
                                                                                        (car
                                                                                         args))
                                                                                       (x7819
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7820
                                                                                 x7819))))
                                                                      g7818)
                                                                    (letrec ((x-cnd7821
                                                                              (letrec ((x7822
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7822))))
                                                                      (if x-cnd7821
                                                                        (letrec ((g7823
                                                                                  (letrec ((x7826
                                                                                            (car
                                                                                             args))
                                                                                           (x7825
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7824
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7826
                                                                                     x7825
                                                                                     x7824))))
                                                                          g7823)
                                                                        (letrec ((x-cnd7827
                                                                                  (letrec ((x7828
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7828))))
                                                                          (if x-cnd7827
                                                                            (letrec ((g7829
                                                                                      (letrec ((x7833
                                                                                                (car
                                                                                                 args))
                                                                                               (x7832
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7831
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7830
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7833
                                                                                         x7832
                                                                                         x7831
                                                                                         x7830))))
                                                                              g7829)
                                                                            (letrec ((x-cnd7834
                                                                                      (letrec ((x7835
                                                                                                (letrec ((x7836
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7836))))
                                                                                        (null?
                                                                                         x7835))))
                                                                              (if x-cnd7834
                                                                                (letrec ((g7837
                                                                                          (letrec ((x7843
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7842
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7841
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7840
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7838
                                                                                                    (letrec ((x7839
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7839))))
                                                                                            (proc
                                                                                             x7843
                                                                                             x7842
                                                                                             x7841
                                                                                             x7840
                                                                                             x7838))))
                                                                                  g7837)
                                                                                (letrec ((x-cnd7844
                                                                                          (letrec ((x7845
                                                                                                    (letrec ((x7846
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7846))))
                                                                                            (null?
                                                                                             x7845))))
                                                                                  (if x-cnd7844
                                                                                    (letrec ((g7847
                                                                                              (letrec ((x7855
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7854
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7853
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7852
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7850
                                                                                                        (letrec ((x7851
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7851)))
                                                                                                       (x7848
                                                                                                        (letrec ((x7849
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7849))))
                                                                                                (proc
                                                                                                 x7855
                                                                                                 x7854
                                                                                                 x7853
                                                                                                 x7852
                                                                                                 x7850
                                                                                                 x7848))))
                                                                                      g7847)
                                                                                    (letrec ((x-cnd7856
                                                                                              (letrec ((x7857
                                                                                                        (letrec ((x7858
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7858))))
                                                                                                (null?
                                                                                                 x7857))))
                                                                                      (if x-cnd7856
                                                                                        (letrec ((g7859
                                                                                                  (letrec ((x7869
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7868
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7867
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7866
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7864
                                                                                                            (letrec ((x7865
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7865)))
                                                                                                           (x7862
                                                                                                            (letrec ((x7863
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7863)))
                                                                                                           (x7860
                                                                                                            (letrec ((x7861
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7861))))
                                                                                                    (proc
                                                                                                     x7869
                                                                                                     x7868
                                                                                                     x7867
                                                                                                     x7866
                                                                                                     x7864
                                                                                                     x7862
                                                                                                     x7860))))
                                                                                          g7859)
                                                                                        (letrec ((g7870
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7870)))))))))))))))))))
                                                g7807)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7871
                                                        (letrec ((x7873
                                                                  (list? l)))
                                                          (assert x7873)))
                                                       (g7872
                                                        (letrec ((x-cnd7874
                                                                  (null? l)))
                                                          (if x-cnd7874
                                                            #f
                                                            (letrec ((x-cnd7875
                                                                      (letrec ((x7876
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7876
                                                                         e))))
                                                              (if x-cnd7875
                                                                l
                                                                (letrec ((x7877
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7877))))))))
                                                g7872)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7878
                                                        (letrec ((x7879
                                                                  (letrec ((x7880
                                                                            (letrec ((x7881
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7881))))
                                                                    (cdr
                                                                     x7880))))
                                                          (cdr x7879))))
                                                g7878)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7882
                                                        (letrec ((x7883
                                                                  (letrec ((x7884
                                                                            (letrec ((x7885
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7885))))
                                                                    (cdr
                                                                     x7884))))
                                                          (car x7883))))
                                                g7882)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7886 (random 42)))
                                                g7886)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7887
                                                        (letrec ((x7889
                                                                  (number? x)))
                                                          (assert x7889)))
                                                       (g7888 (= x 0)))
                                                g7888)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7890
                                                        (letrec ((val7258
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7891
                                                                    (if val7258
                                                                      val7258
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7891))))
                                                g7890)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7892
                                                        (letrec ((x7893
                                                                  (cdr x)))
                                                          (car x7893))))
                                                g7892)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7894
                                                        (letrec ((val7259
                                                                  (letrec ((x-cnd7895
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7895
                                                                      (letrec ((x7896
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7896))
                                                                      #f))))
                                                          (letrec ((g7897
                                                                    (if val7259
                                                                      val7259
                                                                      (null?
                                                                       l))))
                                                            g7897))))
                                                g7894)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7898
                                                        (letrec ((x7899
                                                                  (letrec ((x7900
                                                                            (letrec ((x7901
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7901))))
                                                                    (cdr
                                                                     x7900))))
                                                          (cdr x7899))))
                                                g7898)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7902
                                                        (letrec ((x-cnd7903
                                                                  (letrec ((x7904
                                                                            #\0))
                                                                    (char<=?
                                                                     x7904
                                                                     c))))
                                                          (if x-cnd7903
                                                            (letrec ((x7905
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7905))
                                                            #f))))
                                                g7902)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7906
                                                        (letrec ((x7908
                                                                  (list? l)))
                                                          (assert x7908)))
                                                       (g7907
                                                        (letrec ((x-cnd7909
                                                                  (null? l)))
                                                          (if x-cnd7909
                                                            #f
                                                            (letrec ((x-cnd7910
                                                                      (letrec ((x7911
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7911
                                                                         k))))
                                                              (if x-cnd7910
                                                                (car l)
                                                                (letrec ((x7912
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7912))))))))
                                                g7907)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7913 (if x #f #t)))
                                                g7913)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7914 (append l1 l2)))
                                                g7914)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7915
                                                        (letrec ((x7917
                                                                  (list? l)))
                                                          (assert x7917)))
                                                       (g7916
                                                        (letrec ((x-cnd7918
                                                                  (null? l)))
                                                          (if x-cnd7918
                                                            #f
                                                            (letrec ((x-cnd7919
                                                                      (letrec ((x7920
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7920
                                                                         e))))
                                                              (if x-cnd7919
                                                                l
                                                                (letrec ((x7921
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7921))))))))
                                                g7916)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7922
                                                        (letrec ((x7923
                                                                  (letrec ((x7924
                                                                            (letrec ((x7925
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7925))))
                                                                    (cdr
                                                                     x7924))))
                                                          (car x7923))))
                                                g7922)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7926
                                                        (letrec ((x7928
                                                                  (list? l)))
                                                          (assert x7928)))
                                                       (g7927
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7929
                                                                              (letrec ((x-cnd7930
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7930
                                                                                  0
                                                                                  (letrec ((x7931
                                                                                            (letrec ((x7932
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7932))))
                                                                                    (+
                                                                                     1
                                                                                     x7931))))))
                                                                      g7929))))
                                                          (letrec ((g7933
                                                                    (rec l)))
                                                            g7933))))
                                                g7927)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7934
                                                        (letrec ((x7937
                                                                  (char? c1)))
                                                          (assert x7937)))
                                                       (g7935
                                                        (letrec ((x7938
                                                                  (char? c2)))
                                                          (assert x7938)))
                                                       (g7936
                                                        (letrec ((val7260
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7939
                                                                    (if val7260
                                                                      val7260
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7939))))
                                                g7936)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7940
                                                        (letrec ((x7941
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7941))))
                                                g7940)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7942
                                                        (letrec ((x7943
                                                                  (letrec ((x7944
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7944))))
                                                          (cdr x7943))))
                                                g7942)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7945
                                                        (letrec ((x7947
                                                                  (list? l)))
                                                          (assert x7947)))
                                                       (g7946
                                                        (letrec ((x-cnd7948
                                                                  (null? l)))
                                                          (if x-cnd7948
                                                            #f
                                                            (letrec ((x-cnd7949
                                                                      (letrec ((x7950
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7950
                                                                         k))))
                                                              (if x-cnd7949
                                                                (car l)
                                                                (letrec ((x7951
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7951))))))))
                                                g7946)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7952
                                                        (letrec ((x7953
                                                                  (car x)))
                                                          (car x7953))))
                                                g7952)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7954
                                                        (letrec ((x7957
                                                                  (char? c1)))
                                                          (assert x7957)))
                                                       (g7955
                                                        (letrec ((x7958
                                                                  (char? c2)))
                                                          (assert x7958)))
                                                       (g7956
                                                        (letrec ((x7959
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7959))))
                                                g7956)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7960
                                                        (letrec ((val7261
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7961
                                                                    (if val7261
                                                                      val7261
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7961))))
                                                g7960)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7962
                                                        (letrec ((x7965
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7965)))
                                                       (g7963
                                                        (letrec ((x7966
                                                                  (list? l)))
                                                          (assert x7966)))
                                                       (g7964
                                                        (letrec ((x-cnd7967
                                                                  (null? l)))
                                                          (if x-cnd7967
                                                            #t
                                                            (letrec ((x-cnd7968
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7968
                                                                (letrec ((g7969
                                                                          (letrec ((x7971
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7971)))
                                                                         (g7970
                                                                          (letrec ((x7972
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7972))))
                                                                  g7970)
                                                                '()))))))
                                                g7964)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7973
                                                        (letrec ((x7975
                                                                  (number? x)))
                                                          (assert x7975)))
                                                       (g7974
                                                        (letrec ((x-cnd7976
                                                                  (< x 0)))
                                                          (if x-cnd7976
                                                            (- 0 x)
                                                            x))))
                                                g7974)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7977
                                                        (letrec ((x7980
                                                                  (char? c1)))
                                                          (assert x7980)))
                                                       (g7978
                                                        (letrec ((x7981
                                                                  (char? c2)))
                                                          (assert x7981)))
                                                       (g7979
                                                        (letrec ((val7262
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7982
                                                                    (if val7262
                                                                      val7262
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7982))))
                                                g7979)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7983
                                                        (letrec ((x7984
                                                                  (letrec ((x7985
                                                                            (letrec ((x7986
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7986))))
                                                                    (cdr
                                                                     x7985))))
                                                          (car x7984))))
                                                g7983)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7987 #f)) g7987)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7988
                                                        (letrec ((x7990
                                                                  (letrec ((x7991
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7991)))
                                                                 (x7989
                                                                  (gcd m n)))
                                                          (/ x7990 x7989))))
                                                g7988)))
                                           (deref car)
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7992
                                                        (letrec ((x7996
                                                                  (list? l)))
                                                          (assert x7996)))
                                                       (g7993
                                                        (letrec ((x7997
                                                                  (number?
                                                                   index)))
                                                          (assert x7997)))
                                                       (g7994
                                                        (letrec ((x7998
                                                                  (letrec ((x7999
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7999))))
                                                          (assert x7998)))
                                                       (g7995
                                                        (letrec ((x-cnd8000
                                                                  (= index 0)))
                                                          (if x-cnd8000
                                                            (car l)
                                                            (letrec ((x8002
                                                                      (cdr l))
                                                                     (x8001
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8002
                                                               x8001))))))
                                                g7995)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8003
                                                        (letrec ((x-cnd8004
                                                                  (= b 0)))
                                                          (if x-cnd8004
                                                            a
                                                            (letrec ((x8005
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8005))))))
                                                g8003)))
                                           (phi
                                            (lambda (x1)
                                              (letrec ((g8006
                                                        (lambda (x2)
                                                          (letrec ((g8007
                                                                    (lambda (x3)
                                                                      (letrec ((g8008
                                                                                (lambda (x4)
                                                                                  (letrec ((g8009
                                                                                            (lambda (x5)
                                                                                              (letrec ((g8010
                                                                                                        (lambda (x6)
                                                                                                          (letrec ((g8011
                                                                                                                    (lambda (x7)
                                                                                                                      (letrec ((g8012
                                                                                                                                (letrec ((x-cnd8013
                                                                                                                                          (letrec ((val7263
                                                                                                                                                    x1))
                                                                                                                                            (letrec ((g8014
                                                                                                                                                      (if val7263
                                                                                                                                                        val7263
                                                                                                                                                        x2)))
                                                                                                                                              g8014))))
                                                                                                                                  (if x-cnd8013
                                                                                                                                    (letrec ((x-cnd8015
                                                                                                                                              (letrec ((val7264
                                                                                                                                                        x1))
                                                                                                                                                (letrec ((g8016
                                                                                                                                                          (if val7264
                                                                                                                                                            val7264
                                                                                                                                                            (letrec ((val7265
                                                                                                                                                                      (not
                                                                                                                                                                       x2)))
                                                                                                                                                              (letrec ((g8017
                                                                                                                                                                        (if val7265
                                                                                                                                                                          val7265
                                                                                                                                                                          (not
                                                                                                                                                                           x3))))
                                                                                                                                                                g8017)))))
                                                                                                                                                  g8016))))
                                                                                                                                      (if x-cnd8015
                                                                                                                                        (letrec ((x-cnd8018
                                                                                                                                                  (letrec ((val7266
                                                                                                                                                            x3))
                                                                                                                                                    (letrec ((g8019
                                                                                                                                                              (if val7266
                                                                                                                                                                val7266
                                                                                                                                                                x4)))
                                                                                                                                                      g8019))))
                                                                                                                                          (if x-cnd8018
                                                                                                                                            (letrec ((x-cnd8020
                                                                                                                                                      (letrec ((val7267
                                                                                                                                                                (not
                                                                                                                                                                 x4)))
                                                                                                                                                        (letrec ((g8021
                                                                                                                                                                  (if val7267
                                                                                                                                                                    val7267
                                                                                                                                                                    x1)))
                                                                                                                                                          g8021))))
                                                                                                                                              (if x-cnd8020
                                                                                                                                                (letrec ((x-cnd8022
                                                                                                                                                          (letrec ((val7268
                                                                                                                                                                    (not
                                                                                                                                                                     x2)))
                                                                                                                                                            (letrec ((g8023
                                                                                                                                                                      (if val7268
                                                                                                                                                                        val7268
                                                                                                                                                                        (not
                                                                                                                                                                         x3))))
                                                                                                                                                              g8023))))
                                                                                                                                                  (if x-cnd8022
                                                                                                                                                    (letrec ((val7269
                                                                                                                                                              x4))
                                                                                                                                                      (letrec ((g8024
                                                                                                                                                                (if val7269
                                                                                                                                                                  val7269
                                                                                                                                                                  x2)))
                                                                                                                                                        g8024))
                                                                                                                                                    #f))
                                                                                                                                                #f))
                                                                                                                                            #f))
                                                                                                                                        #f))
                                                                                                                                    #f))))
                                                                                                                        g8012))))
                                                                                                            g8011))))
                                                                                                g8010))))
                                                                                    g8009))))
                                                                        g8008))))
                                                            g8007))))
                                                g8006)))
                                           (try
                                            (lambda (f)
                                              (letrec ((g8025
                                                        (letrec ((val7270
                                                                  (f #t)))
                                                          (letrec ((g8026
                                                                    (if val7270
                                                                      val7270
                                                                      (f #f))))
                                                            g8026))))
                                                g8025)))
                                           (sat-solve-7
                                            (lambda (p)
                                              (letrec ((g8027
                                                        (try
                                                         (lambda (n1)
                                                           (letrec ((g8028
                                                                     (try
                                                                      (lambda (n2)
                                                                        (letrec ((g8029
                                                                                  (try
                                                                                   (lambda (n3)
                                                                                     (letrec ((g8030
                                                                                               (try
                                                                                                (lambda (n4)
                                                                                                  (letrec ((g8031
                                                                                                            (try
                                                                                                             (lambda (n5)
                                                                                                               (letrec ((g8032
                                                                                                                         (try
                                                                                                                          (lambda (n6)
                                                                                                                            (letrec ((g8033
                                                                                                                                      (try
                                                                                                                                       (lambda (n7)
                                                                                                                                         (letrec ((g8034
                                                                                                                                                   (letrec ((x8035
                                                                                                                                                             (letrec ((x8036
                                                                                                                                                                       (letrec ((x8037
                                                                                                                                                                                 (letrec ((x8038
                                                                                                                                                                                           (letrec ((x8039
                                                                                                                                                                                                     (letrec ((x8040
                                                                                                                                                                                                               (p
                                                                                                                                                                                                                n1)))
                                                                                                                                                                                                       (x8040
                                                                                                                                                                                                        n2))))
                                                                                                                                                                                             (x8039
                                                                                                                                                                                              n3))))
                                                                                                                                                                                   (x8038
                                                                                                                                                                                    n4))))
                                                                                                                                                                         (x8037
                                                                                                                                                                          n5))))
                                                                                                                                                               (x8036
                                                                                                                                                                n6))))
                                                                                                                                                     (x8035
                                                                                                                                                      n7))))
                                                                                                                                           g8034)))))
                                                                                                                              g8033)))))
                                                                                                                 g8032)))))
                                                                                                    g8031)))))
                                                                                       g8030)))))
                                                                          g8029)))))
                                                             g8028)))))
                                                g8027))))
                                    (letrec ((g8041 (sat-solve-7 phi)))
                                      g8041))))
                          g7438))))
              g7421)))
    g7420))
