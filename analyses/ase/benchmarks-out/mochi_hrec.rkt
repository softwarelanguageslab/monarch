(letrec ((any? (lambda (v) (letrec ((g7366 #t)) g7366)))
         (meta (lambda (v) (letrec ((g7367 v)) g7367)))
         (member
          (lambda (v lst)
            (letrec ((g7368
                      (letrec ((g7369
                                (letrec ((x-e7370 lst))
                                  (match
                                   x-e7370
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7371 (eq? v v1)))
                                       (if x-cnd7371 #t (member v vs)))))))))
                        g7369)))
              g7368)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7372 (lambda (v) (letrec ((g7373 v)) g7373)))) g7372)))
         (nonzero?
          (lambda (v)
            (letrec ((g7374 (letrec ((x7375 (= v 0))) (not x7375)))) g7374))))
  (letrec ((g7376
            (letrec ((g7377
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7378 '())
                                 (g7379
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7380
                                                        (lambda (k j lst)
                                                          (letrec ((g7381
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7382
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7382))
                                                                     lst)))
                                                            g7381))))
                                                g7380)))
                                           (real?/c
                                            (lambda (g7259 g7260 g7261)
                                              (letrec ((g7383
                                                        (letrec ((x-cnd7384
                                                                  (real?
                                                                   g7261)))
                                                          (if x-cnd7384
                                                            g7261
                                                            (blame
                                                             g7259
                                                             'real?)))))
                                                g7383)))
                                           (boolean?/c
                                            (lambda (g7262 g7263 g7264)
                                              (letrec ((g7385
                                                        (letrec ((x-cnd7386
                                                                  (boolean?
                                                                   g7264)))
                                                          (if x-cnd7386
                                                            g7264
                                                            (blame
                                                             g7262
                                                             'boolean?)))))
                                                g7385)))
                                           (number?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7387
                                                        (letrec ((x-cnd7388
                                                                  (number?
                                                                   g7267)))
                                                          (if x-cnd7388
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'number?)))))
                                                g7387)))
                                           (any/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7389
                                                        (letrec ((x-cnd7390
                                                                  ((lambda (v)
                                                                     (letrec ((g7391
                                                                               #t))
                                                                       g7391))
                                                                   g7270)))
                                                          (if x-cnd7390
                                                            g7270
                                                            (blame
                                                             g7268
                                                             '(lambda (v)
                                                                #t))))))
                                                g7389)))
                                           (any?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7392
                                                        (letrec ((x-cnd7393
                                                                  ((lambda (v)
                                                                     (letrec ((g7394
                                                                               #t))
                                                                       g7394))
                                                                   g7273)))
                                                          (if x-cnd7393
                                                            g7273
                                                            (blame
                                                             g7271
                                                             '(lambda (v)
                                                                #t))))))
                                                g7392)))
                                           (cons?/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7395
                                                        (letrec ((x-cnd7396
                                                                  (pair?
                                                                   g7276)))
                                                          (if x-cnd7396
                                                            g7276
                                                            (blame
                                                             g7274
                                                             'pair?)))))
                                                g7395)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7397
                                                        (letrec ((x-cnd7398
                                                                  (pair?
                                                                   g7279)))
                                                          (if x-cnd7398
                                                            g7279
                                                            (blame
                                                             g7277
                                                             'pair?)))))
                                                g7397)))
                                           (integer?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7399
                                                        (letrec ((x-cnd7400
                                                                  (integer?
                                                                   g7282)))
                                                          (if x-cnd7400
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'integer?)))))
                                                g7399)))
                                           (symbol?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7401
                                                        (letrec ((x-cnd7402
                                                                  (symbol?
                                                                   g7285)))
                                                          (if x-cnd7402
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'symbol?)))))
                                                g7401)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7403
                                                        (lambda (k j v)
                                                          (letrec ((g7404
                                                                    (letrec ((x-cnd7405
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7405
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7404))))
                                                g7403)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7406
                                                        (lambda (k j v)
                                                          (letrec ((g7407
                                                                    (letrec ((x-cnd7408
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7408
                                                                        '()
                                                                        (letrec ((x7412
                                                                                  (letrec ((x7413
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7413)))
                                                                                 (x7409
                                                                                  (letrec ((x7411
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7410
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7411
                                                                                     k
                                                                                     j
                                                                                     x7410))))
                                                                          (orig-cons
                                                                           x7412
                                                                           x7409))))))
                                                            g7407))))
                                                g7406)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7414 #t)) g7414)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7415
                                                        (letrec ((x7416
                                                                  (= v 0)))
                                                          (not x7416))))
                                                g7415)))
                                           (nonzero?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7417
                                                        (letrec ((x-cnd7418
                                                                  ((lambda (v)
                                                                     (letrec ((g7419
                                                                               (letrec ((x7420
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7420))))
                                                                       g7419))
                                                                   g7288)))
                                                          (if x-cnd7418
                                                            g7288
                                                            (blame
                                                             g7286
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7417)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7421 v)) g7421)))
                                           (+
                                            (letrec ((xj7289 'server)
                                                     (xk7290 'client))
                                              (letrec ((g7422
                                                        ((lambda (j7293
                                                                  k7294
                                                                  f7295)
                                                           (letrec ((g7424
                                                                     (lambda (g7291
                                                                              g7292)
                                                                       (letrec ((g7425
                                                                                 (letrec ((x7426
                                                                                           (letrec ((x7428
                                                                                                     (number?/c
                                                                                                      j7293
                                                                                                      k7294
                                                                                                      g7291))
                                                                                                    (x7427
                                                                                                     (number?/c
                                                                                                      j7293
                                                                                                      k7294
                                                                                                      g7292)))
                                                                                             (f7295
                                                                                              x7428
                                                                                              x7427))))
                                                                                   (number?/c
                                                                                    j7293
                                                                                    k7294
                                                                                    x7426))))
                                                                         g7425))))
                                                             g7424))
                                                         xj7289
                                                         xk7290
                                                         (lambda (a b)
                                                           (letrec ((g7423
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7423)))))
                                                g7422)))
                                           (-
                                            (letrec ((xj7296 'server)
                                                     (xk7297 'client))
                                              (letrec ((g7429
                                                        ((lambda (j7300
                                                                  k7301
                                                                  f7302)
                                                           (letrec ((g7431
                                                                     (lambda (g7298
                                                                              g7299)
                                                                       (letrec ((g7432
                                                                                 (letrec ((x7433
                                                                                           (letrec ((x7435
                                                                                                     (number?/c
                                                                                                      j7300
                                                                                                      k7301
                                                                                                      g7298))
                                                                                                    (x7434
                                                                                                     (number?/c
                                                                                                      j7300
                                                                                                      k7301
                                                                                                      g7299)))
                                                                                             (f7302
                                                                                              x7435
                                                                                              x7434))))
                                                                                   (number?/c
                                                                                    j7300
                                                                                    k7301
                                                                                    x7433))))
                                                                         g7432))))
                                                             g7431))
                                                         xj7296
                                                         xk7297
                                                         (lambda (a b)
                                                           (letrec ((g7430
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7430)))))
                                                g7429)))
                                           (*
                                            (letrec ((xj7303 'server)
                                                     (xk7304 'client))
                                              (letrec ((g7436
                                                        ((lambda (j7307
                                                                  k7308
                                                                  f7309)
                                                           (letrec ((g7438
                                                                     (lambda (g7305
                                                                              g7306)
                                                                       (letrec ((g7439
                                                                                 (letrec ((x7440
                                                                                           (letrec ((x7442
                                                                                                     (number?/c
                                                                                                      j7307
                                                                                                      k7308
                                                                                                      g7305))
                                                                                                    (x7441
                                                                                                     (number?/c
                                                                                                      j7307
                                                                                                      k7308
                                                                                                      g7306)))
                                                                                             (f7309
                                                                                              x7442
                                                                                              x7441))))
                                                                                   (number?/c
                                                                                    j7307
                                                                                    k7308
                                                                                    x7440))))
                                                                         g7439))))
                                                             g7438))
                                                         xj7303
                                                         xk7304
                                                         (lambda (a b)
                                                           (letrec ((g7437
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7437)))))
                                                g7436)))
                                           (/
                                            (letrec ((xj7310 'server)
                                                     (xk7311 'client))
                                              (letrec ((g7443
                                                        ((lambda (j7314
                                                                  k7315
                                                                  f7316)
                                                           (letrec ((g7445
                                                                     (lambda (g7312
                                                                              g7313)
                                                                       (letrec ((g7446
                                                                                 (letrec ((x7447
                                                                                           (letrec ((x7449
                                                                                                     (number?/c
                                                                                                      j7314
                                                                                                      k7315
                                                                                                      g7312))
                                                                                                    (x7448
                                                                                                     (number?/c
                                                                                                      j7314
                                                                                                      k7315
                                                                                                      g7313)))
                                                                                             (f7316
                                                                                              x7449
                                                                                              x7448))))
                                                                                   (number?/c
                                                                                    j7314
                                                                                    k7315
                                                                                    x7447))))
                                                                         g7446))))
                                                             g7445))
                                                         xj7310
                                                         xk7311
                                                         (lambda (a b)
                                                           (letrec ((g7444
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7444)))))
                                                g7443)))
                                           (car
                                            (letrec ((xj7317 'server)
                                                     (xk7318 'client))
                                              (letrec ((g7450
                                                        ((lambda (j7320
                                                                  k7321
                                                                  f7322)
                                                           (letrec ((g7452
                                                                     (lambda (g7319)
                                                                       (letrec ((g7453
                                                                                 (letrec ((x7454
                                                                                           (letrec ((x7455
                                                                                                     (pair?/c
                                                                                                      j7320
                                                                                                      k7321
                                                                                                      g7319)))
                                                                                             (f7322
                                                                                              x7455))))
                                                                                   (any/c
                                                                                    j7320
                                                                                    k7321
                                                                                    x7454))))
                                                                         g7453))))
                                                             g7452))
                                                         xj7317
                                                         xk7318
                                                         (lambda (p)
                                                           (letrec ((g7451
                                                                     (orig-car
                                                                      p)))
                                                             g7451)))))
                                                g7450)))
                                           (cdr
                                            (letrec ((xj7323 'server)
                                                     (xk7324 'client))
                                              (letrec ((g7456
                                                        ((lambda (j7326
                                                                  k7327
                                                                  f7328)
                                                           (letrec ((g7458
                                                                     (lambda (g7325)
                                                                       (letrec ((g7459
                                                                                 (letrec ((x7460
                                                                                           (letrec ((x7461
                                                                                                     (pair?/c
                                                                                                      j7326
                                                                                                      k7327
                                                                                                      g7325)))
                                                                                             (f7328
                                                                                              x7461))))
                                                                                   (any/c
                                                                                    j7326
                                                                                    k7327
                                                                                    x7460))))
                                                                         g7459))))
                                                             g7458))
                                                         xj7323
                                                         xk7324
                                                         (lambda (p)
                                                           (letrec ((g7457
                                                                     (orig-cdr
                                                                      p)))
                                                             g7457)))))
                                                g7456)))
                                           (cons
                                            (letrec ((xj7329 'server)
                                                     (xk7330 'client))
                                              (letrec ((g7462
                                                        ((lambda (j7333
                                                                  k7334
                                                                  f7335)
                                                           (letrec ((g7464
                                                                     (lambda (g7331
                                                                              g7332)
                                                                       (letrec ((g7465
                                                                                 (letrec ((x7466
                                                                                           (letrec ((x7468
                                                                                                     (any/c
                                                                                                      j7333
                                                                                                      k7334
                                                                                                      g7331))
                                                                                                    (x7467
                                                                                                     (any/c
                                                                                                      j7333
                                                                                                      k7334
                                                                                                      g7332)))
                                                                                             (f7335
                                                                                              x7468
                                                                                              x7467))))
                                                                                   (pair?/c
                                                                                    j7333
                                                                                    k7334
                                                                                    x7466))))
                                                                         g7465))))
                                                             g7464))
                                                         xj7329
                                                         xk7330
                                                         (lambda (a b)
                                                           (letrec ((g7463
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7463)))))
                                                g7462)))
                                           (vector-ref
                                            (letrec ((xj7336 'server)
                                                     (xk7337 'client))
                                              (letrec ((g7469
                                                        ((lambda (j7339
                                                                  k7340
                                                                  f7341)
                                                           (letrec ((g7471
                                                                     (lambda (g7338)
                                                                       (letrec ((g7472
                                                                                 (letrec ((x7473
                                                                                           (letrec ((x7474
                                                                                                     (vector?/c
                                                                                                      j7339
                                                                                                      k7340
                                                                                                      g7338)))
                                                                                             (f7341
                                                                                              x7474))))
                                                                                   (integer?/c
                                                                                    j7339
                                                                                    k7340
                                                                                    x7473))))
                                                                         g7472))))
                                                             g7471))
                                                         xj7336
                                                         xk7337
                                                         (lambda (v i)
                                                           (letrec ((g7470
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7470)))))
                                                g7469)))
                                           (vector-set!
                                            (letrec ((xj7342 'server)
                                                     (xk7343 'client))
                                              (letrec ((g7475
                                                        ((lambda (j7346
                                                                  k7347
                                                                  f7348)
                                                           (letrec ((g7477
                                                                     (lambda (g7344
                                                                              g7345)
                                                                       (letrec ((g7478
                                                                                 (letrec ((x7479
                                                                                           (letrec ((x7481
                                                                                                     (vector?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7344))
                                                                                                    (x7480
                                                                                                     (integer?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7345)))
                                                                                             (f7348
                                                                                              x7481
                                                                                              x7480))))
                                                                                   (any/c
                                                                                    j7346
                                                                                    k7347
                                                                                    x7479))))
                                                                         g7478))))
                                                             g7477))
                                                         xj7342
                                                         xk7343
                                                         (lambda (vec i v)
                                                           (letrec ((g7476
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7476)))))
                                                g7475)))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7482
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7482)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7483
                                                        (letrec ((x7484
                                                                  (letrec ((x7485
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7485))))
                                                          (cdr x7484))))
                                                g7483)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7486
                                                        (letrec ((x7489
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7489)))
                                                       (g7487
                                                        (letrec ((x7490
                                                                  (list? l)))
                                                          (assert x7490)))
                                                       (g7488
                                                        (letrec ((x-cnd7491
                                                                  (null? l)))
                                                          (if x-cnd7491
                                                            '()
                                                            (letrec ((x7494
                                                                      (letrec ((x7495
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7495)))
                                                                     (x7492
                                                                      (letrec ((x7493
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7493))))
                                                              (cons
                                                               x7494
                                                               x7492))))))
                                                g7488)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7496
                                                        (letrec ((x7497
                                                                  (car x)))
                                                          (cdr x7497))))
                                                g7496)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7498
                                                        (letrec ((x7499
                                                                  (letrec ((x7500
                                                                            (letrec ((x7501
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7501))))
                                                                    (cdr
                                                                     x7500))))
                                                          (car x7499))))
                                                g7498)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7502
                                                        (letrec ((x7503
                                                                  (letrec ((x7504
                                                                            (letrec ((x7505
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7505))))
                                                                    (car
                                                                     x7504))))
                                                          (cdr x7503))))
                                                g7502)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7506
                                                        (letrec ((x7509
                                                                  (string?
                                                                   filename)))
                                                          (assert x7509)))
                                                       (g7507
                                                        (letrec ((x7510
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7510)))
                                                       (g7508
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7511
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7512 res))
                                                            g7512))))
                                                g7508)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7513
                                                        (letrec ((x7514
                                                                  (letrec ((x7515
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7515))))
                                                          (car x7514))))
                                                g7513)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7516
                                                        (letrec ((x7517
                                                                  (letrec ((x7518
                                                                            (letrec ((x7519
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7519))))
                                                                    (car
                                                                     x7518))))
                                                          (cdr x7517))))
                                                g7516)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7520
                                                        (letrec ((x7522
                                                                  (list? l)))
                                                          (assert x7522)))
                                                       (g7521
                                                        (letrec ((x-cnd7523
                                                                  (null? l)))
                                                          (if x-cnd7523
                                                            #f
                                                            (letrec ((x-cnd7524
                                                                      (letrec ((x7525
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7525
                                                                         k))))
                                                              (if x-cnd7524
                                                                (car l)
                                                                (letrec ((x7526
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7526))))))))
                                                g7521)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7527
                                                        (letrec ((x7528
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7528))))
                                                g7527)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7529
                                                        (letrec ((x7531
                                                                  (list? l)))
                                                          (assert x7531)))
                                                       (g7530
                                                        (letrec ((x-cnd7532
                                                                  (null? l)))
                                                          (if x-cnd7532
                                                            ""
                                                            (letrec ((x7535
                                                                      (letrec ((x7536
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7536)))
                                                                     (x7533
                                                                      (letrec ((x7534
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7534))))
                                                              (string-append
                                                               x7535
                                                               x7533))))))
                                                g7530)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7537
                                                        (letrec ((x7540
                                                                  (char? c1)))
                                                          (assert x7540)))
                                                       (g7538
                                                        (letrec ((x7541
                                                                  (char? c2)))
                                                          (assert x7541)))
                                                       (g7539
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7542
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7542))))
                                                g7539)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7543
                                                        (letrec ((x7544
                                                                  (letrec ((x7545
                                                                            (letrec ((x7546
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7546))))
                                                                    (cdr
                                                                     x7545))))
                                                          (cdr x7544))))
                                                g7543)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7547
                                                        (letrec ((x7550
                                                                  (list? l)))
                                                          (assert x7550)))
                                                       (g7548
                                                        (letrec ((x7551
                                                                  (number?)))
                                                          (assert x7551)))
                                                       (g7549
                                                        (letrec ((x-cnd7552
                                                                  (zero? k)))
                                                          (if x-cnd7552
                                                            x
                                                            (letrec ((x7554
                                                                      (cdr x))
                                                                     (x7553
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7554
                                                               x7553))))))
                                                g7549)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7555 '())) g7555)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7556
                                                        (letrec ((x-cnd7557
                                                                  (letrec ((x7558
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7558))))
                                                          (if x-cnd7557
                                                            (letrec ((x7559
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7559))
                                                            #f))))
                                                g7556)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7560
                                                        (letrec ((x7562
                                                                  (number? x)))
                                                          (assert x7562)))
                                                       (g7561
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7563
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7564
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7564)))))
                                                            g7563))))
                                                g7561)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7565
                                                        (letrec ((val7244
                                                                  (letrec ((x7566
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7566
                                                                     9))))
                                                          (letrec ((g7567
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7568
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7568
                                                                                   10))))
                                                                        (letrec ((g7569
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7570
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7570
                                                                                       32)))))
                                                                          g7569)))))
                                                            g7567))))
                                                g7565)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7571
                                                        (letrec ((x7572
                                                                  (letrec ((x7573
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7573))))
                                                          (cdr x7572))))
                                                g7571)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7574
                                                        (letrec ((x7576
                                                                  (number? x)))
                                                          (assert x7576)))
                                                       (g7575 (> x 0)))
                                                g7575)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7577 #f)) g7577)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7578
                                                        (letrec ((x7579
                                                                  (cdr x)))
                                                          (cdr x7579))))
                                                g7578)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7580
                                                        (letrec ((x7582
                                                                  (number? x)))
                                                          (assert x7582)))
                                                       (g7581
                                                        (letrec ((x-cnd7583
                                                                  (< x 0)))
                                                          (if x-cnd7583
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7581)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7584
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7585
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7586
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7586
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7587
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7588
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7588
                                                                                                  (letrec ((x-cnd7589
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7589
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7590
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7591
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7591
                                                                                                                (letrec ((x-cnd7592
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7592
                                                                                                                    (letrec ((x-cnd7593
                                                                                                                              (letrec ((x7595
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7594
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7595
                                                                                                                                 x7594))))
                                                                                                                      (if x-cnd7593
                                                                                                                        (letrec ((x7597
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7596
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7597
                                                                                                                           x7596))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7598
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7599
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7599
                                                                                                                    (letrec ((x-cnd7600
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7600
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7601
                                                                                                                                    (letrec ((x-cnd7602
                                                                                                                                              (letrec ((x7603
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7603
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7602
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7604
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7605
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7606
                                                                                                                                                                                      (letrec ((x7608
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7607
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7608
                                                                                                                                                                                         x7607))))
                                                                                                                                                                              (if x-cnd7606
                                                                                                                                                                                (letrec ((x7609
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7609))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7605))))
                                                                                                                                                      g7604))))
                                                                                                                                          (letrec ((g7610
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7610))
                                                                                                                                        #f))))
                                                                                                                            g7601))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7598)))))
                                                                                        g7590)))))
                                                                          g7587)))))
                                                            g7585))))
                                                g7584)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7611
                                                        (letrec ((x7612
                                                                  (letrec ((x7613
                                                                            (letrec ((x7614
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7614))))
                                                                    (car
                                                                     x7613))))
                                                          (cdr x7612))))
                                                g7611)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7615
                                                        (letrec ((x7616
                                                                  (letrec ((x7617
                                                                            (letrec ((x7618
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7618))))
                                                                    (car
                                                                     x7617))))
                                                          (car x7616))))
                                                g7615)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7619 (eq? x y)))
                                                g7619)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7620
                                                        (letrec ((x7622
                                                                  (number? x)))
                                                          (assert x7622)))
                                                       (g7621
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7623
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7624
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7624)))))
                                                            g7623))))
                                                g7621)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7625
                                                        (letrec ((x7628
                                                                  (string?
                                                                   filename)))
                                                          (assert x7628)))
                                                       (g7626
                                                        (letrec ((x7629
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7629)))
                                                       (g7627
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7630
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7631 res))
                                                            g7631))))
                                                g7627)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7632 (cons x '())))
                                                g7632)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7633
                                                        (letrec ((x7636
                                                                  (char? c1)))
                                                          (assert x7636)))
                                                       (g7634
                                                        (letrec ((x7637
                                                                  (char? c2)))
                                                          (assert x7637)))
                                                       (g7635
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7638
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7638))))
                                                g7635)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7639
                                                        (letrec ((x7640
                                                                  (letrec ((x7641
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7641))))
                                                          (cdr x7640))))
                                                g7639)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7642
                                                        (letrec ((x7643
                                                                  (letrec ((x7644
                                                                            (letrec ((x7645
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7645))))
                                                                    (car
                                                                     x7644))))
                                                          (cdr x7643))))
                                                g7642)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7646
                                                        (letrec ((x7647
                                                                  (letrec ((x7648
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7648))))
                                                          (car x7647))))
                                                g7646)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7649
                                                        (letrec ((x7650
                                                                  (letrec ((x7651
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7651))))
                                                          (car x7650))))
                                                g7649)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7652
                                                        (letrec ((x7655
                                                                  (char? c1)))
                                                          (assert x7655)))
                                                       (g7653
                                                        (letrec ((x7656
                                                                  (char? c2)))
                                                          (assert x7656)))
                                                       (g7654
                                                        (letrec ((x7657
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7657))))
                                                g7654)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7658
                                                        (letrec ((x7659
                                                                  (letrec ((x7660
                                                                            (letrec ((x7661
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7661))))
                                                                    (car
                                                                     x7660))))
                                                          (car x7659))))
                                                g7658)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7662
                                                        (letrec ((x7664
                                                                  (number? x)))
                                                          (assert x7664)))
                                                       (g7663 (< x 0)))
                                                g7663)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7665 (memq e l)))
                                                g7665)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7666
                                                        (letrec ((x7667
                                                                  (letrec ((x7668
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7668))))
                                                          (car x7667))))
                                                g7666)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7669 '())) g7669)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7670
                                                        (letrec ((x7672
                                                                  (list? l)))
                                                          (assert x7672)))
                                                       (g7671
                                                        (letrec ((x-cnd7673
                                                                  (null? l)))
                                                          (if x-cnd7673
                                                            '()
                                                            (letrec ((x7676
                                                                      (letrec ((x7677
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7677)))
                                                                     (x7674
                                                                      (letrec ((x7675
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7675))))
                                                              (append
                                                               x7676
                                                               x7674))))))
                                                g7671)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7678
                                                        (letrec ((x7679
                                                                  (letrec ((x7680
                                                                            (letrec ((x7681
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7681))))
                                                                    (car
                                                                     x7680))))
                                                          (car x7679))))
                                                g7678)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7682
                                                        (letrec ((x7683
                                                                  (letrec ((x7684
                                                                            (letrec ((x7685
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7685))))
                                                                    (cdr
                                                                     x7684))))
                                                          (cdr x7683))))
                                                g7682)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7686
                                                        (letrec ((x7688
                                                                  (number? x)))
                                                          (assert x7688)))
                                                       (g7687
                                                        (letrec ((x7689
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7689))))
                                                g7687)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7690
                                                        (letrec ((x7691
                                                                  (letrec ((x7692
                                                                            (letrec ((x7693
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7693))))
                                                                    (car
                                                                     x7692))))
                                                          (car x7691))))
                                                g7690)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7694
                                                        (letrec ((x7697
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7697)))
                                                       (g7695
                                                        (letrec ((x7698
                                                                  (list?
                                                                   args)))
                                                          (assert x7698)))
                                                       (g7696
                                                        (letrec ((x-cnd7699
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7699
                                                            (letrec ((g7700
                                                                      (proc)))
                                                              g7700)
                                                            (letrec ((x-cnd7701
                                                                      (letrec ((x7702
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7702))))
                                                              (if x-cnd7701
                                                                (letrec ((g7703
                                                                          (letrec ((x7704
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7704))))
                                                                  g7703)
                                                                (letrec ((x-cnd7705
                                                                          (letrec ((x7706
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7706))))
                                                                  (if x-cnd7705
                                                                    (letrec ((g7707
                                                                              (letrec ((x7709
                                                                                        (car
                                                                                         args))
                                                                                       (x7708
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7709
                                                                                 x7708))))
                                                                      g7707)
                                                                    (letrec ((x-cnd7710
                                                                              (letrec ((x7711
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7711))))
                                                                      (if x-cnd7710
                                                                        (letrec ((g7712
                                                                                  (letrec ((x7715
                                                                                            (car
                                                                                             args))
                                                                                           (x7714
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7713
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7715
                                                                                     x7714
                                                                                     x7713))))
                                                                          g7712)
                                                                        (letrec ((x-cnd7716
                                                                                  (letrec ((x7717
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7717))))
                                                                          (if x-cnd7716
                                                                            (letrec ((g7718
                                                                                      (letrec ((x7722
                                                                                                (car
                                                                                                 args))
                                                                                               (x7721
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7720
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7719
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7722
                                                                                         x7721
                                                                                         x7720
                                                                                         x7719))))
                                                                              g7718)
                                                                            (letrec ((x-cnd7723
                                                                                      (letrec ((x7724
                                                                                                (letrec ((x7725
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7725))))
                                                                                        (null?
                                                                                         x7724))))
                                                                              (if x-cnd7723
                                                                                (letrec ((g7726
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
                                                                                                       x7728))))
                                                                                            (proc
                                                                                             x7732
                                                                                             x7731
                                                                                             x7730
                                                                                             x7729
                                                                                             x7727))))
                                                                                  g7726)
                                                                                (letrec ((x-cnd7733
                                                                                          (letrec ((x7734
                                                                                                    (letrec ((x7735
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7735))))
                                                                                            (null?
                                                                                             x7734))))
                                                                                  (if x-cnd7733
                                                                                    (letrec ((g7736
                                                                                              (letrec ((x7744
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7743
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7742
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7741
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7739
                                                                                                        (letrec ((x7740
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7740)))
                                                                                                       (x7737
                                                                                                        (letrec ((x7738
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7738))))
                                                                                                (proc
                                                                                                 x7744
                                                                                                 x7743
                                                                                                 x7742
                                                                                                 x7741
                                                                                                 x7739
                                                                                                 x7737))))
                                                                                      g7736)
                                                                                    (letrec ((x-cnd7745
                                                                                              (letrec ((x7746
                                                                                                        (letrec ((x7747
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7747))))
                                                                                                (null?
                                                                                                 x7746))))
                                                                                      (if x-cnd7745
                                                                                        (letrec ((g7748
                                                                                                  (letrec ((x7758
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7757
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7756
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7755
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7753
                                                                                                            (letrec ((x7754
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7754)))
                                                                                                           (x7751
                                                                                                            (letrec ((x7752
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7752)))
                                                                                                           (x7749
                                                                                                            (letrec ((x7750
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7750))))
                                                                                                    (proc
                                                                                                     x7758
                                                                                                     x7757
                                                                                                     x7756
                                                                                                     x7755
                                                                                                     x7753
                                                                                                     x7751
                                                                                                     x7749))))
                                                                                          g7748)
                                                                                        (letrec ((g7759
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7759)))))))))))))))))))
                                                g7696)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7760
                                                        (letrec ((x7762
                                                                  (list? l)))
                                                          (assert x7762)))
                                                       (g7761
                                                        (letrec ((x-cnd7763
                                                                  (null? l)))
                                                          (if x-cnd7763
                                                            #f
                                                            (letrec ((x-cnd7764
                                                                      (letrec ((x7765
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7765
                                                                         e))))
                                                              (if x-cnd7764
                                                                l
                                                                (letrec ((x7766
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7766))))))))
                                                g7761)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7767
                                                        (letrec ((x7768
                                                                  (letrec ((x7769
                                                                            (letrec ((x7770
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7770))))
                                                                    (cdr
                                                                     x7769))))
                                                          (cdr x7768))))
                                                g7767)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7771
                                                        (letrec ((x7772
                                                                  (letrec ((x7773
                                                                            (letrec ((x7774
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7774))))
                                                                    (cdr
                                                                     x7773))))
                                                          (car x7772))))
                                                g7771)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7775 (random 42)))
                                                g7775)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7776
                                                        (letrec ((x7778
                                                                  (number? x)))
                                                          (assert x7778)))
                                                       (g7777 (= x 0)))
                                                g7777)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7779
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7780
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7780))))
                                                g7779)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7781
                                                        (letrec ((x7782
                                                                  (cdr x)))
                                                          (car x7782))))
                                                g7781)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7783
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd7784
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7784
                                                                      (letrec ((x7785
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7785))
                                                                      #f))))
                                                          (letrec ((g7786
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g7786))))
                                                g7783)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7787
                                                        (letrec ((x7788
                                                                  (letrec ((x7789
                                                                            (letrec ((x7790
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7790))))
                                                                    (cdr
                                                                     x7789))))
                                                          (cdr x7788))))
                                                g7787)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7791
                                                        (letrec ((x-cnd7792
                                                                  (letrec ((x7793
                                                                            #\0))
                                                                    (char<=?
                                                                     x7793
                                                                     c))))
                                                          (if x-cnd7792
                                                            (letrec ((x7794
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7794))
                                                            #f))))
                                                g7791)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7795
                                                        (letrec ((x7797
                                                                  (list? l)))
                                                          (assert x7797)))
                                                       (g7796
                                                        (letrec ((x-cnd7798
                                                                  (null? l)))
                                                          (if x-cnd7798
                                                            #f
                                                            (letrec ((x-cnd7799
                                                                      (letrec ((x7800
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7800
                                                                         k))))
                                                              (if x-cnd7799
                                                                (car l)
                                                                (letrec ((x7801
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7801))))))))
                                                g7796)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7802 (if x #f #t)))
                                                g7802)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7803 (append l1 l2)))
                                                g7803)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7804
                                                        (letrec ((x7806
                                                                  (list? l)))
                                                          (assert x7806)))
                                                       (g7805
                                                        (letrec ((x-cnd7807
                                                                  (null? l)))
                                                          (if x-cnd7807
                                                            #f
                                                            (letrec ((x-cnd7808
                                                                      (letrec ((x7809
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7809
                                                                         e))))
                                                              (if x-cnd7808
                                                                l
                                                                (letrec ((x7810
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7810))))))))
                                                g7805)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7811
                                                        (letrec ((x7812
                                                                  (letrec ((x7813
                                                                            (letrec ((x7814
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7814))))
                                                                    (cdr
                                                                     x7813))))
                                                          (car x7812))))
                                                g7811)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7815
                                                        (letrec ((x7817
                                                                  (list? l)))
                                                          (assert x7817)))
                                                       (g7816
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7818
                                                                              (letrec ((x-cnd7819
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7819
                                                                                  0
                                                                                  (letrec ((x7820
                                                                                            (letrec ((x7821
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7821))))
                                                                                    (+
                                                                                     1
                                                                                     x7820))))))
                                                                      g7818))))
                                                          (letrec ((g7822
                                                                    (rec l)))
                                                            g7822))))
                                                g7816)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7823
                                                        (letrec ((x7826
                                                                  (char? c1)))
                                                          (assert x7826)))
                                                       (g7824
                                                        (letrec ((x7827
                                                                  (char? c2)))
                                                          (assert x7827)))
                                                       (g7825
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7828
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7828))))
                                                g7825)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7829
                                                        (letrec ((x7830
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7830))))
                                                g7829)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7831
                                                        (letrec ((x7832
                                                                  (letrec ((x7833
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7833))))
                                                          (cdr x7832))))
                                                g7831)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7834
                                                        (letrec ((x7836
                                                                  (list? l)))
                                                          (assert x7836)))
                                                       (g7835
                                                        (letrec ((x-cnd7837
                                                                  (null? l)))
                                                          (if x-cnd7837
                                                            #f
                                                            (letrec ((x-cnd7838
                                                                      (letrec ((x7839
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7839
                                                                         k))))
                                                              (if x-cnd7838
                                                                (car l)
                                                                (letrec ((x7840
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7840))))))))
                                                g7835)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7841
                                                        (letrec ((x7842
                                                                  (car x)))
                                                          (car x7842))))
                                                g7841)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7843
                                                        (letrec ((x7846
                                                                  (char? c1)))
                                                          (assert x7846)))
                                                       (g7844
                                                        (letrec ((x7847
                                                                  (char? c2)))
                                                          (assert x7847)))
                                                       (g7845
                                                        (letrec ((x7848
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7848))))
                                                g7845)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7849
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7850
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7850))))
                                                g7849)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7851
                                                        (letrec ((x7854
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7854)))
                                                       (g7852
                                                        (letrec ((x7855
                                                                  (list? l)))
                                                          (assert x7855)))
                                                       (g7853
                                                        (letrec ((x-cnd7856
                                                                  (null? l)))
                                                          (if x-cnd7856
                                                            #t
                                                            (letrec ((x-cnd7857
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7857
                                                                (letrec ((g7858
                                                                          (letrec ((x7860
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7860)))
                                                                         (g7859
                                                                          (letrec ((x7861
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7861))))
                                                                  g7859)
                                                                '()))))))
                                                g7853)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7862
                                                        (letrec ((x7864
                                                                  (number? x)))
                                                          (assert x7864)))
                                                       (g7863
                                                        (letrec ((x-cnd7865
                                                                  (< x 0)))
                                                          (if x-cnd7865
                                                            (- 0 x)
                                                            x))))
                                                g7863)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7866
                                                        (letrec ((x7869
                                                                  (char? c1)))
                                                          (assert x7869)))
                                                       (g7867
                                                        (letrec ((x7870
                                                                  (char? c2)))
                                                          (assert x7870)))
                                                       (g7868
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7871
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7871))))
                                                g7868)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7872
                                                        (letrec ((x7873
                                                                  (letrec ((x7874
                                                                            (letrec ((x7875
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7875))))
                                                                    (cdr
                                                                     x7874))))
                                                          (car x7873))))
                                                g7872)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7876 #f)) g7876)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7877
                                                        (letrec ((x7879
                                                                  (letrec ((x7880
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7880)))
                                                                 (x7878
                                                                  (gcd m n)))
                                                          (/ x7879 x7878))))
                                                g7877)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7881
                                                        (letrec ((x7883
                                                                  (number? x)))
                                                          (assert x7883)))
                                                       (g7882
                                                        (letrec ((x7884
                                                                  (<= x y)))
                                                          (not x7884))))
                                                g7882)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7885
                                                        (letrec ((x7889
                                                                  (list? l)))
                                                          (assert x7889)))
                                                       (g7886
                                                        (letrec ((x7890
                                                                  (number?
                                                                   index)))
                                                          (assert x7890)))
                                                       (g7887
                                                        (letrec ((x7891
                                                                  (letrec ((x7892
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7892))))
                                                          (assert x7891)))
                                                       (g7888
                                                        (letrec ((x-cnd7893
                                                                  (= index 0)))
                                                          (if x-cnd7893
                                                            (car l)
                                                            (letrec ((x7895
                                                                      (cdr l))
                                                                     (x7894
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7895
                                                               x7894))))))
                                                g7888)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7896
                                                        (letrec ((x-cnd7897
                                                                  (= b 0)))
                                                          (if x-cnd7897
                                                            a
                                                            (letrec ((x7898
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7898))))))
                                                g7896)))
                                           (f
                                            (lambda (g x)
                                              (letrec ((g7899
                                                        (letrec ((x-cnd7900
                                                                  (>= x 0)))
                                                          (if x-cnd7900
                                                            (g x)
                                                            (letrec ((x7902
                                                                      (letrec ((x7904
                                                                                (x))
                                                                               (x7903
                                                                                (f
                                                                                 g
                                                                                 x)))
                                                                        (λ x7904
                                                                          x7903)))
                                                                     (x7901
                                                                      (g x)))
                                                              (f
                                                               x7902
                                                               x7901))))))
                                                g7899)))
                                           (main
                                            (lambda (n)
                                              (letrec ((g7905 (f add1 n)))
                                                g7905))))
                                    (letrec ((g7906
                                              (letrec ((x7910
                                                        (letrec ((xj7349
                                                                  (letrec ((x7911
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x7911)))
                                                                 (xk7350
                                                                  (letrec ((x7912
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x7912))))
                                                          (letrec ((g7913
                                                                    ((lambda (j7353
                                                                              k7354
                                                                              f7355)
                                                                       (letrec ((g7914
                                                                                 (lambda (g7351
                                                                                          g7352)
                                                                                   (letrec ((g7915
                                                                                             (letrec ((x7916
                                                                                                       (letrec ((x7918
                                                                                                                 ((lambda (j7357
                                                                                                                           k7358
                                                                                                                           f7359)
                                                                                                                    (letrec ((g7919
                                                                                                                              (lambda (g7356)
                                                                                                                                (letrec ((g7920
                                                                                                                                          (letrec ((x7921
                                                                                                                                                    (letrec ((x7922
                                                                                                                                                              (integer?
                                                                                                                                                               j7357
                                                                                                                                                               k7358
                                                                                                                                                               g7356)))
                                                                                                                                                      (f7359
                                                                                                                                                       x7922))))
                                                                                                                                            (integer?
                                                                                                                                             j7357
                                                                                                                                             k7358
                                                                                                                                             x7921))))
                                                                                                                                  g7920))))
                                                                                                                      g7919))
                                                                                                                  j7353
                                                                                                                  k7354
                                                                                                                  g7351))
                                                                                                                (x7917
                                                                                                                 (integer?
                                                                                                                  j7353
                                                                                                                  k7354
                                                                                                                  g7352)))
                                                                                                         (f7355
                                                                                                          x7918
                                                                                                          x7917))))
                                                                                               (integer?
                                                                                                j7353
                                                                                                k7354
                                                                                                x7916))))
                                                                                     g7915))))
                                                                         g7914))
                                                                     xj7349
                                                                     xk7350
                                                                     f)))
                                                            g7913)))
                                                       (x7909 (input))
                                                       (x7908 (input)))
                                                (x7910 x7909 x7908)))
                                             (g7907
                                              (letrec ((x7924
                                                        (letrec ((xj7360
                                                                  (letrec ((x7925
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x7925)))
                                                                 (xk7361
                                                                  (letrec ((x7926
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x7926))))
                                                          (letrec ((g7927
                                                                    ((lambda (j7363
                                                                              k7364
                                                                              f7365)
                                                                       (letrec ((g7928
                                                                                 (lambda (g7362)
                                                                                   (letrec ((g7929
                                                                                             (letrec ((x7932
                                                                                                       (letrec ((x7933
                                                                                                                 (>=/c
                                                                                                                  0)))
                                                                                                         (and/c
                                                                                                          integer?
                                                                                                          x7933)))
                                                                                                      (x7930
                                                                                                       (letrec ((x7931
                                                                                                                 (integer?
                                                                                                                  j7363
                                                                                                                  k7364
                                                                                                                  g7362)))
                                                                                                         (f7365
                                                                                                          x7931))))
                                                                                               (x7932
                                                                                                j7363
                                                                                                k7364
                                                                                                x7930))))
                                                                                     g7929))))
                                                                         g7928))
                                                                     xj7360
                                                                     xk7361
                                                                     main)))
                                                            g7927)))
                                                       (x7923 (input)))
                                                (x7924 x7923))))
                                      g7907))))
                          g7379))))
              g7377)))
    g7376))
