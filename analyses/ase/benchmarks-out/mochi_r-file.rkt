(letrec ((any? (lambda (v) (letrec ((g7415 #t)) g7415)))
         (meta (lambda (v) (letrec ((g7416 v)) g7416)))
         (member
          (lambda (v lst)
            (letrec ((g7417
                      (letrec ((g7418
                                (letrec ((x-e7419 lst))
                                  (match
                                   x-e7419
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7420 (eq? v v1)))
                                       (if x-cnd7420 #t (member v vs)))))))))
                        g7418)))
              g7417)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7421 (lambda (v) (letrec ((g7422 v)) g7422)))) g7421)))
         (nonzero?
          (lambda (v)
            (letrec ((g7423 (letrec ((x7424 (= v 0))) (not x7424)))) g7423))))
  (letrec ((g7425
            (letrec ((g7426
                      (letrec ((assert
                                (lambda (cnd)
                                  (letrec ((g7427
                                            (if cnd
                                              '()
                                              (error "assertion failed"))))
                                    g7427)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7428
                                            (letrec ((x7430 (number? x)))
                                              (assert x7430)))
                                           (g7429
                                            (letrec ((val7244 (> x y)))
                                              (letrec ((g7431
                                                        (if val7244
                                                          val7244
                                                          (letrec ((val7245
                                                                    (= x y)))
                                                            (letrec ((g7432
                                                                      (if val7245
                                                                        val7245
                                                                        #f)))
                                                              g7432)))))
                                                g7431))))
                                    g7429)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7433
                                            (letrec ((x7435 (number? x)))
                                              (assert x7435)))
                                           (g7434
                                            (letrec ((val7246 (< x y)))
                                              (letrec ((g7436
                                                        (if val7246
                                                          val7246
                                                          (letrec ((val7247
                                                                    (= x y)))
                                                            (letrec ((g7437
                                                                      (if val7247
                                                                        val7247
                                                                        #f)))
                                                              g7437)))))
                                                g7436))))
                                    g7434)))
                               (>
                                (lambda (x y)
                                  (letrec ((g7438
                                            (letrec ((x7440 (number? x)))
                                              (assert x7440)))
                                           (g7439
                                            (letrec ((x7441 (<= x y)))
                                              (not x7441))))
                                    g7439)))
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
                        (letrec ((g7442 '())
                                 (g7443
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7444
                                                        (lambda (k j lst)
                                                          (letrec ((g7445
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7446
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7446))
                                                                     lst)))
                                                            g7445))))
                                                g7444)))
                                           (real?/c
                                            (lambda (g7263 g7264 g7265)
                                              (letrec ((g7447
                                                        (letrec ((x-cnd7448
                                                                  (real?
                                                                   g7265)))
                                                          (if x-cnd7448
                                                            g7265
                                                            (blame
                                                             g7263
                                                             'real?)))))
                                                g7447)))
                                           (boolean?/c
                                            (lambda (g7266 g7267 g7268)
                                              (letrec ((g7449
                                                        (letrec ((x-cnd7450
                                                                  (boolean?
                                                                   g7268)))
                                                          (if x-cnd7450
                                                            g7268
                                                            (blame
                                                             g7266
                                                             'boolean?)))))
                                                g7449)))
                                           (number?/c
                                            (lambda (g7269 g7270 g7271)
                                              (letrec ((g7451
                                                        (letrec ((x-cnd7452
                                                                  (number?
                                                                   g7271)))
                                                          (if x-cnd7452
                                                            g7271
                                                            (blame
                                                             g7269
                                                             'number?)))))
                                                g7451)))
                                           (any/c
                                            (lambda (g7272 g7273 g7274)
                                              (letrec ((g7453
                                                        (letrec ((x-cnd7454
                                                                  ((lambda (v)
                                                                     (letrec ((g7455
                                                                               #t))
                                                                       g7455))
                                                                   g7274)))
                                                          (if x-cnd7454
                                                            g7274
                                                            (blame
                                                             g7272
                                                             '(lambda (v)
                                                                #t))))))
                                                g7453)))
                                           (any?/c
                                            (lambda (g7275 g7276 g7277)
                                              (letrec ((g7456
                                                        (letrec ((x-cnd7457
                                                                  ((lambda (v)
                                                                     (letrec ((g7458
                                                                               #t))
                                                                       g7458))
                                                                   g7277)))
                                                          (if x-cnd7457
                                                            g7277
                                                            (blame
                                                             g7275
                                                             '(lambda (v)
                                                                #t))))))
                                                g7456)))
                                           (cons?/c
                                            (lambda (g7278 g7279 g7280)
                                              (letrec ((g7459
                                                        (letrec ((x-cnd7460
                                                                  (pair?
                                                                   g7280)))
                                                          (if x-cnd7460
                                                            g7280
                                                            (blame
                                                             g7278
                                                             'pair?)))))
                                                g7459)))
                                           (cons/c
                                            (lambda (k1 k2)
                                              (letrec ((g7461
                                                        (lambda (k j v)
                                                          (letrec ((g7462
                                                                    (letrec ((x7465
                                                                              (letrec ((x7466
                                                                                        (car
                                                                                         v)))
                                                                                (k1
                                                                                 k
                                                                                 j
                                                                                 x7466)))
                                                                             (x7463
                                                                              (letrec ((x7464
                                                                                        (cdr
                                                                                         v)))
                                                                                (k2
                                                                                 k
                                                                                 j
                                                                                 x7464))))
                                                                      (cons
                                                                       x7465
                                                                       x7463))))
                                                            g7462))))
                                                g7461)))
                                           (pair?/c
                                            (lambda (g7281 g7282 g7283)
                                              (letrec ((g7467
                                                        (letrec ((x-cnd7468
                                                                  (pair?
                                                                   g7283)))
                                                          (if x-cnd7468
                                                            g7283
                                                            (blame
                                                             g7281
                                                             'pair?)))))
                                                g7467)))
                                           (integer?/c
                                            (lambda (g7284 g7285 g7286)
                                              (letrec ((g7469
                                                        (letrec ((x-cnd7470
                                                                  (integer?
                                                                   g7286)))
                                                          (if x-cnd7470
                                                            g7286
                                                            (blame
                                                             g7284
                                                             'integer?)))))
                                                g7469)))
                                           (symbol?/c
                                            (lambda (g7287 g7288 g7289)
                                              (letrec ((g7471
                                                        (letrec ((x-cnd7472
                                                                  (symbol?
                                                                   g7289)))
                                                          (if x-cnd7472
                                                            g7289
                                                            (blame
                                                             g7287
                                                             'symbol?)))))
                                                g7471)))
                                           (string?/c
                                            (lambda (g7290 g7291 g7292)
                                              (letrec ((g7473
                                                        (letrec ((x-cnd7474
                                                                  (string?
                                                                   g7292)))
                                                          (if x-cnd7474
                                                            g7292
                                                            (blame
                                                             g7290
                                                             'string?)))))
                                                g7473)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7475
                                                        (lambda (k j v)
                                                          (letrec ((g7476
                                                                    (letrec ((x-cnd7477
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7477
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7476))))
                                                g7475)))
                                           (or/c
                                            (lambda (c1 c2)
                                              (letrec ((g7478
                                                        (lambda (k j v)
                                                          (letrec ((g7479
                                                                    (letrec ((val7248
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (letrec ((g7480
                                                                                (if val7248
                                                                                  val7248
                                                                                  (c2
                                                                                   k
                                                                                   j
                                                                                   v))))
                                                                        g7480))))
                                                            g7479))))
                                                g7478)))
                                           (null?/c
                                            (lambda (g7293 g7294 g7295)
                                              (letrec ((g7481
                                                        (letrec ((x-cnd7482
                                                                  (null?
                                                                   g7295)))
                                                          (if x-cnd7482
                                                            g7295
                                                            (blame
                                                             g7293
                                                             'null?)))))
                                                g7481)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7483
                                                        (lambda (k j v)
                                                          (letrec ((g7484
                                                                    (letrec ((x-cnd7485
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7485
                                                                        '()
                                                                        (letrec ((x7489
                                                                                  (letrec ((x7490
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7490)))
                                                                                 (x7486
                                                                                  (letrec ((x7488
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7487
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7488
                                                                                     k
                                                                                     j
                                                                                     x7487))))
                                                                          (orig-cons
                                                                           x7489
                                                                           x7486))))))
                                                            g7484))))
                                                g7483)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7491 #t)) g7491)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7492
                                                        (letrec ((x7493
                                                                  (= v 0)))
                                                          (not x7493))))
                                                g7492)))
                                           (nonzero?/c
                                            (lambda (g7296 g7297 g7298)
                                              (letrec ((g7494
                                                        (letrec ((x-cnd7495
                                                                  ((lambda (v)
                                                                     (letrec ((g7496
                                                                               (letrec ((x7497
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7497))))
                                                                       g7496))
                                                                   g7298)))
                                                          (if x-cnd7495
                                                            g7298
                                                            (blame
                                                             g7296
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7494)))
                                           (>=/c
                                            (lambda (n)
                                              (letrec ((g7498
                                                        (lambda (g7299
                                                                 g7300
                                                                 g7301)
                                                          (letrec ((g7499
                                                                    (letrec ((x-cnd7500
                                                                              ((lambda (v)
                                                                                 (letrec ((g7501
                                                                                           (orig->=
                                                                                            v
                                                                                            n)))
                                                                                   g7501))
                                                                               g7301)))
                                                                      (if x-cnd7500
                                                                        g7301
                                                                        (blame
                                                                         g7299
                                                                         '(lambda (v)
                                                                            (orig->=
                                                                             v
                                                                             n)))))))
                                                            g7499))))
                                                g7498)))
                                           (>/c
                                            (lambda (n)
                                              (letrec ((g7502
                                                        (lambda (g7302
                                                                 g7303
                                                                 g7304)
                                                          (letrec ((g7503
                                                                    (letrec ((x-cnd7504
                                                                              ((lambda (v)
                                                                                 (letrec ((g7505
                                                                                           (orig->
                                                                                            v
                                                                                            n)))
                                                                                   g7505))
                                                                               g7304)))
                                                                      (if x-cnd7504
                                                                        g7304
                                                                        (blame
                                                                         g7302
                                                                         '(lambda (v)
                                                                            (orig->
                                                                             v
                                                                             n)))))))
                                                            g7503))))
                                                g7502)))
                                           (</c
                                            (lambda (n)
                                              (letrec ((g7506
                                                        (lambda (g7305
                                                                 g7306
                                                                 g7307)
                                                          (letrec ((g7507
                                                                    (letrec ((x-cnd7508
                                                                              ((lambda (v)
                                                                                 (letrec ((g7509
                                                                                           (orig-<
                                                                                            v
                                                                                            n)))
                                                                                   g7509))
                                                                               g7307)))
                                                                      (if x-cnd7508
                                                                        g7307
                                                                        (blame
                                                                         g7305
                                                                         '(lambda (v)
                                                                            (orig-<
                                                                             v
                                                                             n)))))))
                                                            g7507))))
                                                g7506)))
                                           (<=/c
                                            (lambda (n)
                                              (letrec ((g7510
                                                        (lambda (g7308
                                                                 g7309
                                                                 g7310)
                                                          (letrec ((g7511
                                                                    (letrec ((x-cnd7512
                                                                              ((lambda (v)
                                                                                 (letrec ((g7513
                                                                                           (orig-<=
                                                                                            v
                                                                                            n)))
                                                                                   g7513))
                                                                               g7310)))
                                                                      (if x-cnd7512
                                                                        g7310
                                                                        (blame
                                                                         g7308
                                                                         '(lambda (v)
                                                                            (orig-<=
                                                                             v
                                                                             n)))))))
                                                            g7511))))
                                                g7510)))
                                           (=/c
                                            (lambda (n)
                                              (letrec ((g7514
                                                        (lambda (g7311
                                                                 g7312
                                                                 g7313)
                                                          (letrec ((g7515
                                                                    (letrec ((x-cnd7516
                                                                              ((lambda (v)
                                                                                 (letrec ((g7517
                                                                                           (orig-=
                                                                                            v
                                                                                            n)))
                                                                                   g7517))
                                                                               g7313)))
                                                                      (if x-cnd7516
                                                                        g7313
                                                                        (blame
                                                                         g7311
                                                                         '(lambda (v)
                                                                            (orig-=
                                                                             v
                                                                             n)))))))
                                                            g7515))))
                                                g7514)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7518 v)) g7518)))
                                           (+
                                            (letrec ((xj7314 'server)
                                                     (xk7315 'client))
                                              (letrec ((g7519
                                                        ((lambda (j7318
                                                                  k7319
                                                                  f7320)
                                                           (letrec ((g7521
                                                                     (lambda (g7316
                                                                              g7317)
                                                                       (letrec ((g7522
                                                                                 (letrec ((x7523
                                                                                           (letrec ((x7525
                                                                                                     (number?/c
                                                                                                      j7318
                                                                                                      k7319
                                                                                                      g7316))
                                                                                                    (x7524
                                                                                                     (number?/c
                                                                                                      j7318
                                                                                                      k7319
                                                                                                      g7317)))
                                                                                             (f7320
                                                                                              x7525
                                                                                              x7524))))
                                                                                   (number?/c
                                                                                    j7318
                                                                                    k7319
                                                                                    x7523))))
                                                                         g7522))))
                                                             g7521))
                                                         xj7314
                                                         xk7315
                                                         (lambda (a b)
                                                           (letrec ((g7520
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7520)))))
                                                g7519)))
                                           (-
                                            (letrec ((xj7321 'server)
                                                     (xk7322 'client))
                                              (letrec ((g7526
                                                        ((lambda (j7325
                                                                  k7326
                                                                  f7327)
                                                           (letrec ((g7528
                                                                     (lambda (g7323
                                                                              g7324)
                                                                       (letrec ((g7529
                                                                                 (letrec ((x7530
                                                                                           (letrec ((x7532
                                                                                                     (number?/c
                                                                                                      j7325
                                                                                                      k7326
                                                                                                      g7323))
                                                                                                    (x7531
                                                                                                     (number?/c
                                                                                                      j7325
                                                                                                      k7326
                                                                                                      g7324)))
                                                                                             (f7327
                                                                                              x7532
                                                                                              x7531))))
                                                                                   (number?/c
                                                                                    j7325
                                                                                    k7326
                                                                                    x7530))))
                                                                         g7529))))
                                                             g7528))
                                                         xj7321
                                                         xk7322
                                                         (lambda (a b)
                                                           (letrec ((g7527
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7527)))))
                                                g7526)))
                                           (*
                                            (letrec ((xj7328 'server)
                                                     (xk7329 'client))
                                              (letrec ((g7533
                                                        ((lambda (j7332
                                                                  k7333
                                                                  f7334)
                                                           (letrec ((g7535
                                                                     (lambda (g7330
                                                                              g7331)
                                                                       (letrec ((g7536
                                                                                 (letrec ((x7537
                                                                                           (letrec ((x7539
                                                                                                     (number?/c
                                                                                                      j7332
                                                                                                      k7333
                                                                                                      g7330))
                                                                                                    (x7538
                                                                                                     (number?/c
                                                                                                      j7332
                                                                                                      k7333
                                                                                                      g7331)))
                                                                                             (f7334
                                                                                              x7539
                                                                                              x7538))))
                                                                                   (number?/c
                                                                                    j7332
                                                                                    k7333
                                                                                    x7537))))
                                                                         g7536))))
                                                             g7535))
                                                         xj7328
                                                         xk7329
                                                         (lambda (a b)
                                                           (letrec ((g7534
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7534)))))
                                                g7533)))
                                           (<
                                            (letrec ((xj7335 'server)
                                                     (xk7336 'client))
                                              (letrec ((g7540
                                                        ((lambda (j7339
                                                                  k7340
                                                                  f7341)
                                                           (letrec ((g7542
                                                                     (lambda (g7337
                                                                              g7338)
                                                                       (letrec ((g7543
                                                                                 (letrec ((x7544
                                                                                           (letrec ((x7546
                                                                                                     (number?/c
                                                                                                      j7339
                                                                                                      k7340
                                                                                                      g7337))
                                                                                                    (x7545
                                                                                                     (number?/c
                                                                                                      j7339
                                                                                                      k7340
                                                                                                      g7338)))
                                                                                             (f7341
                                                                                              x7546
                                                                                              x7545))))
                                                                                   (boolean?/c
                                                                                    j7339
                                                                                    k7340
                                                                                    x7544))))
                                                                         g7543))))
                                                             g7542))
                                                         xj7335
                                                         xk7336
                                                         (lambda (a b)
                                                           (letrec ((g7541
                                                                     (orig-<
                                                                      a
                                                                      b)))
                                                             g7541)))))
                                                g7540)))
                                           (>
                                            (letrec ((xj7342 'server)
                                                     (xk7343 'client))
                                              (letrec ((g7547
                                                        ((lambda (j7346
                                                                  k7347
                                                                  f7348)
                                                           (letrec ((g7549
                                                                     (lambda (g7344
                                                                              g7345)
                                                                       (letrec ((g7550
                                                                                 (letrec ((x7551
                                                                                           (letrec ((x7553
                                                                                                     (number?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7344))
                                                                                                    (x7552
                                                                                                     (number?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7345)))
                                                                                             (f7348
                                                                                              x7553
                                                                                              x7552))))
                                                                                   (boolean?/c
                                                                                    j7346
                                                                                    k7347
                                                                                    x7551))))
                                                                         g7550))))
                                                             g7549))
                                                         xj7342
                                                         xk7343
                                                         (lambda (a b)
                                                           (letrec ((g7548
                                                                     (orig->
                                                                      a
                                                                      b)))
                                                             g7548)))))
                                                g7547)))
                                           (<=
                                            (letrec ((xj7349 'server)
                                                     (xk7350 'client))
                                              (letrec ((g7554
                                                        ((lambda (j7353
                                                                  k7354
                                                                  f7355)
                                                           (letrec ((g7556
                                                                     (lambda (g7351
                                                                              g7352)
                                                                       (letrec ((g7557
                                                                                 (letrec ((x7558
                                                                                           (letrec ((x7560
                                                                                                     (number?/c
                                                                                                      j7353
                                                                                                      k7354
                                                                                                      g7351))
                                                                                                    (x7559
                                                                                                     (number?/c
                                                                                                      j7353
                                                                                                      k7354
                                                                                                      g7352)))
                                                                                             (f7355
                                                                                              x7560
                                                                                              x7559))))
                                                                                   (boolean?/c
                                                                                    j7353
                                                                                    k7354
                                                                                    x7558))))
                                                                         g7557))))
                                                             g7556))
                                                         xj7349
                                                         xk7350
                                                         (lambda (a b)
                                                           (letrec ((g7555
                                                                     (orig-<=
                                                                      a
                                                                      b)))
                                                             g7555)))))
                                                g7554)))
                                           (>=
                                            (letrec ((xj7356 'server)
                                                     (xk7357 'client))
                                              (letrec ((g7561
                                                        ((lambda (j7360
                                                                  k7361
                                                                  f7362)
                                                           (letrec ((g7563
                                                                     (lambda (g7358
                                                                              g7359)
                                                                       (letrec ((g7564
                                                                                 (letrec ((x7565
                                                                                           (letrec ((x7567
                                                                                                     (number?/c
                                                                                                      j7360
                                                                                                      k7361
                                                                                                      g7358))
                                                                                                    (x7566
                                                                                                     (number?/c
                                                                                                      j7360
                                                                                                      k7361
                                                                                                      g7359)))
                                                                                             (f7362
                                                                                              x7567
                                                                                              x7566))))
                                                                                   (boolean?/c
                                                                                    j7360
                                                                                    k7361
                                                                                    x7565))))
                                                                         g7564))))
                                                             g7563))
                                                         xj7356
                                                         xk7357
                                                         (lambda (a b)
                                                           (letrec ((g7562
                                                                     (orig->=
                                                                      a
                                                                      b)))
                                                             g7562)))))
                                                g7561)))
                                           (add1
                                            (lambda (x)
                                              (letrec ((g7568 (+ x 1)))
                                                g7568)))
                                           (/
                                            (letrec ((xj7363 'server)
                                                     (xk7364 'client))
                                              (letrec ((g7569
                                                        ((lambda (j7367
                                                                  k7368
                                                                  f7369)
                                                           (letrec ((g7571
                                                                     (lambda (g7365
                                                                              g7366)
                                                                       (letrec ((g7572
                                                                                 (letrec ((x7573
                                                                                           (letrec ((x7575
                                                                                                     (number?/c
                                                                                                      j7367
                                                                                                      k7368
                                                                                                      g7365))
                                                                                                    (x7574
                                                                                                     (number?/c
                                                                                                      j7367
                                                                                                      k7368
                                                                                                      g7366)))
                                                                                             (f7369
                                                                                              x7575
                                                                                              x7574))))
                                                                                   (number?/c
                                                                                    j7367
                                                                                    k7368
                                                                                    x7573))))
                                                                         g7572))))
                                                             g7571))
                                                         xj7363
                                                         xk7364
                                                         (lambda (a b)
                                                           (letrec ((g7570
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7570)))))
                                                g7569)))
                                           (car
                                            (letrec ((xj7370 'server)
                                                     (xk7371 'client))
                                              (letrec ((g7576
                                                        ((lambda (j7373
                                                                  k7374
                                                                  f7375)
                                                           (letrec ((g7578
                                                                     (lambda (g7372)
                                                                       (letrec ((g7579
                                                                                 (letrec ((x7580
                                                                                           (letrec ((x7581
                                                                                                     (pair?/c
                                                                                                      j7373
                                                                                                      k7374
                                                                                                      g7372)))
                                                                                             (f7375
                                                                                              x7581))))
                                                                                   (any/c
                                                                                    j7373
                                                                                    k7374
                                                                                    x7580))))
                                                                         g7579))))
                                                             g7578))
                                                         xj7370
                                                         xk7371
                                                         (lambda (p)
                                                           (letrec ((g7577
                                                                     (orig-car
                                                                      p)))
                                                             g7577)))))
                                                g7576)))
                                           (cdr
                                            (letrec ((xj7376 'server)
                                                     (xk7377 'client))
                                              (letrec ((g7582
                                                        ((lambda (j7379
                                                                  k7380
                                                                  f7381)
                                                           (letrec ((g7584
                                                                     (lambda (g7378)
                                                                       (letrec ((g7585
                                                                                 (letrec ((x7586
                                                                                           (letrec ((x7587
                                                                                                     (pair?/c
                                                                                                      j7379
                                                                                                      k7380
                                                                                                      g7378)))
                                                                                             (f7381
                                                                                              x7587))))
                                                                                   (any/c
                                                                                    j7379
                                                                                    k7380
                                                                                    x7586))))
                                                                         g7585))))
                                                             g7584))
                                                         xj7376
                                                         xk7377
                                                         (lambda (p)
                                                           (letrec ((g7583
                                                                     (orig-cdr
                                                                      p)))
                                                             g7583)))))
                                                g7582)))
                                           (cons
                                            (letrec ((xj7382 'server)
                                                     (xk7383 'client))
                                              (letrec ((g7588
                                                        ((lambda (j7386
                                                                  k7387
                                                                  f7388)
                                                           (letrec ((g7590
                                                                     (lambda (g7384
                                                                              g7385)
                                                                       (letrec ((g7591
                                                                                 (letrec ((x7592
                                                                                           (letrec ((x7594
                                                                                                     (any/c
                                                                                                      j7386
                                                                                                      k7387
                                                                                                      g7384))
                                                                                                    (x7593
                                                                                                     (any/c
                                                                                                      j7386
                                                                                                      k7387
                                                                                                      g7385)))
                                                                                             (f7388
                                                                                              x7594
                                                                                              x7593))))
                                                                                   (pair?/c
                                                                                    j7386
                                                                                    k7387
                                                                                    x7592))))
                                                                         g7591))))
                                                             g7590))
                                                         xj7382
                                                         xk7383
                                                         (lambda (a b)
                                                           (letrec ((g7589
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7589)))))
                                                g7588)))
                                           (vector-ref
                                            (letrec ((xj7389 'server)
                                                     (xk7390 'client))
                                              (letrec ((g7595
                                                        ((lambda (j7392
                                                                  k7393
                                                                  f7394)
                                                           (letrec ((g7597
                                                                     (lambda (g7391)
                                                                       (letrec ((g7598
                                                                                 (letrec ((x7599
                                                                                           (letrec ((x7600
                                                                                                     (vector?/c
                                                                                                      j7392
                                                                                                      k7393
                                                                                                      g7391)))
                                                                                             (f7394
                                                                                              x7600))))
                                                                                   (integer?/c
                                                                                    j7392
                                                                                    k7393
                                                                                    x7599))))
                                                                         g7598))))
                                                             g7597))
                                                         xj7389
                                                         xk7390
                                                         (lambda (v i)
                                                           (letrec ((g7596
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7596)))))
                                                g7595)))
                                           (vector-set!
                                            (letrec ((xj7395 'server)
                                                     (xk7396 'client))
                                              (letrec ((g7601
                                                        ((lambda (j7399
                                                                  k7400
                                                                  f7401)
                                                           (letrec ((g7603
                                                                     (lambda (g7397
                                                                              g7398)
                                                                       (letrec ((g7604
                                                                                 (letrec ((x7605
                                                                                           (letrec ((x7607
                                                                                                     (vector?/c
                                                                                                      j7399
                                                                                                      k7400
                                                                                                      g7397))
                                                                                                    (x7606
                                                                                                     (integer?/c
                                                                                                      j7399
                                                                                                      k7400
                                                                                                      g7398)))
                                                                                             (f7401
                                                                                              x7607
                                                                                              x7606))))
                                                                                   (any/c
                                                                                    j7399
                                                                                    k7400
                                                                                    x7605))))
                                                                         g7604))))
                                                             g7603))
                                                         xj7395
                                                         xk7396
                                                         (lambda (vec i v)
                                                           (letrec ((g7602
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7602)))))
                                                g7601)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7608
                                                        (letrec ((x7609
                                                                  (letrec ((x7610
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7610))))
                                                          (cdr x7609))))
                                                g7608)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7611
                                                        (letrec ((x7614
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7614)))
                                                       (g7612
                                                        (letrec ((x7615
                                                                  (list? l)))
                                                          (assert x7615)))
                                                       (g7613
                                                        (letrec ((x-cnd7616
                                                                  (null? l)))
                                                          (if x-cnd7616
                                                            '()
                                                            (letrec ((x7619
                                                                      (letrec ((x7620
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7620)))
                                                                     (x7617
                                                                      (letrec ((x7618
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7618))))
                                                              (cons
                                                               x7619
                                                               x7617))))))
                                                g7613)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7621
                                                        (letrec ((x7622
                                                                  (car x)))
                                                          (cdr x7622))))
                                                g7621)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7623
                                                        (letrec ((x7624
                                                                  (letrec ((x7625
                                                                            (letrec ((x7626
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7626))))
                                                                    (cdr
                                                                     x7625))))
                                                          (car x7624))))
                                                g7623)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7627
                                                        (letrec ((x7628
                                                                  (letrec ((x7629
                                                                            (letrec ((x7630
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7630))))
                                                                    (car
                                                                     x7629))))
                                                          (cdr x7628))))
                                                g7627)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7631
                                                        (letrec ((x7634
                                                                  (string?
                                                                   filename)))
                                                          (assert x7634)))
                                                       (g7632
                                                        (letrec ((x7635
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7635)))
                                                       (g7633
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7636
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7637 res))
                                                            g7637))))
                                                g7633)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7638
                                                        (letrec ((x7639
                                                                  (letrec ((x7640
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7640))))
                                                          (car x7639))))
                                                g7638)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7641
                                                        (letrec ((x7642
                                                                  (letrec ((x7643
                                                                            (letrec ((x7644
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7644))))
                                                                    (car
                                                                     x7643))))
                                                          (cdr x7642))))
                                                g7641)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7645
                                                        (letrec ((x7647
                                                                  (list? l)))
                                                          (assert x7647)))
                                                       (g7646
                                                        (letrec ((x-cnd7648
                                                                  (null? l)))
                                                          (if x-cnd7648
                                                            #f
                                                            (letrec ((x-cnd7649
                                                                      (letrec ((x7650
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7650
                                                                         k))))
                                                              (if x-cnd7649
                                                                (car l)
                                                                (letrec ((x7651
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7651))))))))
                                                g7646)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7652
                                                        (letrec ((x7653
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7653))))
                                                g7652)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7654
                                                        (letrec ((x7656
                                                                  (list? l)))
                                                          (assert x7656)))
                                                       (g7655
                                                        (letrec ((x-cnd7657
                                                                  (null? l)))
                                                          (if x-cnd7657
                                                            ""
                                                            (letrec ((x7660
                                                                      (letrec ((x7661
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7661)))
                                                                     (x7658
                                                                      (letrec ((x7659
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7659))))
                                                              (string-append
                                                               x7660
                                                               x7658))))))
                                                g7655)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7662
                                                        (letrec ((x7665
                                                                  (char? c1)))
                                                          (assert x7665)))
                                                       (g7663
                                                        (letrec ((x7666
                                                                  (char? c2)))
                                                          (assert x7666)))
                                                       (g7664
                                                        (letrec ((val7249
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7667
                                                                    (if val7249
                                                                      val7249
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7667))))
                                                g7664)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7668
                                                        (letrec ((x7669
                                                                  (letrec ((x7670
                                                                            (letrec ((x7671
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7671))))
                                                                    (cdr
                                                                     x7670))))
                                                          (cdr x7669))))
                                                g7668)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7672
                                                        (letrec ((x7675
                                                                  (list? l)))
                                                          (assert x7675)))
                                                       (g7673
                                                        (letrec ((x7676
                                                                  (number?)))
                                                          (assert x7676)))
                                                       (g7674
                                                        (letrec ((x-cnd7677
                                                                  (zero? k)))
                                                          (if x-cnd7677
                                                            x
                                                            (letrec ((x7679
                                                                      (cdr x))
                                                                     (x7678
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7679
                                                               x7678))))))
                                                g7674)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7680 '())) g7680)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7681
                                                        (letrec ((x-cnd7682
                                                                  (letrec ((x7683
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7683))))
                                                          (if x-cnd7682
                                                            (letrec ((x7684
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7684))
                                                            #f))))
                                                g7681)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7685
                                                        (letrec ((val7250
                                                                  (letrec ((x7686
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7686
                                                                     9))))
                                                          (letrec ((g7687
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (letrec ((x7688
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7688
                                                                                   10))))
                                                                        (letrec ((g7689
                                                                                  (if val7251
                                                                                    val7251
                                                                                    (letrec ((x7690
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7690
                                                                                       32)))))
                                                                          g7689)))))
                                                            g7687))))
                                                g7685)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7691
                                                        (letrec ((x7692
                                                                  (letrec ((x7693
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7693))))
                                                          (cdr x7692))))
                                                g7691)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7694
                                                        (letrec ((x7696
                                                                  (number? x)))
                                                          (assert x7696)))
                                                       (g7695 (> x 0)))
                                                g7695)))
                                           (string=?
                                            (lambda (s1 s2)
                                              (letrec ((g7697 (bool-top)))
                                                g7697)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7698 #f)) g7698)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7699
                                                        (letrec ((x7700
                                                                  (cdr x)))
                                                          (cdr x7700))))
                                                g7699)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7701
                                                        (letrec ((x7703
                                                                  (number? x)))
                                                          (assert x7703)))
                                                       (g7702
                                                        (letrec ((x-cnd7704
                                                                  (< x 0)))
                                                          (if x-cnd7704
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7702)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7705
                                                        (letrec ((val7252
                                                                  (eq? a b)))
                                                          (letrec ((g7706
                                                                    (if val7252
                                                                      val7252
                                                                      (letrec ((val7253
                                                                                (letrec ((x-cnd7707
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7707
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7708
                                                                                  (if val7253
                                                                                    val7253
                                                                                    (letrec ((val7254
                                                                                              (letrec ((x-cnd7709
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7709
                                                                                                  (letrec ((x-cnd7710
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7710
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7711
                                                                                                (if val7254
                                                                                                  val7254
                                                                                                  (letrec ((val7255
                                                                                                            (letrec ((x-cnd7712
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7712
                                                                                                                (letrec ((x-cnd7713
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7713
                                                                                                                    (letrec ((x-cnd7714
                                                                                                                              (letrec ((x7716
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7715
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7716
                                                                                                                                 x7715))))
                                                                                                                      (if x-cnd7714
                                                                                                                        (letrec ((x7718
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7717
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7718
                                                                                                                           x7717))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7719
                                                                                                              (if val7255
                                                                                                                val7255
                                                                                                                (letrec ((x-cnd7720
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7720
                                                                                                                    (letrec ((x-cnd7721
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7721
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7722
                                                                                                                                    (letrec ((x-cnd7723
                                                                                                                                              (letrec ((x7724
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7724
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7723
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7725
                                                                                                                                                              (letrec ((val7256
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7726
                                                                                                                                                                          (if val7256
                                                                                                                                                                            val7256
                                                                                                                                                                            (letrec ((x-cnd7727
                                                                                                                                                                                      (letrec ((x7729
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7728
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7729
                                                                                                                                                                                         x7728))))
                                                                                                                                                                              (if x-cnd7727
                                                                                                                                                                                (letrec ((x7730
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7730))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7726))))
                                                                                                                                                      g7725))))
                                                                                                                                          (letrec ((g7731
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7731))
                                                                                                                                        #f))))
                                                                                                                            g7722))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7719)))))
                                                                                        g7711)))))
                                                                          g7708)))))
                                                            g7706))))
                                                g7705)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7732
                                                        (letrec ((x7733
                                                                  (letrec ((x7734
                                                                            (letrec ((x7735
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7735))))
                                                                    (car
                                                                     x7734))))
                                                          (cdr x7733))))
                                                g7732)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7736
                                                        (letrec ((x7737
                                                                  (letrec ((x7738
                                                                            (letrec ((x7739
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7739))))
                                                                    (car
                                                                     x7738))))
                                                          (car x7737))))
                                                g7736)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7740 (eq? x y)))
                                                g7740)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7741
                                                        (letrec ((x7744
                                                                  (string?
                                                                   filename)))
                                                          (assert x7744)))
                                                       (g7742
                                                        (letrec ((x7745
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7745)))
                                                       (g7743
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7746
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7747 res))
                                                            g7747))))
                                                g7743)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7748 (cons x '())))
                                                g7748)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7749
                                                        (letrec ((x7752
                                                                  (char? c1)))
                                                          (assert x7752)))
                                                       (g7750
                                                        (letrec ((x7753
                                                                  (char? c2)))
                                                          (assert x7753)))
                                                       (g7751
                                                        (letrec ((val7257
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7754
                                                                    (if val7257
                                                                      val7257
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7754))))
                                                g7751)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7755
                                                        (letrec ((x7756
                                                                  (letrec ((x7757
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7757))))
                                                          (cdr x7756))))
                                                g7755)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7758
                                                        (letrec ((x7759
                                                                  (letrec ((x7760
                                                                            (letrec ((x7761
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7761))))
                                                                    (car
                                                                     x7760))))
                                                          (cdr x7759))))
                                                g7758)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7762
                                                        (letrec ((x7763
                                                                  (letrec ((x7764
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7764))))
                                                          (car x7763))))
                                                g7762)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7765
                                                        (letrec ((x7766
                                                                  (letrec ((x7767
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7767))))
                                                          (car x7766))))
                                                g7765)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7768
                                                        (letrec ((x7771
                                                                  (char? c1)))
                                                          (assert x7771)))
                                                       (g7769
                                                        (letrec ((x7772
                                                                  (char? c2)))
                                                          (assert x7772)))
                                                       (g7770
                                                        (letrec ((x7773
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7773))))
                                                g7770)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
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
                                                          (car x7775))))
                                                g7774)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7778
                                                        (letrec ((x7780
                                                                  (number? x)))
                                                          (assert x7780)))
                                                       (g7779 (< x 0)))
                                                g7779)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7781 (memq e l)))
                                                g7781)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7782
                                                        (letrec ((x7783
                                                                  (letrec ((x7784
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7784))))
                                                          (car x7783))))
                                                g7782)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7785 '())) g7785)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7786
                                                        (letrec ((x7788
                                                                  (list? l)))
                                                          (assert x7788)))
                                                       (g7787
                                                        (letrec ((x-cnd7789
                                                                  (null? l)))
                                                          (if x-cnd7789
                                                            '()
                                                            (letrec ((x7792
                                                                      (letrec ((x7793
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7793)))
                                                                     (x7790
                                                                      (letrec ((x7791
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7791))))
                                                              (append
                                                               x7792
                                                               x7790))))))
                                                g7787)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7794
                                                        (letrec ((x7795
                                                                  (letrec ((x7796
                                                                            (letrec ((x7797
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7797))))
                                                                    (car
                                                                     x7796))))
                                                          (car x7795))))
                                                g7794)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7798
                                                        (letrec ((x7799
                                                                  (letrec ((x7800
                                                                            (letrec ((x7801
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7801))))
                                                                    (cdr
                                                                     x7800))))
                                                          (cdr x7799))))
                                                g7798)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7802
                                                        (letrec ((x7804
                                                                  (number? x)))
                                                          (assert x7804)))
                                                       (g7803
                                                        (letrec ((x7805
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7805))))
                                                g7803)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7806
                                                        (letrec ((x7807
                                                                  (letrec ((x7808
                                                                            (letrec ((x7809
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7809))))
                                                                    (car
                                                                     x7808))))
                                                          (car x7807))))
                                                g7806)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7810
                                                        (letrec ((x7813
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7813)))
                                                       (g7811
                                                        (letrec ((x7814
                                                                  (list?
                                                                   args)))
                                                          (assert x7814)))
                                                       (g7812
                                                        (letrec ((x-cnd7815
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7815
                                                            (letrec ((g7816
                                                                      (proc)))
                                                              g7816)
                                                            (letrec ((x-cnd7817
                                                                      (letrec ((x7818
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7818))))
                                                              (if x-cnd7817
                                                                (letrec ((g7819
                                                                          (letrec ((x7820
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7820))))
                                                                  g7819)
                                                                (letrec ((x-cnd7821
                                                                          (letrec ((x7822
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7822))))
                                                                  (if x-cnd7821
                                                                    (letrec ((g7823
                                                                              (letrec ((x7825
                                                                                        (car
                                                                                         args))
                                                                                       (x7824
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7825
                                                                                 x7824))))
                                                                      g7823)
                                                                    (letrec ((x-cnd7826
                                                                              (letrec ((x7827
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7827))))
                                                                      (if x-cnd7826
                                                                        (letrec ((g7828
                                                                                  (letrec ((x7831
                                                                                            (car
                                                                                             args))
                                                                                           (x7830
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7829
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7831
                                                                                     x7830
                                                                                     x7829))))
                                                                          g7828)
                                                                        (letrec ((x-cnd7832
                                                                                  (letrec ((x7833
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7833))))
                                                                          (if x-cnd7832
                                                                            (letrec ((g7834
                                                                                      (letrec ((x7838
                                                                                                (car
                                                                                                 args))
                                                                                               (x7837
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7836
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7835
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7838
                                                                                         x7837
                                                                                         x7836
                                                                                         x7835))))
                                                                              g7834)
                                                                            (letrec ((x-cnd7839
                                                                                      (letrec ((x7840
                                                                                                (letrec ((x7841
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7841))))
                                                                                        (null?
                                                                                         x7840))))
                                                                              (if x-cnd7839
                                                                                (letrec ((g7842
                                                                                          (letrec ((x7848
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7847
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7846
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7845
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7843
                                                                                                    (letrec ((x7844
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7844))))
                                                                                            (proc
                                                                                             x7848
                                                                                             x7847
                                                                                             x7846
                                                                                             x7845
                                                                                             x7843))))
                                                                                  g7842)
                                                                                (letrec ((x-cnd7849
                                                                                          (letrec ((x7850
                                                                                                    (letrec ((x7851
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7851))))
                                                                                            (null?
                                                                                             x7850))))
                                                                                  (if x-cnd7849
                                                                                    (letrec ((g7852
                                                                                              (letrec ((x7860
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7859
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7858
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7857
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7855
                                                                                                        (letrec ((x7856
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7856)))
                                                                                                       (x7853
                                                                                                        (letrec ((x7854
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7854))))
                                                                                                (proc
                                                                                                 x7860
                                                                                                 x7859
                                                                                                 x7858
                                                                                                 x7857
                                                                                                 x7855
                                                                                                 x7853))))
                                                                                      g7852)
                                                                                    (letrec ((x-cnd7861
                                                                                              (letrec ((x7862
                                                                                                        (letrec ((x7863
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7863))))
                                                                                                (null?
                                                                                                 x7862))))
                                                                                      (if x-cnd7861
                                                                                        (letrec ((g7864
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
                                                                                                               x7870)))
                                                                                                           (x7867
                                                                                                            (letrec ((x7868
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7868)))
                                                                                                           (x7865
                                                                                                            (letrec ((x7866
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7866))))
                                                                                                    (proc
                                                                                                     x7874
                                                                                                     x7873
                                                                                                     x7872
                                                                                                     x7871
                                                                                                     x7869
                                                                                                     x7867
                                                                                                     x7865))))
                                                                                          g7864)
                                                                                        (letrec ((g7875
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7875)))))))))))))))))))
                                                g7812)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7876
                                                        (letrec ((x7878
                                                                  (list? l)))
                                                          (assert x7878)))
                                                       (g7877
                                                        (letrec ((x-cnd7879
                                                                  (null? l)))
                                                          (if x-cnd7879
                                                            #f
                                                            (letrec ((x-cnd7880
                                                                      (letrec ((x7881
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7881
                                                                         e))))
                                                              (if x-cnd7880
                                                                l
                                                                (letrec ((x7882
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7882))))))))
                                                g7877)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7883
                                                        (letrec ((x7884
                                                                  (letrec ((x7885
                                                                            (letrec ((x7886
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7886))))
                                                                    (cdr
                                                                     x7885))))
                                                          (cdr x7884))))
                                                g7883)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7887
                                                        (letrec ((x7888
                                                                  (letrec ((x7889
                                                                            (letrec ((x7890
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7890))))
                                                                    (cdr
                                                                     x7889))))
                                                          (car x7888))))
                                                g7887)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7891 (random 42)))
                                                g7891)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7892
                                                        (letrec ((x7894
                                                                  (number? x)))
                                                          (assert x7894)))
                                                       (g7893 (= x 0)))
                                                g7893)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7895
                                                        (letrec ((val7258
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7896
                                                                    (if val7258
                                                                      val7258
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7896))))
                                                g7895)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7897
                                                        (letrec ((x7898
                                                                  (cdr x)))
                                                          (car x7898))))
                                                g7897)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7899
                                                        (letrec ((val7259
                                                                  (letrec ((x-cnd7900
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7900
                                                                      (letrec ((x7901
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7901))
                                                                      #f))))
                                                          (letrec ((g7902
                                                                    (if val7259
                                                                      val7259
                                                                      (null?
                                                                       l))))
                                                            g7902))))
                                                g7899)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7903
                                                        (letrec ((x7904
                                                                  (letrec ((x7905
                                                                            (letrec ((x7906
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7906))))
                                                                    (cdr
                                                                     x7905))))
                                                          (cdr x7904))))
                                                g7903)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7907
                                                        (letrec ((x-cnd7908
                                                                  (letrec ((x7909
                                                                            #\0))
                                                                    (char<=?
                                                                     x7909
                                                                     c))))
                                                          (if x-cnd7908
                                                            (letrec ((x7910
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7910))
                                                            #f))))
                                                g7907)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7911
                                                        (letrec ((x7913
                                                                  (list? l)))
                                                          (assert x7913)))
                                                       (g7912
                                                        (letrec ((x-cnd7914
                                                                  (null? l)))
                                                          (if x-cnd7914
                                                            #f
                                                            (letrec ((x-cnd7915
                                                                      (letrec ((x7916
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7916
                                                                         k))))
                                                              (if x-cnd7915
                                                                (car l)
                                                                (letrec ((x7917
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7917))))))))
                                                g7912)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7918 (if x #f #t)))
                                                g7918)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7919 (append l1 l2)))
                                                g7919)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7920
                                                        (letrec ((x7922
                                                                  (list? l)))
                                                          (assert x7922)))
                                                       (g7921
                                                        (letrec ((x-cnd7923
                                                                  (null? l)))
                                                          (if x-cnd7923
                                                            #f
                                                            (letrec ((x-cnd7924
                                                                      (letrec ((x7925
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7925
                                                                         e))))
                                                              (if x-cnd7924
                                                                l
                                                                (letrec ((x7926
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7926))))))))
                                                g7921)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7927
                                                        (letrec ((x7928
                                                                  (letrec ((x7929
                                                                            (letrec ((x7930
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7930))))
                                                                    (cdr
                                                                     x7929))))
                                                          (car x7928))))
                                                g7927)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7931
                                                        (letrec ((x7933
                                                                  (list? l)))
                                                          (assert x7933)))
                                                       (g7932
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7934
                                                                              (letrec ((x-cnd7935
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7935
                                                                                  0
                                                                                  (letrec ((x7936
                                                                                            (letrec ((x7937
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7937))))
                                                                                    (+
                                                                                     1
                                                                                     x7936))))))
                                                                      g7934))))
                                                          (letrec ((g7938
                                                                    (rec l)))
                                                            g7938))))
                                                g7932)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7939
                                                        (letrec ((x7942
                                                                  (char? c1)))
                                                          (assert x7942)))
                                                       (g7940
                                                        (letrec ((x7943
                                                                  (char? c2)))
                                                          (assert x7943)))
                                                       (g7941
                                                        (letrec ((val7260
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7944
                                                                    (if val7260
                                                                      val7260
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7944))))
                                                g7941)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7945
                                                        (letrec ((x7946
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7946))))
                                                g7945)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7947
                                                        (letrec ((x7948
                                                                  (letrec ((x7949
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7949))))
                                                          (cdr x7948))))
                                                g7947)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7950
                                                        (letrec ((x7952
                                                                  (list? l)))
                                                          (assert x7952)))
                                                       (g7951
                                                        (letrec ((x-cnd7953
                                                                  (null? l)))
                                                          (if x-cnd7953
                                                            #f
                                                            (letrec ((x-cnd7954
                                                                      (letrec ((x7955
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7955
                                                                         k))))
                                                              (if x-cnd7954
                                                                (car l)
                                                                (letrec ((x7956
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7956))))))))
                                                g7951)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7957
                                                        (letrec ((x7958
                                                                  (car x)))
                                                          (car x7958))))
                                                g7957)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7959
                                                        (letrec ((x7962
                                                                  (char? c1)))
                                                          (assert x7962)))
                                                       (g7960
                                                        (letrec ((x7963
                                                                  (char? c2)))
                                                          (assert x7963)))
                                                       (g7961
                                                        (letrec ((x7964
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7964))))
                                                g7961)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7965
                                                        (letrec ((val7261
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7966
                                                                    (if val7261
                                                                      val7261
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7966))))
                                                g7965)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7967
                                                        (letrec ((x7970
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7970)))
                                                       (g7968
                                                        (letrec ((x7971
                                                                  (list? l)))
                                                          (assert x7971)))
                                                       (g7969
                                                        (letrec ((x-cnd7972
                                                                  (null? l)))
                                                          (if x-cnd7972
                                                            #t
                                                            (letrec ((x-cnd7973
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7973
                                                                (letrec ((g7974
                                                                          (letrec ((x7976
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7976)))
                                                                         (g7975
                                                                          (letrec ((x7977
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7977))))
                                                                  g7975)
                                                                '()))))))
                                                g7969)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7978
                                                        (letrec ((x7980
                                                                  (number? x)))
                                                          (assert x7980)))
                                                       (g7979
                                                        (letrec ((x-cnd7981
                                                                  (< x 0)))
                                                          (if x-cnd7981
                                                            (- 0 x)
                                                            x))))
                                                g7979)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7982
                                                        (letrec ((x7985
                                                                  (char? c1)))
                                                          (assert x7985)))
                                                       (g7983
                                                        (letrec ((x7986
                                                                  (char? c2)))
                                                          (assert x7986)))
                                                       (g7984
                                                        (letrec ((val7262
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7987
                                                                    (if val7262
                                                                      val7262
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7987))))
                                                g7984)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7988
                                                        (letrec ((x7989
                                                                  (letrec ((x7990
                                                                            (letrec ((x7991
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7991))))
                                                                    (cdr
                                                                     x7990))))
                                                          (car x7989))))
                                                g7988)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7992 #f)) g7992)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7993
                                                        (letrec ((x7995
                                                                  (letrec ((x7996
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7996)))
                                                                 (x7994
                                                                  (gcd m n)))
                                                          (/ x7995 x7994))))
                                                g7993)))
                                           (deref car)
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7997
                                                        (letrec ((x8001
                                                                  (list? l)))
                                                          (assert x8001)))
                                                       (g7998
                                                        (letrec ((x8002
                                                                  (number?
                                                                   index)))
                                                          (assert x8002)))
                                                       (g7999
                                                        (letrec ((x8003
                                                                  (letrec ((x8004
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8004))))
                                                          (assert x8003)))
                                                       (g8000
                                                        (letrec ((x-cnd8005
                                                                  (= index 0)))
                                                          (if x-cnd8005
                                                            (car l)
                                                            (letrec ((x8007
                                                                      (cdr l))
                                                                     (x8006
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8007
                                                               x8006))))))
                                                g8000)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8008
                                                        (letrec ((x-cnd8009
                                                                  (= b 0)))
                                                          (if x-cnd8009
                                                            a
                                                            (letrec ((x8010
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8010))))))
                                                g8008)))
                                           (STATE/C
                                            (lambda (g7405 g7406 g7407)
                                              (letrec ((g8011
                                                        (letrec ((x-cnd8012
                                                                  ((lambda (v7404)
                                                                     (letrec ((g8013
                                                                               (letrec ((x-cnd8014
                                                                                         (eq?
                                                                                          'init
                                                                                          v7404)))
                                                                                 (if x-cnd8014
                                                                                   #t
                                                                                   (letrec ((x-cnd8015
                                                                                             (eq?
                                                                                              'opened
                                                                                              v7404)))
                                                                                     (if x-cnd8015
                                                                                       #t
                                                                                       (letrec ((x-cnd8016
                                                                                                 (eq?
                                                                                                  'closed
                                                                                                  v7404)))
                                                                                         (if x-cnd8016
                                                                                           #t
                                                                                           (eq?
                                                                                            'ignore
                                                                                            v7404)))))))))
                                                                       g8013))
                                                                   g7407)))
                                                          (if x-cnd8012
                                                            g7407
                                                            (blame
                                                             g7405
                                                             '(lambda (v7404)
                                                                (if (eq?
                                                                     'init
                                                                     v7404)
                                                                  #t
                                                                  (if (eq?
                                                                       'opened
                                                                       v7404)
                                                                    #t
                                                                    (if (eq?
                                                                         'closed
                                                                         v7404)
                                                                      #t
                                                                      (eq?
                                                                       'ignore
                                                                       v7404))))))))))
                                                g8011)))
                                           (loop
                                            (lambda ()
                                              (letrec ((g8017 (loop))) g8017)))
                                           (readit
                                            (lambda (st)
                                              (letrec ((g8018
                                                        (letrec ((x-cnd8019
                                                                  (equal?
                                                                   'opened
                                                                   st)))
                                                          (if x-cnd8019
                                                            'opened
                                                            'ignore))))
                                                g8018)))
                                           (read_
                                            (lambda (x st)
                                              (letrec ((g8020
                                                        (if x (readit st) st)))
                                                g8020)))
                                           (closeit
                                            (lambda (st)
                                              (letrec ((g8021
                                                        (letrec ((x-cnd8022
                                                                  (equal?
                                                                   'opened
                                                                   st)))
                                                          (if x-cnd8022
                                                            (letrec ((g8023
                                                                      'closed))
                                                              g8023)
                                                            (letrec ((x-cnd8024
                                                                      (equal?
                                                                       'ignore
                                                                       st)))
                                                              (if x-cnd8024
                                                                (letrec ((g8025
                                                                          'ignore))
                                                                  g8025)
                                                                (letrec ((g8026
                                                                          (loop))
                                                                         (g8027
                                                                          0))
                                                                  g8027)))))))
                                                g8021)))
                                           (close_
                                            (lambda (x st)
                                              (letrec ((g8028
                                                        (if x
                                                          (closeit st)
                                                          st)))
                                                g8028)))
                                           (f
                                            (lambda (x y st)
                                              (letrec ((g8029
                                                        (letrec ((x8031
                                                                  (close_
                                                                   x
                                                                   st)))
                                                          (close_ y x8031)))
                                                       (g8030
                                                        (letrec ((x8032
                                                                  (letrec ((x8033
                                                                            (read_
                                                                             x
                                                                             st)))
                                                                    (read_
                                                                     y
                                                                     x8033))))
                                                          (f x y x8032))))
                                                g8030)))
                                           (next
                                            (lambda (st)
                                              (letrec ((g8034
                                                        (letrec ((x-cnd8035
                                                                  (equal?
                                                                   'init
                                                                   st)))
                                                          (if x-cnd8035
                                                            'opened
                                                            'ignore))))
                                                g8034)))
                                           (g
                                            (lambda (b3 x st)
                                              (letrec ((g8036
                                                        (letrec ((x-cnd8037
                                                                  (> b3 0)))
                                                          (if x-cnd8037
                                                            (letrec ((x8038
                                                                      (next
                                                                       st)))
                                                              (f x #t x8038))
                                                            (f x #f st)))))
                                                g8036)))
                                           (main
                                            (lambda (b2 b3)
                                              (letrec ((g8039
                                                        (letrec ((x-cnd8041
                                                                  (> b2 0)))
                                                          (if x-cnd8041
                                                            (g b3 #t 'opened)
                                                            (g b3 #f 'init))))
                                                       (g8040 'unit))
                                                g8040))))
                                    (letrec ((g8042
                                              (parallel
                                               (parallel
                                                (letrec ((x8045
                                                          (letrec ((xj7408
                                                                    (loc
                                                                     'module))
                                                                   (xk7409
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8046
                                                                      ((lambda (j7412
                                                                                k7413
                                                                                f7414)
                                                                         (letrec ((g8047
                                                                                   (lambda (g7410
                                                                                            g7411)
                                                                                     (letrec ((g8048
                                                                                               (letrec ((x8049
                                                                                                         (letrec ((x8051
                                                                                                                   (integer?/c
                                                                                                                    j7412
                                                                                                                    k7413
                                                                                                                    g7410))
                                                                                                                  (x8050
                                                                                                                   (integer?/c
                                                                                                                    j7412
                                                                                                                    k7413
                                                                                                                    g7411)))
                                                                                                           (f7414
                                                                                                            x8051
                                                                                                            x8050))))
                                                                                                 (any/c
                                                                                                  j7412
                                                                                                  k7413
                                                                                                  x8049))))
                                                                                       g8048))))
                                                                           g8047))
                                                                       xj7408
                                                                       xk7409
                                                                       main)))
                                                              g8046)))
                                                         (x8044 (input))
                                                         (x8043 (input)))
                                                  (x8045 x8044 x8043))))))
                                      g8042))))
                          g7443))))
              g7426)))
    g7425))
