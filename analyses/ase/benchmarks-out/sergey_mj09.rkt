(letrec ((any? (lambda (v) (letrec ((g7402 #t)) g7402)))
         (meta (lambda (v) (letrec ((g7403 v)) g7403)))
         (member
          (lambda (v lst)
            (letrec ((g7404
                      (letrec ((g7405
                                (letrec ((x-e7406 lst))
                                  (match
                                   x-e7406
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7407 (eq? v v1)))
                                       (if x-cnd7407 #t (member v vs)))))))))
                        g7405)))
              g7404)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7408 (lambda (v) (letrec ((g7409 v)) g7409)))) g7408)))
         (nonzero?
          (lambda (v)
            (letrec ((g7410 (letrec ((x7411 (= v 0))) (not x7411)))) g7410))))
  (letrec ((g7412
            (letrec ((g7413
                      (letrec ((assert
                                (lambda (cnd)
                                  (letrec ((g7414
                                            (if cnd
                                              '()
                                              (error "assertion failed"))))
                                    g7414)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7415
                                            (letrec ((x7417 (number? x)))
                                              (assert x7417)))
                                           (g7416
                                            (letrec ((val7244 (> x y)))
                                              (letrec ((g7418
                                                        (if val7244
                                                          val7244
                                                          (letrec ((val7245
                                                                    (= x y)))
                                                            (letrec ((g7419
                                                                      (if val7245
                                                                        val7245
                                                                        #f)))
                                                              g7419)))))
                                                g7418))))
                                    g7416)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7420
                                            (letrec ((x7422 (number? x)))
                                              (assert x7422)))
                                           (g7421
                                            (letrec ((val7246 (< x y)))
                                              (letrec ((g7423
                                                        (if val7246
                                                          val7246
                                                          (letrec ((val7247
                                                                    (= x y)))
                                                            (letrec ((g7424
                                                                      (if val7247
                                                                        val7247
                                                                        #f)))
                                                              g7424)))))
                                                g7423))))
                                    g7421)))
                               (>
                                (lambda (x y)
                                  (letrec ((g7425
                                            (letrec ((x7427 (number? x)))
                                              (assert x7427)))
                                           (g7426
                                            (letrec ((x7428 (<= x y)))
                                              (not x7428))))
                                    g7426)))
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
                        (letrec ((g7429 '())
                                 (g7430
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7431
                                                        (lambda (k j lst)
                                                          (letrec ((g7432
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7433
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7433))
                                                                     lst)))
                                                            g7432))))
                                                g7431)))
                                           (real?/c
                                            (lambda (g7263 g7264 g7265)
                                              (letrec ((g7434
                                                        (letrec ((x-cnd7435
                                                                  (real?
                                                                   g7265)))
                                                          (if x-cnd7435
                                                            g7265
                                                            (blame
                                                             g7263
                                                             'real?)))))
                                                g7434)))
                                           (boolean?/c
                                            (lambda (g7266 g7267 g7268)
                                              (letrec ((g7436
                                                        (letrec ((x-cnd7437
                                                                  (boolean?
                                                                   g7268)))
                                                          (if x-cnd7437
                                                            g7268
                                                            (blame
                                                             g7266
                                                             'boolean?)))))
                                                g7436)))
                                           (number?/c
                                            (lambda (g7269 g7270 g7271)
                                              (letrec ((g7438
                                                        (letrec ((x-cnd7439
                                                                  (number?
                                                                   g7271)))
                                                          (if x-cnd7439
                                                            g7271
                                                            (blame
                                                             g7269
                                                             'number?)))))
                                                g7438)))
                                           (any/c
                                            (lambda (g7272 g7273 g7274)
                                              (letrec ((g7440
                                                        (letrec ((x-cnd7441
                                                                  ((lambda (v)
                                                                     (letrec ((g7442
                                                                               #t))
                                                                       g7442))
                                                                   g7274)))
                                                          (if x-cnd7441
                                                            g7274
                                                            (blame
                                                             g7272
                                                             '(lambda (v)
                                                                #t))))))
                                                g7440)))
                                           (any?/c
                                            (lambda (g7275 g7276 g7277)
                                              (letrec ((g7443
                                                        (letrec ((x-cnd7444
                                                                  ((lambda (v)
                                                                     (letrec ((g7445
                                                                               #t))
                                                                       g7445))
                                                                   g7277)))
                                                          (if x-cnd7444
                                                            g7277
                                                            (blame
                                                             g7275
                                                             '(lambda (v)
                                                                #t))))))
                                                g7443)))
                                           (cons?/c
                                            (lambda (g7278 g7279 g7280)
                                              (letrec ((g7446
                                                        (letrec ((x-cnd7447
                                                                  (pair?
                                                                   g7280)))
                                                          (if x-cnd7447
                                                            g7280
                                                            (blame
                                                             g7278
                                                             'pair?)))))
                                                g7446)))
                                           (cons/c
                                            (lambda (k1 k2)
                                              (letrec ((g7448
                                                        (lambda (k j v)
                                                          (letrec ((g7449
                                                                    (letrec ((x7452
                                                                              (letrec ((x7453
                                                                                        (car
                                                                                         v)))
                                                                                (k1
                                                                                 k
                                                                                 j
                                                                                 x7453)))
                                                                             (x7450
                                                                              (letrec ((x7451
                                                                                        (cdr
                                                                                         v)))
                                                                                (k2
                                                                                 k
                                                                                 j
                                                                                 x7451))))
                                                                      (cons
                                                                       x7452
                                                                       x7450))))
                                                            g7449))))
                                                g7448)))
                                           (pair?/c
                                            (lambda (g7281 g7282 g7283)
                                              (letrec ((g7454
                                                        (letrec ((x-cnd7455
                                                                  (pair?
                                                                   g7283)))
                                                          (if x-cnd7455
                                                            g7283
                                                            (blame
                                                             g7281
                                                             'pair?)))))
                                                g7454)))
                                           (integer?/c
                                            (lambda (g7284 g7285 g7286)
                                              (letrec ((g7456
                                                        (letrec ((x-cnd7457
                                                                  (integer?
                                                                   g7286)))
                                                          (if x-cnd7457
                                                            g7286
                                                            (blame
                                                             g7284
                                                             'integer?)))))
                                                g7456)))
                                           (symbol?/c
                                            (lambda (g7287 g7288 g7289)
                                              (letrec ((g7458
                                                        (letrec ((x-cnd7459
                                                                  (symbol?
                                                                   g7289)))
                                                          (if x-cnd7459
                                                            g7289
                                                            (blame
                                                             g7287
                                                             'symbol?)))))
                                                g7458)))
                                           (string?/c
                                            (lambda (g7290 g7291 g7292)
                                              (letrec ((g7460
                                                        (letrec ((x-cnd7461
                                                                  (string?
                                                                   g7292)))
                                                          (if x-cnd7461
                                                            g7292
                                                            (blame
                                                             g7290
                                                             'string?)))))
                                                g7460)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7462
                                                        (lambda (k j v)
                                                          (letrec ((g7463
                                                                    (letrec ((x-cnd7464
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7464
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7463))))
                                                g7462)))
                                           (or/c
                                            (lambda (c1 c2)
                                              (letrec ((g7465
                                                        (lambda (k j v)
                                                          (letrec ((g7466
                                                                    (letrec ((val7248
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (letrec ((g7467
                                                                                (if val7248
                                                                                  val7248
                                                                                  (c2
                                                                                   k
                                                                                   j
                                                                                   v))))
                                                                        g7467))))
                                                            g7466))))
                                                g7465)))
                                           (null?/c
                                            (lambda (g7293 g7294 g7295)
                                              (letrec ((g7468
                                                        (letrec ((x-cnd7469
                                                                  (null?
                                                                   g7295)))
                                                          (if x-cnd7469
                                                            g7295
                                                            (blame
                                                             g7293
                                                             'null?)))))
                                                g7468)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7470
                                                        (lambda (k j v)
                                                          (letrec ((g7471
                                                                    (letrec ((x-cnd7472
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7472
                                                                        '()
                                                                        (letrec ((x7476
                                                                                  (letrec ((x7477
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7477)))
                                                                                 (x7473
                                                                                  (letrec ((x7475
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7474
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7475
                                                                                     k
                                                                                     j
                                                                                     x7474))))
                                                                          (orig-cons
                                                                           x7476
                                                                           x7473))))))
                                                            g7471))))
                                                g7470)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7478 #t)) g7478)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7479
                                                        (letrec ((x7480
                                                                  (= v 0)))
                                                          (not x7480))))
                                                g7479)))
                                           (nonzero?/c
                                            (lambda (g7296 g7297 g7298)
                                              (letrec ((g7481
                                                        (letrec ((x-cnd7482
                                                                  ((lambda (v)
                                                                     (letrec ((g7483
                                                                               (letrec ((x7484
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7484))))
                                                                       g7483))
                                                                   g7298)))
                                                          (if x-cnd7482
                                                            g7298
                                                            (blame
                                                             g7296
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7481)))
                                           (>=/c
                                            (lambda (n)
                                              (letrec ((g7485
                                                        (lambda (g7299
                                                                 g7300
                                                                 g7301)
                                                          (letrec ((g7486
                                                                    (letrec ((x-cnd7487
                                                                              ((lambda (v)
                                                                                 (letrec ((g7488
                                                                                           (orig->=
                                                                                            v
                                                                                            n)))
                                                                                   g7488))
                                                                               g7301)))
                                                                      (if x-cnd7487
                                                                        g7301
                                                                        (blame
                                                                         g7299
                                                                         '(lambda (v)
                                                                            (orig->=
                                                                             v
                                                                             n)))))))
                                                            g7486))))
                                                g7485)))
                                           (>/c
                                            (lambda (n)
                                              (letrec ((g7489
                                                        (lambda (g7302
                                                                 g7303
                                                                 g7304)
                                                          (letrec ((g7490
                                                                    (letrec ((x-cnd7491
                                                                              ((lambda (v)
                                                                                 (letrec ((g7492
                                                                                           (orig->
                                                                                            v
                                                                                            n)))
                                                                                   g7492))
                                                                               g7304)))
                                                                      (if x-cnd7491
                                                                        g7304
                                                                        (blame
                                                                         g7302
                                                                         '(lambda (v)
                                                                            (orig->
                                                                             v
                                                                             n)))))))
                                                            g7490))))
                                                g7489)))
                                           (</c
                                            (lambda (n)
                                              (letrec ((g7493
                                                        (lambda (g7305
                                                                 g7306
                                                                 g7307)
                                                          (letrec ((g7494
                                                                    (letrec ((x-cnd7495
                                                                              ((lambda (v)
                                                                                 (letrec ((g7496
                                                                                           (orig-<
                                                                                            v
                                                                                            n)))
                                                                                   g7496))
                                                                               g7307)))
                                                                      (if x-cnd7495
                                                                        g7307
                                                                        (blame
                                                                         g7305
                                                                         '(lambda (v)
                                                                            (orig-<
                                                                             v
                                                                             n)))))))
                                                            g7494))))
                                                g7493)))
                                           (<=/c
                                            (lambda (n)
                                              (letrec ((g7497
                                                        (lambda (g7308
                                                                 g7309
                                                                 g7310)
                                                          (letrec ((g7498
                                                                    (letrec ((x-cnd7499
                                                                              ((lambda (v)
                                                                                 (letrec ((g7500
                                                                                           (orig-<=
                                                                                            v
                                                                                            n)))
                                                                                   g7500))
                                                                               g7310)))
                                                                      (if x-cnd7499
                                                                        g7310
                                                                        (blame
                                                                         g7308
                                                                         '(lambda (v)
                                                                            (orig-<=
                                                                             v
                                                                             n)))))))
                                                            g7498))))
                                                g7497)))
                                           (=/c
                                            (lambda (n)
                                              (letrec ((g7501
                                                        (lambda (g7311
                                                                 g7312
                                                                 g7313)
                                                          (letrec ((g7502
                                                                    (letrec ((x-cnd7503
                                                                              ((lambda (v)
                                                                                 (letrec ((g7504
                                                                                           (orig-=
                                                                                            v
                                                                                            n)))
                                                                                   g7504))
                                                                               g7313)))
                                                                      (if x-cnd7503
                                                                        g7313
                                                                        (blame
                                                                         g7311
                                                                         '(lambda (v)
                                                                            (orig-=
                                                                             v
                                                                             n)))))))
                                                            g7502))))
                                                g7501)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7505 v)) g7505)))
                                           (+
                                            (letrec ((xj7314 'server)
                                                     (xk7315 'client))
                                              (letrec ((g7506
                                                        ((lambda (j7318
                                                                  k7319
                                                                  f7320)
                                                           (letrec ((g7508
                                                                     (lambda (g7316
                                                                              g7317)
                                                                       (letrec ((g7509
                                                                                 (letrec ((x7510
                                                                                           (letrec ((x7512
                                                                                                     (number?/c
                                                                                                      j7318
                                                                                                      k7319
                                                                                                      g7316))
                                                                                                    (x7511
                                                                                                     (number?/c
                                                                                                      j7318
                                                                                                      k7319
                                                                                                      g7317)))
                                                                                             (f7320
                                                                                              x7512
                                                                                              x7511))))
                                                                                   (number?/c
                                                                                    j7318
                                                                                    k7319
                                                                                    x7510))))
                                                                         g7509))))
                                                             g7508))
                                                         xj7314
                                                         xk7315
                                                         (lambda (a b)
                                                           (letrec ((g7507
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7507)))))
                                                g7506)))
                                           (-
                                            (letrec ((xj7321 'server)
                                                     (xk7322 'client))
                                              (letrec ((g7513
                                                        ((lambda (j7325
                                                                  k7326
                                                                  f7327)
                                                           (letrec ((g7515
                                                                     (lambda (g7323
                                                                              g7324)
                                                                       (letrec ((g7516
                                                                                 (letrec ((x7517
                                                                                           (letrec ((x7519
                                                                                                     (number?/c
                                                                                                      j7325
                                                                                                      k7326
                                                                                                      g7323))
                                                                                                    (x7518
                                                                                                     (number?/c
                                                                                                      j7325
                                                                                                      k7326
                                                                                                      g7324)))
                                                                                             (f7327
                                                                                              x7519
                                                                                              x7518))))
                                                                                   (number?/c
                                                                                    j7325
                                                                                    k7326
                                                                                    x7517))))
                                                                         g7516))))
                                                             g7515))
                                                         xj7321
                                                         xk7322
                                                         (lambda (a b)
                                                           (letrec ((g7514
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7514)))))
                                                g7513)))
                                           (*
                                            (letrec ((xj7328 'server)
                                                     (xk7329 'client))
                                              (letrec ((g7520
                                                        ((lambda (j7332
                                                                  k7333
                                                                  f7334)
                                                           (letrec ((g7522
                                                                     (lambda (g7330
                                                                              g7331)
                                                                       (letrec ((g7523
                                                                                 (letrec ((x7524
                                                                                           (letrec ((x7526
                                                                                                     (number?/c
                                                                                                      j7332
                                                                                                      k7333
                                                                                                      g7330))
                                                                                                    (x7525
                                                                                                     (number?/c
                                                                                                      j7332
                                                                                                      k7333
                                                                                                      g7331)))
                                                                                             (f7334
                                                                                              x7526
                                                                                              x7525))))
                                                                                   (number?/c
                                                                                    j7332
                                                                                    k7333
                                                                                    x7524))))
                                                                         g7523))))
                                                             g7522))
                                                         xj7328
                                                         xk7329
                                                         (lambda (a b)
                                                           (letrec ((g7521
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7521)))))
                                                g7520)))
                                           (<
                                            (letrec ((xj7335 'server)
                                                     (xk7336 'client))
                                              (letrec ((g7527
                                                        ((lambda (j7339
                                                                  k7340
                                                                  f7341)
                                                           (letrec ((g7529
                                                                     (lambda (g7337
                                                                              g7338)
                                                                       (letrec ((g7530
                                                                                 (letrec ((x7531
                                                                                           (letrec ((x7533
                                                                                                     (number?/c
                                                                                                      j7339
                                                                                                      k7340
                                                                                                      g7337))
                                                                                                    (x7532
                                                                                                     (number?/c
                                                                                                      j7339
                                                                                                      k7340
                                                                                                      g7338)))
                                                                                             (f7341
                                                                                              x7533
                                                                                              x7532))))
                                                                                   (boolean?/c
                                                                                    j7339
                                                                                    k7340
                                                                                    x7531))))
                                                                         g7530))))
                                                             g7529))
                                                         xj7335
                                                         xk7336
                                                         (lambda (a b)
                                                           (letrec ((g7528
                                                                     (orig-<
                                                                      a
                                                                      b)))
                                                             g7528)))))
                                                g7527)))
                                           (>
                                            (letrec ((xj7342 'server)
                                                     (xk7343 'client))
                                              (letrec ((g7534
                                                        ((lambda (j7346
                                                                  k7347
                                                                  f7348)
                                                           (letrec ((g7536
                                                                     (lambda (g7344
                                                                              g7345)
                                                                       (letrec ((g7537
                                                                                 (letrec ((x7538
                                                                                           (letrec ((x7540
                                                                                                     (number?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7344))
                                                                                                    (x7539
                                                                                                     (number?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7345)))
                                                                                             (f7348
                                                                                              x7540
                                                                                              x7539))))
                                                                                   (boolean?/c
                                                                                    j7346
                                                                                    k7347
                                                                                    x7538))))
                                                                         g7537))))
                                                             g7536))
                                                         xj7342
                                                         xk7343
                                                         (lambda (a b)
                                                           (letrec ((g7535
                                                                     (orig->
                                                                      a
                                                                      b)))
                                                             g7535)))))
                                                g7534)))
                                           (<=
                                            (letrec ((xj7349 'server)
                                                     (xk7350 'client))
                                              (letrec ((g7541
                                                        ((lambda (j7353
                                                                  k7354
                                                                  f7355)
                                                           (letrec ((g7543
                                                                     (lambda (g7351
                                                                              g7352)
                                                                       (letrec ((g7544
                                                                                 (letrec ((x7545
                                                                                           (letrec ((x7547
                                                                                                     (number?/c
                                                                                                      j7353
                                                                                                      k7354
                                                                                                      g7351))
                                                                                                    (x7546
                                                                                                     (number?/c
                                                                                                      j7353
                                                                                                      k7354
                                                                                                      g7352)))
                                                                                             (f7355
                                                                                              x7547
                                                                                              x7546))))
                                                                                   (boolean?/c
                                                                                    j7353
                                                                                    k7354
                                                                                    x7545))))
                                                                         g7544))))
                                                             g7543))
                                                         xj7349
                                                         xk7350
                                                         (lambda (a b)
                                                           (letrec ((g7542
                                                                     (orig-<=
                                                                      a
                                                                      b)))
                                                             g7542)))))
                                                g7541)))
                                           (>=
                                            (letrec ((xj7356 'server)
                                                     (xk7357 'client))
                                              (letrec ((g7548
                                                        ((lambda (j7360
                                                                  k7361
                                                                  f7362)
                                                           (letrec ((g7550
                                                                     (lambda (g7358
                                                                              g7359)
                                                                       (letrec ((g7551
                                                                                 (letrec ((x7552
                                                                                           (letrec ((x7554
                                                                                                     (number?/c
                                                                                                      j7360
                                                                                                      k7361
                                                                                                      g7358))
                                                                                                    (x7553
                                                                                                     (number?/c
                                                                                                      j7360
                                                                                                      k7361
                                                                                                      g7359)))
                                                                                             (f7362
                                                                                              x7554
                                                                                              x7553))))
                                                                                   (boolean?/c
                                                                                    j7360
                                                                                    k7361
                                                                                    x7552))))
                                                                         g7551))))
                                                             g7550))
                                                         xj7356
                                                         xk7357
                                                         (lambda (a b)
                                                           (letrec ((g7549
                                                                     (orig->=
                                                                      a
                                                                      b)))
                                                             g7549)))))
                                                g7548)))
                                           (/
                                            (letrec ((xj7363 'server)
                                                     (xk7364 'client))
                                              (letrec ((g7555
                                                        ((lambda (j7367
                                                                  k7368
                                                                  f7369)
                                                           (letrec ((g7557
                                                                     (lambda (g7365
                                                                              g7366)
                                                                       (letrec ((g7558
                                                                                 (letrec ((x7559
                                                                                           (letrec ((x7561
                                                                                                     (number?/c
                                                                                                      j7367
                                                                                                      k7368
                                                                                                      g7365))
                                                                                                    (x7560
                                                                                                     (number?/c
                                                                                                      j7367
                                                                                                      k7368
                                                                                                      g7366)))
                                                                                             (f7369
                                                                                              x7561
                                                                                              x7560))))
                                                                                   (number?/c
                                                                                    j7367
                                                                                    k7368
                                                                                    x7559))))
                                                                         g7558))))
                                                             g7557))
                                                         xj7363
                                                         xk7364
                                                         (lambda (a b)
                                                           (letrec ((g7556
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7556)))))
                                                g7555)))
                                           (car
                                            (letrec ((xj7370 'server)
                                                     (xk7371 'client))
                                              (letrec ((g7562
                                                        ((lambda (j7373
                                                                  k7374
                                                                  f7375)
                                                           (letrec ((g7564
                                                                     (lambda (g7372)
                                                                       (letrec ((g7565
                                                                                 (letrec ((x7566
                                                                                           (letrec ((x7567
                                                                                                     (pair?/c
                                                                                                      j7373
                                                                                                      k7374
                                                                                                      g7372)))
                                                                                             (f7375
                                                                                              x7567))))
                                                                                   (any/c
                                                                                    j7373
                                                                                    k7374
                                                                                    x7566))))
                                                                         g7565))))
                                                             g7564))
                                                         xj7370
                                                         xk7371
                                                         (lambda (p)
                                                           (letrec ((g7563
                                                                     (orig-car
                                                                      p)))
                                                             g7563)))))
                                                g7562)))
                                           (cdr
                                            (letrec ((xj7376 'server)
                                                     (xk7377 'client))
                                              (letrec ((g7568
                                                        ((lambda (j7379
                                                                  k7380
                                                                  f7381)
                                                           (letrec ((g7570
                                                                     (lambda (g7378)
                                                                       (letrec ((g7571
                                                                                 (letrec ((x7572
                                                                                           (letrec ((x7573
                                                                                                     (pair?/c
                                                                                                      j7379
                                                                                                      k7380
                                                                                                      g7378)))
                                                                                             (f7381
                                                                                              x7573))))
                                                                                   (any/c
                                                                                    j7379
                                                                                    k7380
                                                                                    x7572))))
                                                                         g7571))))
                                                             g7570))
                                                         xj7376
                                                         xk7377
                                                         (lambda (p)
                                                           (letrec ((g7569
                                                                     (orig-cdr
                                                                      p)))
                                                             g7569)))))
                                                g7568)))
                                           (cons
                                            (letrec ((xj7382 'server)
                                                     (xk7383 'client))
                                              (letrec ((g7574
                                                        ((lambda (j7386
                                                                  k7387
                                                                  f7388)
                                                           (letrec ((g7576
                                                                     (lambda (g7384
                                                                              g7385)
                                                                       (letrec ((g7577
                                                                                 (letrec ((x7578
                                                                                           (letrec ((x7580
                                                                                                     (any/c
                                                                                                      j7386
                                                                                                      k7387
                                                                                                      g7384))
                                                                                                    (x7579
                                                                                                     (any/c
                                                                                                      j7386
                                                                                                      k7387
                                                                                                      g7385)))
                                                                                             (f7388
                                                                                              x7580
                                                                                              x7579))))
                                                                                   (pair?/c
                                                                                    j7386
                                                                                    k7387
                                                                                    x7578))))
                                                                         g7577))))
                                                             g7576))
                                                         xj7382
                                                         xk7383
                                                         (lambda (a b)
                                                           (letrec ((g7575
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7575)))))
                                                g7574)))
                                           (vector-ref
                                            (letrec ((xj7389 'server)
                                                     (xk7390 'client))
                                              (letrec ((g7581
                                                        ((lambda (j7392
                                                                  k7393
                                                                  f7394)
                                                           (letrec ((g7583
                                                                     (lambda (g7391)
                                                                       (letrec ((g7584
                                                                                 (letrec ((x7585
                                                                                           (letrec ((x7586
                                                                                                     (vector?/c
                                                                                                      j7392
                                                                                                      k7393
                                                                                                      g7391)))
                                                                                             (f7394
                                                                                              x7586))))
                                                                                   (integer?/c
                                                                                    j7392
                                                                                    k7393
                                                                                    x7585))))
                                                                         g7584))))
                                                             g7583))
                                                         xj7389
                                                         xk7390
                                                         (lambda (v i)
                                                           (letrec ((g7582
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7582)))))
                                                g7581)))
                                           (vector-set!
                                            (letrec ((xj7395 'server)
                                                     (xk7396 'client))
                                              (letrec ((g7587
                                                        ((lambda (j7399
                                                                  k7400
                                                                  f7401)
                                                           (letrec ((g7589
                                                                     (lambda (g7397
                                                                              g7398)
                                                                       (letrec ((g7590
                                                                                 (letrec ((x7591
                                                                                           (letrec ((x7593
                                                                                                     (vector?/c
                                                                                                      j7399
                                                                                                      k7400
                                                                                                      g7397))
                                                                                                    (x7592
                                                                                                     (integer?/c
                                                                                                      j7399
                                                                                                      k7400
                                                                                                      g7398)))
                                                                                             (f7401
                                                                                              x7593
                                                                                              x7592))))
                                                                                   (any/c
                                                                                    j7399
                                                                                    k7400
                                                                                    x7591))))
                                                                         g7590))))
                                                             g7589))
                                                         xj7395
                                                         xk7396
                                                         (lambda (vec i v)
                                                           (letrec ((g7588
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7588)))))
                                                g7587)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7594
                                                        (letrec ((x7595
                                                                  (letrec ((x7596
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7596))))
                                                          (cdr x7595))))
                                                g7594)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7597
                                                        (letrec ((x7600
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7600)))
                                                       (g7598
                                                        (letrec ((x7601
                                                                  (list? l)))
                                                          (assert x7601)))
                                                       (g7599
                                                        (letrec ((x-cnd7602
                                                                  (null? l)))
                                                          (if x-cnd7602
                                                            '()
                                                            (letrec ((x7605
                                                                      (letrec ((x7606
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7606)))
                                                                     (x7603
                                                                      (letrec ((x7604
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7604))))
                                                              (cons
                                                               x7605
                                                               x7603))))))
                                                g7599)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7607
                                                        (letrec ((x7608
                                                                  (car x)))
                                                          (cdr x7608))))
                                                g7607)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7609
                                                        (letrec ((x7610
                                                                  (letrec ((x7611
                                                                            (letrec ((x7612
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7612))))
                                                                    (cdr
                                                                     x7611))))
                                                          (car x7610))))
                                                g7609)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7613
                                                        (letrec ((x7614
                                                                  (letrec ((x7615
                                                                            (letrec ((x7616
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7616))))
                                                                    (car
                                                                     x7615))))
                                                          (cdr x7614))))
                                                g7613)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7617
                                                        (letrec ((x7620
                                                                  (string?
                                                                   filename)))
                                                          (assert x7620)))
                                                       (g7618
                                                        (letrec ((x7621
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7621)))
                                                       (g7619
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7622
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7623 res))
                                                            g7623))))
                                                g7619)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7624
                                                        (letrec ((x7625
                                                                  (letrec ((x7626
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7626))))
                                                          (car x7625))))
                                                g7624)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7627
                                                        (letrec ((x7628
                                                                  (letrec ((x7629
                                                                            (letrec ((x7630
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7630))))
                                                                    (car
                                                                     x7629))))
                                                          (cdr x7628))))
                                                g7627)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7631
                                                        (letrec ((x7633
                                                                  (list? l)))
                                                          (assert x7633)))
                                                       (g7632
                                                        (letrec ((x-cnd7634
                                                                  (null? l)))
                                                          (if x-cnd7634
                                                            #f
                                                            (letrec ((x-cnd7635
                                                                      (letrec ((x7636
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7636
                                                                         k))))
                                                              (if x-cnd7635
                                                                (car l)
                                                                (letrec ((x7637
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7637))))))))
                                                g7632)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7638
                                                        (letrec ((x7639
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7639))))
                                                g7638)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7640
                                                        (letrec ((x7642
                                                                  (list? l)))
                                                          (assert x7642)))
                                                       (g7641
                                                        (letrec ((x-cnd7643
                                                                  (null? l)))
                                                          (if x-cnd7643
                                                            ""
                                                            (letrec ((x7646
                                                                      (letrec ((x7647
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7647)))
                                                                     (x7644
                                                                      (letrec ((x7645
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7645))))
                                                              (string-append
                                                               x7646
                                                               x7644))))))
                                                g7641)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7648
                                                        (letrec ((x7651
                                                                  (char? c1)))
                                                          (assert x7651)))
                                                       (g7649
                                                        (letrec ((x7652
                                                                  (char? c2)))
                                                          (assert x7652)))
                                                       (g7650
                                                        (letrec ((val7249
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7653
                                                                    (if val7249
                                                                      val7249
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7653))))
                                                g7650)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7654
                                                        (letrec ((x7655
                                                                  (letrec ((x7656
                                                                            (letrec ((x7657
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7657))))
                                                                    (cdr
                                                                     x7656))))
                                                          (cdr x7655))))
                                                g7654)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7658
                                                        (letrec ((x7661
                                                                  (list? l)))
                                                          (assert x7661)))
                                                       (g7659
                                                        (letrec ((x7662
                                                                  (number?)))
                                                          (assert x7662)))
                                                       (g7660
                                                        (letrec ((x-cnd7663
                                                                  (zero? k)))
                                                          (if x-cnd7663
                                                            x
                                                            (letrec ((x7665
                                                                      (cdr x))
                                                                     (x7664
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7665
                                                               x7664))))))
                                                g7660)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7666 '())) g7666)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7667
                                                        (letrec ((x-cnd7668
                                                                  (letrec ((x7669
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7669))))
                                                          (if x-cnd7668
                                                            (letrec ((x7670
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7670))
                                                            #f))))
                                                g7667)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7671
                                                        (letrec ((val7250
                                                                  (letrec ((x7672
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7672
                                                                     9))))
                                                          (letrec ((g7673
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (letrec ((x7674
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7674
                                                                                   10))))
                                                                        (letrec ((g7675
                                                                                  (if val7251
                                                                                    val7251
                                                                                    (letrec ((x7676
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7676
                                                                                       32)))))
                                                                          g7675)))))
                                                            g7673))))
                                                g7671)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7677
                                                        (letrec ((x7678
                                                                  (letrec ((x7679
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7679))))
                                                          (cdr x7678))))
                                                g7677)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7680
                                                        (letrec ((x7682
                                                                  (number? x)))
                                                          (assert x7682)))
                                                       (g7681 (> x 0)))
                                                g7681)))
                                           (string=?
                                            (lambda (s1 s2)
                                              (letrec ((g7683 (bool-top)))
                                                g7683)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7684 #f)) g7684)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7685
                                                        (letrec ((x7686
                                                                  (cdr x)))
                                                          (cdr x7686))))
                                                g7685)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7687
                                                        (letrec ((x7689
                                                                  (number? x)))
                                                          (assert x7689)))
                                                       (g7688
                                                        (letrec ((x-cnd7690
                                                                  (< x 0)))
                                                          (if x-cnd7690
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7688)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7691
                                                        (letrec ((val7252
                                                                  (eq? a b)))
                                                          (letrec ((g7692
                                                                    (if val7252
                                                                      val7252
                                                                      (letrec ((val7253
                                                                                (letrec ((x-cnd7693
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7693
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7694
                                                                                  (if val7253
                                                                                    val7253
                                                                                    (letrec ((val7254
                                                                                              (letrec ((x-cnd7695
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7695
                                                                                                  (letrec ((x-cnd7696
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7696
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7697
                                                                                                (if val7254
                                                                                                  val7254
                                                                                                  (letrec ((val7255
                                                                                                            (letrec ((x-cnd7698
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7698
                                                                                                                (letrec ((x-cnd7699
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7699
                                                                                                                    (letrec ((x-cnd7700
                                                                                                                              (letrec ((x7702
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7701
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7702
                                                                                                                                 x7701))))
                                                                                                                      (if x-cnd7700
                                                                                                                        (letrec ((x7704
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7703
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7704
                                                                                                                           x7703))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7705
                                                                                                              (if val7255
                                                                                                                val7255
                                                                                                                (letrec ((x-cnd7706
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7706
                                                                                                                    (letrec ((x-cnd7707
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7707
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7708
                                                                                                                                    (letrec ((x-cnd7709
                                                                                                                                              (letrec ((x7710
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7710
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7709
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7711
                                                                                                                                                              (letrec ((val7256
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7712
                                                                                                                                                                          (if val7256
                                                                                                                                                                            val7256
                                                                                                                                                                            (letrec ((x-cnd7713
                                                                                                                                                                                      (letrec ((x7715
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7714
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7715
                                                                                                                                                                                         x7714))))
                                                                                                                                                                              (if x-cnd7713
                                                                                                                                                                                (letrec ((x7716
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7716))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7712))))
                                                                                                                                                      g7711))))
                                                                                                                                          (letrec ((g7717
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7717))
                                                                                                                                        #f))))
                                                                                                                            g7708))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7705)))))
                                                                                        g7697)))))
                                                                          g7694)))))
                                                            g7692))))
                                                g7691)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7718
                                                        (letrec ((x7719
                                                                  (letrec ((x7720
                                                                            (letrec ((x7721
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7721))))
                                                                    (car
                                                                     x7720))))
                                                          (cdr x7719))))
                                                g7718)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7722
                                                        (letrec ((x7723
                                                                  (letrec ((x7724
                                                                            (letrec ((x7725
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7725))))
                                                                    (car
                                                                     x7724))))
                                                          (car x7723))))
                                                g7722)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7726 (eq? x y)))
                                                g7726)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7727
                                                        (letrec ((x7730
                                                                  (string?
                                                                   filename)))
                                                          (assert x7730)))
                                                       (g7728
                                                        (letrec ((x7731
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7731)))
                                                       (g7729
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7732
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7733 res))
                                                            g7733))))
                                                g7729)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7734 (cons x '())))
                                                g7734)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7735
                                                        (letrec ((x7738
                                                                  (char? c1)))
                                                          (assert x7738)))
                                                       (g7736
                                                        (letrec ((x7739
                                                                  (char? c2)))
                                                          (assert x7739)))
                                                       (g7737
                                                        (letrec ((val7257
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7740
                                                                    (if val7257
                                                                      val7257
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7740))))
                                                g7737)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7741
                                                        (letrec ((x7742
                                                                  (letrec ((x7743
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7743))))
                                                          (cdr x7742))))
                                                g7741)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7744
                                                        (letrec ((x7745
                                                                  (letrec ((x7746
                                                                            (letrec ((x7747
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7747))))
                                                                    (car
                                                                     x7746))))
                                                          (cdr x7745))))
                                                g7744)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7748
                                                        (letrec ((x7749
                                                                  (letrec ((x7750
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7750))))
                                                          (car x7749))))
                                                g7748)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7751
                                                        (letrec ((x7752
                                                                  (letrec ((x7753
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7753))))
                                                          (car x7752))))
                                                g7751)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7754
                                                        (letrec ((x7757
                                                                  (char? c1)))
                                                          (assert x7757)))
                                                       (g7755
                                                        (letrec ((x7758
                                                                  (char? c2)))
                                                          (assert x7758)))
                                                       (g7756
                                                        (letrec ((x7759
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7759))))
                                                g7756)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
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
                                                          (car x7761))))
                                                g7760)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7764
                                                        (letrec ((x7766
                                                                  (number? x)))
                                                          (assert x7766)))
                                                       (g7765 (< x 0)))
                                                g7765)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7767 (memq e l)))
                                                g7767)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7768
                                                        (letrec ((x7769
                                                                  (letrec ((x7770
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7770))))
                                                          (car x7769))))
                                                g7768)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7771 '())) g7771)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7772
                                                        (letrec ((x7774
                                                                  (list? l)))
                                                          (assert x7774)))
                                                       (g7773
                                                        (letrec ((x-cnd7775
                                                                  (null? l)))
                                                          (if x-cnd7775
                                                            '()
                                                            (letrec ((x7778
                                                                      (letrec ((x7779
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7779)))
                                                                     (x7776
                                                                      (letrec ((x7777
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7777))))
                                                              (append
                                                               x7778
                                                               x7776))))))
                                                g7773)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7780
                                                        (letrec ((x7781
                                                                  (letrec ((x7782
                                                                            (letrec ((x7783
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7783))))
                                                                    (car
                                                                     x7782))))
                                                          (car x7781))))
                                                g7780)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7784
                                                        (letrec ((x7785
                                                                  (letrec ((x7786
                                                                            (letrec ((x7787
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7787))))
                                                                    (cdr
                                                                     x7786))))
                                                          (cdr x7785))))
                                                g7784)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7788
                                                        (letrec ((x7790
                                                                  (number? x)))
                                                          (assert x7790)))
                                                       (g7789
                                                        (letrec ((x7791
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7791))))
                                                g7789)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7792
                                                        (letrec ((x7793
                                                                  (letrec ((x7794
                                                                            (letrec ((x7795
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7795))))
                                                                    (car
                                                                     x7794))))
                                                          (car x7793))))
                                                g7792)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7796
                                                        (letrec ((x7799
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7799)))
                                                       (g7797
                                                        (letrec ((x7800
                                                                  (list?
                                                                   args)))
                                                          (assert x7800)))
                                                       (g7798
                                                        (letrec ((x-cnd7801
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7801
                                                            (letrec ((g7802
                                                                      (proc)))
                                                              g7802)
                                                            (letrec ((x-cnd7803
                                                                      (letrec ((x7804
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7804))))
                                                              (if x-cnd7803
                                                                (letrec ((g7805
                                                                          (letrec ((x7806
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7806))))
                                                                  g7805)
                                                                (letrec ((x-cnd7807
                                                                          (letrec ((x7808
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7808))))
                                                                  (if x-cnd7807
                                                                    (letrec ((g7809
                                                                              (letrec ((x7811
                                                                                        (car
                                                                                         args))
                                                                                       (x7810
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7811
                                                                                 x7810))))
                                                                      g7809)
                                                                    (letrec ((x-cnd7812
                                                                              (letrec ((x7813
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7813))))
                                                                      (if x-cnd7812
                                                                        (letrec ((g7814
                                                                                  (letrec ((x7817
                                                                                            (car
                                                                                             args))
                                                                                           (x7816
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7815
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7817
                                                                                     x7816
                                                                                     x7815))))
                                                                          g7814)
                                                                        (letrec ((x-cnd7818
                                                                                  (letrec ((x7819
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7819))))
                                                                          (if x-cnd7818
                                                                            (letrec ((g7820
                                                                                      (letrec ((x7824
                                                                                                (car
                                                                                                 args))
                                                                                               (x7823
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7822
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7821
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7824
                                                                                         x7823
                                                                                         x7822
                                                                                         x7821))))
                                                                              g7820)
                                                                            (letrec ((x-cnd7825
                                                                                      (letrec ((x7826
                                                                                                (letrec ((x7827
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7827))))
                                                                                        (null?
                                                                                         x7826))))
                                                                              (if x-cnd7825
                                                                                (letrec ((g7828
                                                                                          (letrec ((x7834
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7833
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7832
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7831
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7829
                                                                                                    (letrec ((x7830
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7830))))
                                                                                            (proc
                                                                                             x7834
                                                                                             x7833
                                                                                             x7832
                                                                                             x7831
                                                                                             x7829))))
                                                                                  g7828)
                                                                                (letrec ((x-cnd7835
                                                                                          (letrec ((x7836
                                                                                                    (letrec ((x7837
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7837))))
                                                                                            (null?
                                                                                             x7836))))
                                                                                  (if x-cnd7835
                                                                                    (letrec ((g7838
                                                                                              (letrec ((x7846
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7845
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7844
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7843
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7841
                                                                                                        (letrec ((x7842
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7842)))
                                                                                                       (x7839
                                                                                                        (letrec ((x7840
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7840))))
                                                                                                (proc
                                                                                                 x7846
                                                                                                 x7845
                                                                                                 x7844
                                                                                                 x7843
                                                                                                 x7841
                                                                                                 x7839))))
                                                                                      g7838)
                                                                                    (letrec ((x-cnd7847
                                                                                              (letrec ((x7848
                                                                                                        (letrec ((x7849
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7849))))
                                                                                                (null?
                                                                                                 x7848))))
                                                                                      (if x-cnd7847
                                                                                        (letrec ((g7850
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
                                                                                                               x7854)))
                                                                                                           (x7851
                                                                                                            (letrec ((x7852
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7852))))
                                                                                                    (proc
                                                                                                     x7860
                                                                                                     x7859
                                                                                                     x7858
                                                                                                     x7857
                                                                                                     x7855
                                                                                                     x7853
                                                                                                     x7851))))
                                                                                          g7850)
                                                                                        (letrec ((g7861
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7861)))))))))))))))))))
                                                g7798)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7862
                                                        (letrec ((x7864
                                                                  (list? l)))
                                                          (assert x7864)))
                                                       (g7863
                                                        (letrec ((x-cnd7865
                                                                  (null? l)))
                                                          (if x-cnd7865
                                                            #f
                                                            (letrec ((x-cnd7866
                                                                      (letrec ((x7867
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7867
                                                                         e))))
                                                              (if x-cnd7866
                                                                l
                                                                (letrec ((x7868
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7868))))))))
                                                g7863)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7869
                                                        (letrec ((x7870
                                                                  (letrec ((x7871
                                                                            (letrec ((x7872
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7872))))
                                                                    (cdr
                                                                     x7871))))
                                                          (cdr x7870))))
                                                g7869)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7873
                                                        (letrec ((x7874
                                                                  (letrec ((x7875
                                                                            (letrec ((x7876
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7876))))
                                                                    (cdr
                                                                     x7875))))
                                                          (car x7874))))
                                                g7873)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7877 (random 42)))
                                                g7877)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7878
                                                        (letrec ((x7880
                                                                  (number? x)))
                                                          (assert x7880)))
                                                       (g7879 (= x 0)))
                                                g7879)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7881
                                                        (letrec ((val7258
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7882
                                                                    (if val7258
                                                                      val7258
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7882))))
                                                g7881)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7883
                                                        (letrec ((x7884
                                                                  (cdr x)))
                                                          (car x7884))))
                                                g7883)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7885
                                                        (letrec ((val7259
                                                                  (letrec ((x-cnd7886
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7886
                                                                      (letrec ((x7887
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7887))
                                                                      #f))))
                                                          (letrec ((g7888
                                                                    (if val7259
                                                                      val7259
                                                                      (null?
                                                                       l))))
                                                            g7888))))
                                                g7885)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7889
                                                        (letrec ((x7890
                                                                  (letrec ((x7891
                                                                            (letrec ((x7892
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7892))))
                                                                    (cdr
                                                                     x7891))))
                                                          (cdr x7890))))
                                                g7889)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7893
                                                        (letrec ((x-cnd7894
                                                                  (letrec ((x7895
                                                                            #\0))
                                                                    (char<=?
                                                                     x7895
                                                                     c))))
                                                          (if x-cnd7894
                                                            (letrec ((x7896
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7896))
                                                            #f))))
                                                g7893)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7897
                                                        (letrec ((x7899
                                                                  (list? l)))
                                                          (assert x7899)))
                                                       (g7898
                                                        (letrec ((x-cnd7900
                                                                  (null? l)))
                                                          (if x-cnd7900
                                                            #f
                                                            (letrec ((x-cnd7901
                                                                      (letrec ((x7902
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7902
                                                                         k))))
                                                              (if x-cnd7901
                                                                (car l)
                                                                (letrec ((x7903
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7903))))))))
                                                g7898)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7904 (if x #f #t)))
                                                g7904)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7905 (append l1 l2)))
                                                g7905)))
                                           (memq
                                            (lambda (e l)
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
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7911
                                                                         e))))
                                                              (if x-cnd7910
                                                                l
                                                                (letrec ((x7912
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7912))))))))
                                                g7907)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7913
                                                        (letrec ((x7914
                                                                  (letrec ((x7915
                                                                            (letrec ((x7916
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7916))))
                                                                    (cdr
                                                                     x7915))))
                                                          (car x7914))))
                                                g7913)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7917
                                                        (letrec ((x7919
                                                                  (list? l)))
                                                          (assert x7919)))
                                                       (g7918
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7920
                                                                              (letrec ((x-cnd7921
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7921
                                                                                  0
                                                                                  (letrec ((x7922
                                                                                            (letrec ((x7923
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7923))))
                                                                                    (+
                                                                                     1
                                                                                     x7922))))))
                                                                      g7920))))
                                                          (letrec ((g7924
                                                                    (rec l)))
                                                            g7924))))
                                                g7918)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7925
                                                        (letrec ((x7928
                                                                  (char? c1)))
                                                          (assert x7928)))
                                                       (g7926
                                                        (letrec ((x7929
                                                                  (char? c2)))
                                                          (assert x7929)))
                                                       (g7927
                                                        (letrec ((val7260
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7930
                                                                    (if val7260
                                                                      val7260
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7930))))
                                                g7927)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7931
                                                        (letrec ((x7932
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7932))))
                                                g7931)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7933
                                                        (letrec ((x7934
                                                                  (letrec ((x7935
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7935))))
                                                          (cdr x7934))))
                                                g7933)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7936
                                                        (letrec ((x7938
                                                                  (list? l)))
                                                          (assert x7938)))
                                                       (g7937
                                                        (letrec ((x-cnd7939
                                                                  (null? l)))
                                                          (if x-cnd7939
                                                            #f
                                                            (letrec ((x-cnd7940
                                                                      (letrec ((x7941
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7941
                                                                         k))))
                                                              (if x-cnd7940
                                                                (car l)
                                                                (letrec ((x7942
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7942))))))))
                                                g7937)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7943
                                                        (letrec ((x7944
                                                                  (car x)))
                                                          (car x7944))))
                                                g7943)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7945
                                                        (letrec ((x7948
                                                                  (char? c1)))
                                                          (assert x7948)))
                                                       (g7946
                                                        (letrec ((x7949
                                                                  (char? c2)))
                                                          (assert x7949)))
                                                       (g7947
                                                        (letrec ((x7950
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7950))))
                                                g7947)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7951
                                                        (letrec ((val7261
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7952
                                                                    (if val7261
                                                                      val7261
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7952))))
                                                g7951)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7953
                                                        (letrec ((x7956
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7956)))
                                                       (g7954
                                                        (letrec ((x7957
                                                                  (list? l)))
                                                          (assert x7957)))
                                                       (g7955
                                                        (letrec ((x-cnd7958
                                                                  (null? l)))
                                                          (if x-cnd7958
                                                            #t
                                                            (letrec ((x-cnd7959
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7959
                                                                (letrec ((g7960
                                                                          (letrec ((x7962
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7962)))
                                                                         (g7961
                                                                          (letrec ((x7963
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7963))))
                                                                  g7961)
                                                                '()))))))
                                                g7955)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7964
                                                        (letrec ((x7966
                                                                  (number? x)))
                                                          (assert x7966)))
                                                       (g7965
                                                        (letrec ((x-cnd7967
                                                                  (< x 0)))
                                                          (if x-cnd7967
                                                            (- 0 x)
                                                            x))))
                                                g7965)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7968
                                                        (letrec ((x7971
                                                                  (char? c1)))
                                                          (assert x7971)))
                                                       (g7969
                                                        (letrec ((x7972
                                                                  (char? c2)))
                                                          (assert x7972)))
                                                       (g7970
                                                        (letrec ((val7262
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7973
                                                                    (if val7262
                                                                      val7262
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7973))))
                                                g7970)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7974
                                                        (letrec ((x7975
                                                                  (letrec ((x7976
                                                                            (letrec ((x7977
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7977))))
                                                                    (cdr
                                                                     x7976))))
                                                          (car x7975))))
                                                g7974)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7978 #f)) g7978)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7979
                                                        (letrec ((x7981
                                                                  (letrec ((x7982
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7982)))
                                                                 (x7980
                                                                  (gcd m n)))
                                                          (/ x7981 x7980))))
                                                g7979)))
                                           (deref car)
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7983
                                                        (letrec ((x7987
                                                                  (list? l)))
                                                          (assert x7987)))
                                                       (g7984
                                                        (letrec ((x7988
                                                                  (number?
                                                                   index)))
                                                          (assert x7988)))
                                                       (g7985
                                                        (letrec ((x7989
                                                                  (letrec ((x7990
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7990))))
                                                          (assert x7989)))
                                                       (g7986
                                                        (letrec ((x-cnd7991
                                                                  (= index 0)))
                                                          (if x-cnd7991
                                                            (car l)
                                                            (letrec ((x7993
                                                                      (cdr l))
                                                                     (x7992
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7993
                                                               x7992))))))
                                                g7986)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7994
                                                        (letrec ((x-cnd7995
                                                                  (= b 0)))
                                                          (if x-cnd7995
                                                            a
                                                            (letrec ((x7996
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7996))))))
                                                g7994))))
                                    (letrec ((g7997
                                              (letrec ((h
                                                        (lambda (b)
                                                          (letrec ((g7998
                                                                    (letrec ((g
                                                                              (lambda (z)
                                                                                (letrec ((g7999
                                                                                          z))
                                                                                  g7999))))
                                                                      (letrec ((g8000
                                                                                (letrec ((f
                                                                                          (lambda (k)
                                                                                            (letrec ((g8001
                                                                                                      (if b
                                                                                                        (k
                                                                                                         1)
                                                                                                        (k
                                                                                                         2))))
                                                                                              g8001))))
                                                                                  (letrec ((g8002
                                                                                            (letrec ((y
                                                                                                      (f
                                                                                                       (lambda (x)
                                                                                                         (letrec ((g8003
                                                                                                                   x))
                                                                                                           g8003)))))
                                                                                              (letrec ((g8004
                                                                                                        (g
                                                                                                         y)))
                                                                                                g8004))))
                                                                                    g8002))))
                                                                        g8000))))
                                                            g7998))))
                                                (letrec ((g8005
                                                          (letrec ((x (h #t))
                                                                   (y (h #f)))
                                                            (letrec ((g8006 y))
                                                              g8006))))
                                                  g8005))))
                                      g7997))))
                          g7430))))
              g7413)))
    g7412))
