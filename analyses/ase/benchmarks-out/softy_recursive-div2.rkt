(letrec ((any? (lambda (v) (letrec ((g7358 #t)) g7358)))
         (meta (lambda (v) (letrec ((g7359 v)) g7359)))
         (member
          (lambda (v lst)
            (letrec ((g7360
                      (letrec ((g7361
                                (letrec ((x-e7362 lst))
                                  (match
                                   x-e7362
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7363 (eq? v v1)))
                                       (if x-cnd7363 #t (member v vs)))))))))
                        g7361)))
              g7360)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7364 (lambda (v) (letrec ((g7365 v)) g7365)))) g7364)))
         (nonzero?
          (lambda (v)
            (letrec ((g7366 (letrec ((x7367 (= v 0))) (not x7367)))) g7366))))
  (letrec ((g7368
            (letrec ((g7369
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7370 '())
                                 (g7371
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7372
                                                        (lambda (k j lst)
                                                          (letrec ((g7373
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7374
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7374))
                                                                     lst)))
                                                            g7373))))
                                                g7372)))
                                           (real?/c
                                            (lambda (g7259 g7260 g7261)
                                              (letrec ((g7375
                                                        (letrec ((x-cnd7376
                                                                  (real?
                                                                   g7261)))
                                                          (if x-cnd7376
                                                            g7261
                                                            (blame
                                                             g7259
                                                             'real?)))))
                                                g7375)))
                                           (boolean?/c
                                            (lambda (g7262 g7263 g7264)
                                              (letrec ((g7377
                                                        (letrec ((x-cnd7378
                                                                  (boolean?
                                                                   g7264)))
                                                          (if x-cnd7378
                                                            g7264
                                                            (blame
                                                             g7262
                                                             'boolean?)))))
                                                g7377)))
                                           (number?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7379
                                                        (letrec ((x-cnd7380
                                                                  (number?
                                                                   g7267)))
                                                          (if x-cnd7380
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'number?)))))
                                                g7379)))
                                           (any/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7381
                                                        (letrec ((x-cnd7382
                                                                  ((lambda (v)
                                                                     (letrec ((g7383
                                                                               #t))
                                                                       g7383))
                                                                   g7270)))
                                                          (if x-cnd7382
                                                            g7270
                                                            (blame
                                                             g7268
                                                             '(lambda (v)
                                                                #t))))))
                                                g7381)))
                                           (any?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7384
                                                        (letrec ((x-cnd7385
                                                                  ((lambda (v)
                                                                     (letrec ((g7386
                                                                               #t))
                                                                       g7386))
                                                                   g7273)))
                                                          (if x-cnd7385
                                                            g7273
                                                            (blame
                                                             g7271
                                                             '(lambda (v)
                                                                #t))))))
                                                g7384)))
                                           (cons?/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7387
                                                        (letrec ((x-cnd7388
                                                                  (pair?
                                                                   g7276)))
                                                          (if x-cnd7388
                                                            g7276
                                                            (blame
                                                             g7274
                                                             'pair?)))))
                                                g7387)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7389
                                                        (letrec ((x-cnd7390
                                                                  (pair?
                                                                   g7279)))
                                                          (if x-cnd7390
                                                            g7279
                                                            (blame
                                                             g7277
                                                             'pair?)))))
                                                g7389)))
                                           (integer?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7391
                                                        (letrec ((x-cnd7392
                                                                  (integer?
                                                                   g7282)))
                                                          (if x-cnd7392
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'integer?)))))
                                                g7391)))
                                           (symbol?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7393
                                                        (letrec ((x-cnd7394
                                                                  (symbol?
                                                                   g7285)))
                                                          (if x-cnd7394
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'symbol?)))))
                                                g7393)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7395
                                                        (lambda (k j v)
                                                          (letrec ((g7396
                                                                    (letrec ((x-cnd7397
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7397
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7396))))
                                                g7395)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7398
                                                        (lambda (k j v)
                                                          (letrec ((g7399
                                                                    (letrec ((x-cnd7400
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7400
                                                                        '()
                                                                        (letrec ((x7404
                                                                                  (letrec ((x7405
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7405)))
                                                                                 (x7401
                                                                                  (letrec ((x7403
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7402
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7403
                                                                                     k
                                                                                     j
                                                                                     x7402))))
                                                                          (orig-cons
                                                                           x7404
                                                                           x7401))))))
                                                            g7399))))
                                                g7398)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7406 #t)) g7406)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7407
                                                        (letrec ((x7408
                                                                  (= v 0)))
                                                          (not x7408))))
                                                g7407)))
                                           (nonzero?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7409
                                                        (letrec ((x-cnd7410
                                                                  ((lambda (v)
                                                                     (letrec ((g7411
                                                                               (letrec ((x7412
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7412))))
                                                                       g7411))
                                                                   g7288)))
                                                          (if x-cnd7410
                                                            g7288
                                                            (blame
                                                             g7286
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7409)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7413 v)) g7413)))
                                           (+
                                            (letrec ((xj7289 'server)
                                                     (xk7290 'client))
                                              (letrec ((g7414
                                                        ((lambda (j7293
                                                                  k7294
                                                                  f7295)
                                                           (letrec ((g7416
                                                                     (lambda (g7291
                                                                              g7292)
                                                                       (letrec ((g7417
                                                                                 (letrec ((x7418
                                                                                           (letrec ((x7420
                                                                                                     (number?/c
                                                                                                      j7293
                                                                                                      k7294
                                                                                                      g7291))
                                                                                                    (x7419
                                                                                                     (number?/c
                                                                                                      j7293
                                                                                                      k7294
                                                                                                      g7292)))
                                                                                             (f7295
                                                                                              x7420
                                                                                              x7419))))
                                                                                   (number?/c
                                                                                    j7293
                                                                                    k7294
                                                                                    x7418))))
                                                                         g7417))))
                                                             g7416))
                                                         xj7289
                                                         xk7290
                                                         (lambda (a b)
                                                           (letrec ((g7415
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7415)))))
                                                g7414)))
                                           (-
                                            (letrec ((xj7296 'server)
                                                     (xk7297 'client))
                                              (letrec ((g7421
                                                        ((lambda (j7300
                                                                  k7301
                                                                  f7302)
                                                           (letrec ((g7423
                                                                     (lambda (g7298
                                                                              g7299)
                                                                       (letrec ((g7424
                                                                                 (letrec ((x7425
                                                                                           (letrec ((x7427
                                                                                                     (number?/c
                                                                                                      j7300
                                                                                                      k7301
                                                                                                      g7298))
                                                                                                    (x7426
                                                                                                     (number?/c
                                                                                                      j7300
                                                                                                      k7301
                                                                                                      g7299)))
                                                                                             (f7302
                                                                                              x7427
                                                                                              x7426))))
                                                                                   (number?/c
                                                                                    j7300
                                                                                    k7301
                                                                                    x7425))))
                                                                         g7424))))
                                                             g7423))
                                                         xj7296
                                                         xk7297
                                                         (lambda (a b)
                                                           (letrec ((g7422
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7422)))))
                                                g7421)))
                                           (*
                                            (letrec ((xj7303 'server)
                                                     (xk7304 'client))
                                              (letrec ((g7428
                                                        ((lambda (j7307
                                                                  k7308
                                                                  f7309)
                                                           (letrec ((g7430
                                                                     (lambda (g7305
                                                                              g7306)
                                                                       (letrec ((g7431
                                                                                 (letrec ((x7432
                                                                                           (letrec ((x7434
                                                                                                     (number?/c
                                                                                                      j7307
                                                                                                      k7308
                                                                                                      g7305))
                                                                                                    (x7433
                                                                                                     (number?/c
                                                                                                      j7307
                                                                                                      k7308
                                                                                                      g7306)))
                                                                                             (f7309
                                                                                              x7434
                                                                                              x7433))))
                                                                                   (number?/c
                                                                                    j7307
                                                                                    k7308
                                                                                    x7432))))
                                                                         g7431))))
                                                             g7430))
                                                         xj7303
                                                         xk7304
                                                         (lambda (a b)
                                                           (letrec ((g7429
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7429)))))
                                                g7428)))
                                           (/
                                            (letrec ((xj7310 'server)
                                                     (xk7311 'client))
                                              (letrec ((g7435
                                                        ((lambda (j7314
                                                                  k7315
                                                                  f7316)
                                                           (letrec ((g7437
                                                                     (lambda (g7312
                                                                              g7313)
                                                                       (letrec ((g7438
                                                                                 (letrec ((x7439
                                                                                           (letrec ((x7441
                                                                                                     (number?/c
                                                                                                      j7314
                                                                                                      k7315
                                                                                                      g7312))
                                                                                                    (x7440
                                                                                                     (number?/c
                                                                                                      j7314
                                                                                                      k7315
                                                                                                      g7313)))
                                                                                             (f7316
                                                                                              x7441
                                                                                              x7440))))
                                                                                   (number?/c
                                                                                    j7314
                                                                                    k7315
                                                                                    x7439))))
                                                                         g7438))))
                                                             g7437))
                                                         xj7310
                                                         xk7311
                                                         (lambda (a b)
                                                           (letrec ((g7436
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7436)))))
                                                g7435)))
                                           (car
                                            (letrec ((xj7317 'server)
                                                     (xk7318 'client))
                                              (letrec ((g7442
                                                        ((lambda (j7320
                                                                  k7321
                                                                  f7322)
                                                           (letrec ((g7444
                                                                     (lambda (g7319)
                                                                       (letrec ((g7445
                                                                                 (letrec ((x7446
                                                                                           (letrec ((x7447
                                                                                                     (pair?/c
                                                                                                      j7320
                                                                                                      k7321
                                                                                                      g7319)))
                                                                                             (f7322
                                                                                              x7447))))
                                                                                   (any/c
                                                                                    j7320
                                                                                    k7321
                                                                                    x7446))))
                                                                         g7445))))
                                                             g7444))
                                                         xj7317
                                                         xk7318
                                                         (lambda (p)
                                                           (letrec ((g7443
                                                                     (orig-car
                                                                      p)))
                                                             g7443)))))
                                                g7442)))
                                           (cdr
                                            (letrec ((xj7323 'server)
                                                     (xk7324 'client))
                                              (letrec ((g7448
                                                        ((lambda (j7326
                                                                  k7327
                                                                  f7328)
                                                           (letrec ((g7450
                                                                     (lambda (g7325)
                                                                       (letrec ((g7451
                                                                                 (letrec ((x7452
                                                                                           (letrec ((x7453
                                                                                                     (pair?/c
                                                                                                      j7326
                                                                                                      k7327
                                                                                                      g7325)))
                                                                                             (f7328
                                                                                              x7453))))
                                                                                   (any/c
                                                                                    j7326
                                                                                    k7327
                                                                                    x7452))))
                                                                         g7451))))
                                                             g7450))
                                                         xj7323
                                                         xk7324
                                                         (lambda (p)
                                                           (letrec ((g7449
                                                                     (orig-cdr
                                                                      p)))
                                                             g7449)))))
                                                g7448)))
                                           (cons
                                            (letrec ((xj7329 'server)
                                                     (xk7330 'client))
                                              (letrec ((g7454
                                                        ((lambda (j7333
                                                                  k7334
                                                                  f7335)
                                                           (letrec ((g7456
                                                                     (lambda (g7331
                                                                              g7332)
                                                                       (letrec ((g7457
                                                                                 (letrec ((x7458
                                                                                           (letrec ((x7460
                                                                                                     (any/c
                                                                                                      j7333
                                                                                                      k7334
                                                                                                      g7331))
                                                                                                    (x7459
                                                                                                     (any/c
                                                                                                      j7333
                                                                                                      k7334
                                                                                                      g7332)))
                                                                                             (f7335
                                                                                              x7460
                                                                                              x7459))))
                                                                                   (pair?/c
                                                                                    j7333
                                                                                    k7334
                                                                                    x7458))))
                                                                         g7457))))
                                                             g7456))
                                                         xj7329
                                                         xk7330
                                                         (lambda (a b)
                                                           (letrec ((g7455
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7455)))))
                                                g7454)))
                                           (vector-ref
                                            (letrec ((xj7336 'server)
                                                     (xk7337 'client))
                                              (letrec ((g7461
                                                        ((lambda (j7339
                                                                  k7340
                                                                  f7341)
                                                           (letrec ((g7463
                                                                     (lambda (g7338)
                                                                       (letrec ((g7464
                                                                                 (letrec ((x7465
                                                                                           (letrec ((x7466
                                                                                                     (vector?/c
                                                                                                      j7339
                                                                                                      k7340
                                                                                                      g7338)))
                                                                                             (f7341
                                                                                              x7466))))
                                                                                   (integer?/c
                                                                                    j7339
                                                                                    k7340
                                                                                    x7465))))
                                                                         g7464))))
                                                             g7463))
                                                         xj7336
                                                         xk7337
                                                         (lambda (v i)
                                                           (letrec ((g7462
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7462)))))
                                                g7461)))
                                           (vector-set!
                                            (letrec ((xj7342 'server)
                                                     (xk7343 'client))
                                              (letrec ((g7467
                                                        ((lambda (j7346
                                                                  k7347
                                                                  f7348)
                                                           (letrec ((g7469
                                                                     (lambda (g7344
                                                                              g7345)
                                                                       (letrec ((g7470
                                                                                 (letrec ((x7471
                                                                                           (letrec ((x7473
                                                                                                     (vector?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7344))
                                                                                                    (x7472
                                                                                                     (integer?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7345)))
                                                                                             (f7348
                                                                                              x7473
                                                                                              x7472))))
                                                                                   (any/c
                                                                                    j7346
                                                                                    k7347
                                                                                    x7471))))
                                                                         g7470))))
                                                             g7469))
                                                         xj7342
                                                         xk7343
                                                         (lambda (vec i v)
                                                           (letrec ((g7468
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7468)))))
                                                g7467)))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7474
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7474)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7475
                                                        (letrec ((x7476
                                                                  (letrec ((x7477
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7477))))
                                                          (cdr x7476))))
                                                g7475)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7478
                                                        (letrec ((x7481
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7481)))
                                                       (g7479
                                                        (letrec ((x7482
                                                                  (list? l)))
                                                          (assert x7482)))
                                                       (g7480
                                                        (letrec ((x-cnd7483
                                                                  (null? l)))
                                                          (if x-cnd7483
                                                            '()
                                                            (letrec ((x7486
                                                                      (letrec ((x7487
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7487)))
                                                                     (x7484
                                                                      (letrec ((x7485
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7485))))
                                                              (cons
                                                               x7486
                                                               x7484))))))
                                                g7480)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7488
                                                        (letrec ((x7489
                                                                  (car x)))
                                                          (cdr x7489))))
                                                g7488)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7490
                                                        (letrec ((x7491
                                                                  (letrec ((x7492
                                                                            (letrec ((x7493
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7493))))
                                                                    (cdr
                                                                     x7492))))
                                                          (car x7491))))
                                                g7490)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7494
                                                        (letrec ((x7495
                                                                  (letrec ((x7496
                                                                            (letrec ((x7497
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7497))))
                                                                    (car
                                                                     x7496))))
                                                          (cdr x7495))))
                                                g7494)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7498
                                                        (letrec ((x7501
                                                                  (string?
                                                                   filename)))
                                                          (assert x7501)))
                                                       (g7499
                                                        (letrec ((x7502
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7502)))
                                                       (g7500
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7503
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7504 res))
                                                            g7504))))
                                                g7500)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7505
                                                        (letrec ((x7506
                                                                  (letrec ((x7507
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7507))))
                                                          (car x7506))))
                                                g7505)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7508
                                                        (letrec ((x7509
                                                                  (letrec ((x7510
                                                                            (letrec ((x7511
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7511))))
                                                                    (car
                                                                     x7510))))
                                                          (cdr x7509))))
                                                g7508)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7512
                                                        (letrec ((x7514
                                                                  (list? l)))
                                                          (assert x7514)))
                                                       (g7513
                                                        (letrec ((x-cnd7515
                                                                  (null? l)))
                                                          (if x-cnd7515
                                                            #f
                                                            (letrec ((x-cnd7516
                                                                      (letrec ((x7517
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7517
                                                                         k))))
                                                              (if x-cnd7516
                                                                (car l)
                                                                (letrec ((x7518
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7518))))))))
                                                g7513)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7519
                                                        (letrec ((x7520
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7520))))
                                                g7519)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7521
                                                        (letrec ((x7523
                                                                  (list? l)))
                                                          (assert x7523)))
                                                       (g7522
                                                        (letrec ((x-cnd7524
                                                                  (null? l)))
                                                          (if x-cnd7524
                                                            ""
                                                            (letrec ((x7527
                                                                      (letrec ((x7528
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7528)))
                                                                     (x7525
                                                                      (letrec ((x7526
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7526))))
                                                              (string-append
                                                               x7527
                                                               x7525))))))
                                                g7522)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7529
                                                        (letrec ((x7532
                                                                  (char? c1)))
                                                          (assert x7532)))
                                                       (g7530
                                                        (letrec ((x7533
                                                                  (char? c2)))
                                                          (assert x7533)))
                                                       (g7531
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7534
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7534))))
                                                g7531)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7535
                                                        (letrec ((x7536
                                                                  (letrec ((x7537
                                                                            (letrec ((x7538
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7538))))
                                                                    (cdr
                                                                     x7537))))
                                                          (cdr x7536))))
                                                g7535)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7539
                                                        (letrec ((x7542
                                                                  (list? l)))
                                                          (assert x7542)))
                                                       (g7540
                                                        (letrec ((x7543
                                                                  (number?)))
                                                          (assert x7543)))
                                                       (g7541
                                                        (letrec ((x-cnd7544
                                                                  (zero? k)))
                                                          (if x-cnd7544
                                                            x
                                                            (letrec ((x7546
                                                                      (cdr x))
                                                                     (x7545
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7546
                                                               x7545))))))
                                                g7541)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7547 '())) g7547)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7548
                                                        (letrec ((x-cnd7549
                                                                  (letrec ((x7550
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7550))))
                                                          (if x-cnd7549
                                                            (letrec ((x7551
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7551))
                                                            #f))))
                                                g7548)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7552
                                                        (letrec ((x7554
                                                                  (number? x)))
                                                          (assert x7554)))
                                                       (g7553
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7555
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7556
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7556)))))
                                                            g7555))))
                                                g7553)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7557
                                                        (letrec ((val7244
                                                                  (letrec ((x7558
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7558
                                                                     9))))
                                                          (letrec ((g7559
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7560
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7560
                                                                                   10))))
                                                                        (letrec ((g7561
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7562
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7562
                                                                                       32)))))
                                                                          g7561)))))
                                                            g7559))))
                                                g7557)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7563
                                                        (letrec ((x7564
                                                                  (letrec ((x7565
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7565))))
                                                          (cdr x7564))))
                                                g7563)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7566
                                                        (letrec ((x7568
                                                                  (number? x)))
                                                          (assert x7568)))
                                                       (g7567 (> x 0)))
                                                g7567)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7569 #f)) g7569)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7570
                                                        (letrec ((x7571
                                                                  (cdr x)))
                                                          (cdr x7571))))
                                                g7570)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7572
                                                        (letrec ((x7574
                                                                  (number? x)))
                                                          (assert x7574)))
                                                       (g7573
                                                        (letrec ((x-cnd7575
                                                                  (< x 0)))
                                                          (if x-cnd7575
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7573)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7576
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7577
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7578
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7578
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7579
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7580
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7580
                                                                                                  (letrec ((x-cnd7581
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7581
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7582
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7583
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7583
                                                                                                                (letrec ((x-cnd7584
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7584
                                                                                                                    (letrec ((x-cnd7585
                                                                                                                              (letrec ((x7587
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7586
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7587
                                                                                                                                 x7586))))
                                                                                                                      (if x-cnd7585
                                                                                                                        (letrec ((x7589
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7588
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7589
                                                                                                                           x7588))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7590
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7591
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7591
                                                                                                                    (letrec ((x-cnd7592
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7592
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7593
                                                                                                                                    (letrec ((x-cnd7594
                                                                                                                                              (letrec ((x7595
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7595
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7594
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7596
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7597
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7598
                                                                                                                                                                                      (letrec ((x7600
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7599
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7600
                                                                                                                                                                                         x7599))))
                                                                                                                                                                              (if x-cnd7598
                                                                                                                                                                                (letrec ((x7601
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7601))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7597))))
                                                                                                                                                      g7596))))
                                                                                                                                          (letrec ((g7602
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7602))
                                                                                                                                        #f))))
                                                                                                                            g7593))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7590)))))
                                                                                        g7582)))))
                                                                          g7579)))))
                                                            g7577))))
                                                g7576)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7603
                                                        (letrec ((x7604
                                                                  (letrec ((x7605
                                                                            (letrec ((x7606
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7606))))
                                                                    (car
                                                                     x7605))))
                                                          (cdr x7604))))
                                                g7603)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7607
                                                        (letrec ((x7608
                                                                  (letrec ((x7609
                                                                            (letrec ((x7610
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7610))))
                                                                    (car
                                                                     x7609))))
                                                          (car x7608))))
                                                g7607)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7611 (eq? x y)))
                                                g7611)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7612
                                                        (letrec ((x7614
                                                                  (number? x)))
                                                          (assert x7614)))
                                                       (g7613
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7615
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7616
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7616)))))
                                                            g7615))))
                                                g7613)))
                                           (call-with-input-file
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
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7622
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7623 res))
                                                            g7623))))
                                                g7619)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7624 (cons x '())))
                                                g7624)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7625
                                                        (letrec ((x7628
                                                                  (char? c1)))
                                                          (assert x7628)))
                                                       (g7626
                                                        (letrec ((x7629
                                                                  (char? c2)))
                                                          (assert x7629)))
                                                       (g7627
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7630
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7630))))
                                                g7627)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7631
                                                        (letrec ((x7632
                                                                  (letrec ((x7633
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7633))))
                                                          (cdr x7632))))
                                                g7631)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7634
                                                        (letrec ((x7635
                                                                  (letrec ((x7636
                                                                            (letrec ((x7637
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7637))))
                                                                    (car
                                                                     x7636))))
                                                          (cdr x7635))))
                                                g7634)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7638
                                                        (letrec ((x7639
                                                                  (letrec ((x7640
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7640))))
                                                          (car x7639))))
                                                g7638)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7641
                                                        (letrec ((x7642
                                                                  (letrec ((x7643
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7643))))
                                                          (car x7642))))
                                                g7641)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7644
                                                        (letrec ((x7647
                                                                  (char? c1)))
                                                          (assert x7647)))
                                                       (g7645
                                                        (letrec ((x7648
                                                                  (char? c2)))
                                                          (assert x7648)))
                                                       (g7646
                                                        (letrec ((x7649
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7649))))
                                                g7646)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7650
                                                        (letrec ((x7651
                                                                  (letrec ((x7652
                                                                            (letrec ((x7653
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7653))))
                                                                    (car
                                                                     x7652))))
                                                          (car x7651))))
                                                g7650)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7654
                                                        (letrec ((x7656
                                                                  (number? x)))
                                                          (assert x7656)))
                                                       (g7655 (< x 0)))
                                                g7655)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7657 (memq e l)))
                                                g7657)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7658
                                                        (letrec ((x7659
                                                                  (letrec ((x7660
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7660))))
                                                          (car x7659))))
                                                g7658)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7661 '())) g7661)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7662
                                                        (letrec ((x7664
                                                                  (list? l)))
                                                          (assert x7664)))
                                                       (g7663
                                                        (letrec ((x-cnd7665
                                                                  (null? l)))
                                                          (if x-cnd7665
                                                            '()
                                                            (letrec ((x7668
                                                                      (letrec ((x7669
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7669)))
                                                                     (x7666
                                                                      (letrec ((x7667
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7667))))
                                                              (append
                                                               x7668
                                                               x7666))))))
                                                g7663)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7670
                                                        (letrec ((x7671
                                                                  (letrec ((x7672
                                                                            (letrec ((x7673
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7673))))
                                                                    (car
                                                                     x7672))))
                                                          (car x7671))))
                                                g7670)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7674
                                                        (letrec ((x7675
                                                                  (letrec ((x7676
                                                                            (letrec ((x7677
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7677))))
                                                                    (cdr
                                                                     x7676))))
                                                          (cdr x7675))))
                                                g7674)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7678
                                                        (letrec ((x7680
                                                                  (number? x)))
                                                          (assert x7680)))
                                                       (g7679
                                                        (letrec ((x7681
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7681))))
                                                g7679)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7682
                                                        (letrec ((x7683
                                                                  (letrec ((x7684
                                                                            (letrec ((x7685
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7685))))
                                                                    (car
                                                                     x7684))))
                                                          (car x7683))))
                                                g7682)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7686
                                                        (letrec ((x7689
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7689)))
                                                       (g7687
                                                        (letrec ((x7690
                                                                  (list?
                                                                   args)))
                                                          (assert x7690)))
                                                       (g7688
                                                        (letrec ((x-cnd7691
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7691
                                                            (letrec ((g7692
                                                                      (proc)))
                                                              g7692)
                                                            (letrec ((x-cnd7693
                                                                      (letrec ((x7694
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7694))))
                                                              (if x-cnd7693
                                                                (letrec ((g7695
                                                                          (letrec ((x7696
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7696))))
                                                                  g7695)
                                                                (letrec ((x-cnd7697
                                                                          (letrec ((x7698
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7698))))
                                                                  (if x-cnd7697
                                                                    (letrec ((g7699
                                                                              (letrec ((x7701
                                                                                        (car
                                                                                         args))
                                                                                       (x7700
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7701
                                                                                 x7700))))
                                                                      g7699)
                                                                    (letrec ((x-cnd7702
                                                                              (letrec ((x7703
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7703))))
                                                                      (if x-cnd7702
                                                                        (letrec ((g7704
                                                                                  (letrec ((x7707
                                                                                            (car
                                                                                             args))
                                                                                           (x7706
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7705
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7707
                                                                                     x7706
                                                                                     x7705))))
                                                                          g7704)
                                                                        (letrec ((x-cnd7708
                                                                                  (letrec ((x7709
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7709))))
                                                                          (if x-cnd7708
                                                                            (letrec ((g7710
                                                                                      (letrec ((x7714
                                                                                                (car
                                                                                                 args))
                                                                                               (x7713
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7712
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7711
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7714
                                                                                         x7713
                                                                                         x7712
                                                                                         x7711))))
                                                                              g7710)
                                                                            (letrec ((x-cnd7715
                                                                                      (letrec ((x7716
                                                                                                (letrec ((x7717
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7717))))
                                                                                        (null?
                                                                                         x7716))))
                                                                              (if x-cnd7715
                                                                                (letrec ((g7718
                                                                                          (letrec ((x7724
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7723
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7722
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7721
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7719
                                                                                                    (letrec ((x7720
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7720))))
                                                                                            (proc
                                                                                             x7724
                                                                                             x7723
                                                                                             x7722
                                                                                             x7721
                                                                                             x7719))))
                                                                                  g7718)
                                                                                (letrec ((x-cnd7725
                                                                                          (letrec ((x7726
                                                                                                    (letrec ((x7727
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7727))))
                                                                                            (null?
                                                                                             x7726))))
                                                                                  (if x-cnd7725
                                                                                    (letrec ((g7728
                                                                                              (letrec ((x7736
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7735
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7734
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7733
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7731
                                                                                                        (letrec ((x7732
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7732)))
                                                                                                       (x7729
                                                                                                        (letrec ((x7730
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7730))))
                                                                                                (proc
                                                                                                 x7736
                                                                                                 x7735
                                                                                                 x7734
                                                                                                 x7733
                                                                                                 x7731
                                                                                                 x7729))))
                                                                                      g7728)
                                                                                    (letrec ((x-cnd7737
                                                                                              (letrec ((x7738
                                                                                                        (letrec ((x7739
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7739))))
                                                                                                (null?
                                                                                                 x7738))))
                                                                                      (if x-cnd7737
                                                                                        (letrec ((g7740
                                                                                                  (letrec ((x7750
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7749
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7748
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7747
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7745
                                                                                                            (letrec ((x7746
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7746)))
                                                                                                           (x7743
                                                                                                            (letrec ((x7744
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7744)))
                                                                                                           (x7741
                                                                                                            (letrec ((x7742
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7742))))
                                                                                                    (proc
                                                                                                     x7750
                                                                                                     x7749
                                                                                                     x7748
                                                                                                     x7747
                                                                                                     x7745
                                                                                                     x7743
                                                                                                     x7741))))
                                                                                          g7740)
                                                                                        (letrec ((g7751
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7751)))))))))))))))))))
                                                g7688)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7752
                                                        (letrec ((x7754
                                                                  (list? l)))
                                                          (assert x7754)))
                                                       (g7753
                                                        (letrec ((x-cnd7755
                                                                  (null? l)))
                                                          (if x-cnd7755
                                                            #f
                                                            (letrec ((x-cnd7756
                                                                      (letrec ((x7757
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7757
                                                                         e))))
                                                              (if x-cnd7756
                                                                l
                                                                (letrec ((x7758
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7758))))))))
                                                g7753)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7759
                                                        (letrec ((x7760
                                                                  (letrec ((x7761
                                                                            (letrec ((x7762
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7762))))
                                                                    (cdr
                                                                     x7761))))
                                                          (cdr x7760))))
                                                g7759)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7763
                                                        (letrec ((x7764
                                                                  (letrec ((x7765
                                                                            (letrec ((x7766
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7766))))
                                                                    (cdr
                                                                     x7765))))
                                                          (car x7764))))
                                                g7763)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7767 (random 42)))
                                                g7767)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7768
                                                        (letrec ((x7770
                                                                  (number? x)))
                                                          (assert x7770)))
                                                       (g7769 (= x 0)))
                                                g7769)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7771
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7772
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7772))))
                                                g7771)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7773
                                                        (letrec ((x7774
                                                                  (cdr x)))
                                                          (car x7774))))
                                                g7773)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7775
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd7776
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7776
                                                                      (letrec ((x7777
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7777))
                                                                      #f))))
                                                          (letrec ((g7778
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g7778))))
                                                g7775)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7779
                                                        (letrec ((x7780
                                                                  (letrec ((x7781
                                                                            (letrec ((x7782
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7782))))
                                                                    (cdr
                                                                     x7781))))
                                                          (cdr x7780))))
                                                g7779)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7783
                                                        (letrec ((x-cnd7784
                                                                  (letrec ((x7785
                                                                            #\0))
                                                                    (char<=?
                                                                     x7785
                                                                     c))))
                                                          (if x-cnd7784
                                                            (letrec ((x7786
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7786))
                                                            #f))))
                                                g7783)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7787
                                                        (letrec ((x7789
                                                                  (list? l)))
                                                          (assert x7789)))
                                                       (g7788
                                                        (letrec ((x-cnd7790
                                                                  (null? l)))
                                                          (if x-cnd7790
                                                            #f
                                                            (letrec ((x-cnd7791
                                                                      (letrec ((x7792
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7792
                                                                         k))))
                                                              (if x-cnd7791
                                                                (car l)
                                                                (letrec ((x7793
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7793))))))))
                                                g7788)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7794 (if x #f #t)))
                                                g7794)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7795 (append l1 l2)))
                                                g7795)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7796
                                                        (letrec ((x7798
                                                                  (list? l)))
                                                          (assert x7798)))
                                                       (g7797
                                                        (letrec ((x-cnd7799
                                                                  (null? l)))
                                                          (if x-cnd7799
                                                            #f
                                                            (letrec ((x-cnd7800
                                                                      (letrec ((x7801
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7801
                                                                         e))))
                                                              (if x-cnd7800
                                                                l
                                                                (letrec ((x7802
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7802))))))))
                                                g7797)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7803
                                                        (letrec ((x7804
                                                                  (letrec ((x7805
                                                                            (letrec ((x7806
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7806))))
                                                                    (cdr
                                                                     x7805))))
                                                          (car x7804))))
                                                g7803)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7807
                                                        (letrec ((x7809
                                                                  (list? l)))
                                                          (assert x7809)))
                                                       (g7808
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7810
                                                                              (letrec ((x-cnd7811
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7811
                                                                                  0
                                                                                  (letrec ((x7812
                                                                                            (letrec ((x7813
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7813))))
                                                                                    (+
                                                                                     1
                                                                                     x7812))))))
                                                                      g7810))))
                                                          (letrec ((g7814
                                                                    (rec l)))
                                                            g7814))))
                                                g7808)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7815
                                                        (letrec ((x7818
                                                                  (char? c1)))
                                                          (assert x7818)))
                                                       (g7816
                                                        (letrec ((x7819
                                                                  (char? c2)))
                                                          (assert x7819)))
                                                       (g7817
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7820
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7820))))
                                                g7817)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7821
                                                        (letrec ((x7822
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7822))))
                                                g7821)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7823
                                                        (letrec ((x7824
                                                                  (letrec ((x7825
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7825))))
                                                          (cdr x7824))))
                                                g7823)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7826
                                                        (letrec ((x7828
                                                                  (list? l)))
                                                          (assert x7828)))
                                                       (g7827
                                                        (letrec ((x-cnd7829
                                                                  (null? l)))
                                                          (if x-cnd7829
                                                            #f
                                                            (letrec ((x-cnd7830
                                                                      (letrec ((x7831
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7831
                                                                         k))))
                                                              (if x-cnd7830
                                                                (car l)
                                                                (letrec ((x7832
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7832))))))))
                                                g7827)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7833
                                                        (letrec ((x7834
                                                                  (car x)))
                                                          (car x7834))))
                                                g7833)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7835
                                                        (letrec ((x7838
                                                                  (char? c1)))
                                                          (assert x7838)))
                                                       (g7836
                                                        (letrec ((x7839
                                                                  (char? c2)))
                                                          (assert x7839)))
                                                       (g7837
                                                        (letrec ((x7840
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7840))))
                                                g7837)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7841
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7842
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7842))))
                                                g7841)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7843
                                                        (letrec ((x7846
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7846)))
                                                       (g7844
                                                        (letrec ((x7847
                                                                  (list? l)))
                                                          (assert x7847)))
                                                       (g7845
                                                        (letrec ((x-cnd7848
                                                                  (null? l)))
                                                          (if x-cnd7848
                                                            #t
                                                            (letrec ((x-cnd7849
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7849
                                                                (letrec ((g7850
                                                                          (letrec ((x7852
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7852)))
                                                                         (g7851
                                                                          (letrec ((x7853
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7853))))
                                                                  g7851)
                                                                '()))))))
                                                g7845)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7854
                                                        (letrec ((x7856
                                                                  (number? x)))
                                                          (assert x7856)))
                                                       (g7855
                                                        (letrec ((x-cnd7857
                                                                  (< x 0)))
                                                          (if x-cnd7857
                                                            (- 0 x)
                                                            x))))
                                                g7855)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7858
                                                        (letrec ((x7861
                                                                  (char? c1)))
                                                          (assert x7861)))
                                                       (g7859
                                                        (letrec ((x7862
                                                                  (char? c2)))
                                                          (assert x7862)))
                                                       (g7860
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7863
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7863))))
                                                g7860)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7864
                                                        (letrec ((x7865
                                                                  (letrec ((x7866
                                                                            (letrec ((x7867
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7867))))
                                                                    (cdr
                                                                     x7866))))
                                                          (car x7865))))
                                                g7864)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7868 #f)) g7868)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7869
                                                        (letrec ((x7871
                                                                  (letrec ((x7872
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7872)))
                                                                 (x7870
                                                                  (gcd m n)))
                                                          (/ x7871 x7870))))
                                                g7869)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7873
                                                        (letrec ((x7875
                                                                  (number? x)))
                                                          (assert x7875)))
                                                       (g7874
                                                        (letrec ((x7876
                                                                  (<= x y)))
                                                          (not x7876))))
                                                g7874)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7877
                                                        (letrec ((x7881
                                                                  (list? l)))
                                                          (assert x7881)))
                                                       (g7878
                                                        (letrec ((x7882
                                                                  (number?
                                                                   index)))
                                                          (assert x7882)))
                                                       (g7879
                                                        (letrec ((x7883
                                                                  (letrec ((x7884
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7884))))
                                                          (assert x7883)))
                                                       (g7880
                                                        (letrec ((x-cnd7885
                                                                  (= index 0)))
                                                          (if x-cnd7885
                                                            (car l)
                                                            (letrec ((x7887
                                                                      (cdr l))
                                                                     (x7886
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7887
                                                               x7886))))))
                                                g7880)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7888
                                                        (letrec ((x-cnd7889
                                                                  (= b 0)))
                                                          (if x-cnd7889
                                                            a
                                                            (letrec ((x7890
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7890))))))
                                                g7888)))
                                           (recursive-div2
                                            (lambda (l)
                                              (letrec ((g7891
                                                        (letrec ((x-cnd7892
                                                                  (empty? l)))
                                                          (if x-cnd7892
                                                            empty
                                                            (letrec ((x7896
                                                                      (car l))
                                                                     (x7893
                                                                      (letrec ((x7894
                                                                                (letrec ((x7895
                                                                                          (cdr
                                                                                           l)))
                                                                                  (cdr
                                                                                   x7895))))
                                                                        (recursive-div2
                                                                         x7894))))
                                                              (cons
                                                               x7896
                                                               x7893))))))
                                                g7891)))
                                           (even-list/c
                                            (lambda (g7349 g7350 g7351)
                                              (letrec ((g7897
                                                        (letrec ((x-cnd7898
                                                                  ((lambda ()
                                                                     (letrec ((g7899
                                                                               (letrec ((x7900
                                                                                         (letrec ((x7901
                                                                                                   (cons/c
                                                                                                    any/c
                                                                                                    even-list/c)))
                                                                                           (cons/c
                                                                                            any/c
                                                                                            x7901))))
                                                                                 (or/c
                                                                                  null?
                                                                                  x7900))))
                                                                       g7899))
                                                                   g7351)))
                                                          (if x-cnd7898
                                                            g7351
                                                            (blame
                                                             g7349
                                                             '(lambda ()
                                                                (or/c
                                                                 null?
                                                                 (cons/c
                                                                  any/c
                                                                  (cons/c
                                                                   any/c
                                                                   even-list/c)))))))))
                                                g7897))))
                                    (letrec ((g7902
                                              (letrec ((x7904
                                                        (letrec ((xj7352
                                                                  (letrec ((x7905
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x7905)))
                                                                 (xk7353
                                                                  (letrec ((x7906
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x7906))))
                                                          (letrec ((g7907
                                                                    ((lambda (j7355
                                                                              k7356
                                                                              f7357)
                                                                       (letrec ((g7908
                                                                                 (lambda (g7354)
                                                                                   (letrec ((g7909
                                                                                             (letrec ((x7913
                                                                                                       (listof
                                                                                                        any/c))
                                                                                                      (x7910
                                                                                                       (letrec ((x7911
                                                                                                                 (letrec ((x7912
                                                                                                                           (even-list/c)))
                                                                                                                   (x7912
                                                                                                                    j7355
                                                                                                                    k7356
                                                                                                                    g7354))))
                                                                                                         (f7357
                                                                                                          x7911))))
                                                                                               (x7913
                                                                                                j7355
                                                                                                k7356
                                                                                                x7910))))
                                                                                     g7909))))
                                                                         g7908))
                                                                     xj7352
                                                                     xk7353
                                                                     recursive-div2)))
                                                            g7907)))
                                                       (x7903 (input)))
                                                (x7904 x7903))))
                                      g7902))))
                          g7371))))
              g7369)))
    g7368))
