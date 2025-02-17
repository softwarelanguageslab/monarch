(letrec ((any? (lambda (v) (letrec ((g7360 #t)) g7360)))
         (meta (lambda (v) (letrec ((g7361 v)) g7361)))
         (member
          (lambda (v lst)
            (letrec ((g7362
                      (letrec ((g7363
                                (letrec ((x-e7364 lst))
                                  (match
                                   x-e7364
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7365 (eq? v v1)))
                                       (if x-cnd7365 #t (member v vs)))))))))
                        g7363)))
              g7362)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7366 (lambda (v) (letrec ((g7367 v)) g7367)))) g7366)))
         (nonzero?
          (lambda (v)
            (letrec ((g7368 (letrec ((x7369 (= v 0))) (not x7369)))) g7368))))
  (letrec ((g7370
            (letrec ((g7371
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7372 '())
                                 (g7373
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7374
                                                        (lambda (k j lst)
                                                          (letrec ((g7375
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7376
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7376))
                                                                     lst)))
                                                            g7375))))
                                                g7374)))
                                           (real?/c
                                            (lambda (g7259 g7260 g7261)
                                              (letrec ((g7377
                                                        (letrec ((x-cnd7378
                                                                  (real?
                                                                   g7261)))
                                                          (if x-cnd7378
                                                            g7261
                                                            (blame
                                                             g7259
                                                             'real?)))))
                                                g7377)))
                                           (boolean?/c
                                            (lambda (g7262 g7263 g7264)
                                              (letrec ((g7379
                                                        (letrec ((x-cnd7380
                                                                  (boolean?
                                                                   g7264)))
                                                          (if x-cnd7380
                                                            g7264
                                                            (blame
                                                             g7262
                                                             'boolean?)))))
                                                g7379)))
                                           (number?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7381
                                                        (letrec ((x-cnd7382
                                                                  (number?
                                                                   g7267)))
                                                          (if x-cnd7382
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'number?)))))
                                                g7381)))
                                           (any/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7383
                                                        (letrec ((x-cnd7384
                                                                  ((lambda (v)
                                                                     (letrec ((g7385
                                                                               #t))
                                                                       g7385))
                                                                   g7270)))
                                                          (if x-cnd7384
                                                            g7270
                                                            (blame
                                                             g7268
                                                             '(lambda (v)
                                                                #t))))))
                                                g7383)))
                                           (any?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7386
                                                        (letrec ((x-cnd7387
                                                                  ((lambda (v)
                                                                     (letrec ((g7388
                                                                               #t))
                                                                       g7388))
                                                                   g7273)))
                                                          (if x-cnd7387
                                                            g7273
                                                            (blame
                                                             g7271
                                                             '(lambda (v)
                                                                #t))))))
                                                g7386)))
                                           (cons?/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7389
                                                        (letrec ((x-cnd7390
                                                                  (pair?
                                                                   g7276)))
                                                          (if x-cnd7390
                                                            g7276
                                                            (blame
                                                             g7274
                                                             'pair?)))))
                                                g7389)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7391
                                                        (letrec ((x-cnd7392
                                                                  (pair?
                                                                   g7279)))
                                                          (if x-cnd7392
                                                            g7279
                                                            (blame
                                                             g7277
                                                             'pair?)))))
                                                g7391)))
                                           (integer?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7393
                                                        (letrec ((x-cnd7394
                                                                  (integer?
                                                                   g7282)))
                                                          (if x-cnd7394
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'integer?)))))
                                                g7393)))
                                           (symbol?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7395
                                                        (letrec ((x-cnd7396
                                                                  (symbol?
                                                                   g7285)))
                                                          (if x-cnd7396
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'symbol?)))))
                                                g7395)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7397
                                                        (lambda (k j v)
                                                          (letrec ((g7398
                                                                    (letrec ((x-cnd7399
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7399
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7398))))
                                                g7397)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7400
                                                        (lambda (k j v)
                                                          (letrec ((g7401
                                                                    (letrec ((x-cnd7402
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7402
                                                                        '()
                                                                        (letrec ((x7406
                                                                                  (letrec ((x7407
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7407)))
                                                                                 (x7403
                                                                                  (letrec ((x7405
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7404
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7405
                                                                                     k
                                                                                     j
                                                                                     x7404))))
                                                                          (orig-cons
                                                                           x7406
                                                                           x7403))))))
                                                            g7401))))
                                                g7400)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7408 #t)) g7408)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7409
                                                        (letrec ((x7410
                                                                  (= v 0)))
                                                          (not x7410))))
                                                g7409)))
                                           (nonzero?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7411
                                                        (letrec ((x-cnd7412
                                                                  ((lambda (v)
                                                                     (letrec ((g7413
                                                                               (letrec ((x7414
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7414))))
                                                                       g7413))
                                                                   g7288)))
                                                          (if x-cnd7412
                                                            g7288
                                                            (blame
                                                             g7286
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7411)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7415 v)) g7415)))
                                           (+
                                            (letrec ((xj7289 'server)
                                                     (xk7290 'client))
                                              (letrec ((g7416
                                                        ((lambda (j7293
                                                                  k7294
                                                                  f7295)
                                                           (letrec ((g7418
                                                                     (lambda (g7291
                                                                              g7292)
                                                                       (letrec ((g7419
                                                                                 (letrec ((x7420
                                                                                           (letrec ((x7422
                                                                                                     (number?/c
                                                                                                      j7293
                                                                                                      k7294
                                                                                                      g7291))
                                                                                                    (x7421
                                                                                                     (number?/c
                                                                                                      j7293
                                                                                                      k7294
                                                                                                      g7292)))
                                                                                             (f7295
                                                                                              x7422
                                                                                              x7421))))
                                                                                   (number?/c
                                                                                    j7293
                                                                                    k7294
                                                                                    x7420))))
                                                                         g7419))))
                                                             g7418))
                                                         xj7289
                                                         xk7290
                                                         (lambda (a b)
                                                           (letrec ((g7417
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7417)))))
                                                g7416)))
                                           (-
                                            (letrec ((xj7296 'server)
                                                     (xk7297 'client))
                                              (letrec ((g7423
                                                        ((lambda (j7300
                                                                  k7301
                                                                  f7302)
                                                           (letrec ((g7425
                                                                     (lambda (g7298
                                                                              g7299)
                                                                       (letrec ((g7426
                                                                                 (letrec ((x7427
                                                                                           (letrec ((x7429
                                                                                                     (number?/c
                                                                                                      j7300
                                                                                                      k7301
                                                                                                      g7298))
                                                                                                    (x7428
                                                                                                     (number?/c
                                                                                                      j7300
                                                                                                      k7301
                                                                                                      g7299)))
                                                                                             (f7302
                                                                                              x7429
                                                                                              x7428))))
                                                                                   (number?/c
                                                                                    j7300
                                                                                    k7301
                                                                                    x7427))))
                                                                         g7426))))
                                                             g7425))
                                                         xj7296
                                                         xk7297
                                                         (lambda (a b)
                                                           (letrec ((g7424
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7424)))))
                                                g7423)))
                                           (*
                                            (letrec ((xj7303 'server)
                                                     (xk7304 'client))
                                              (letrec ((g7430
                                                        ((lambda (j7307
                                                                  k7308
                                                                  f7309)
                                                           (letrec ((g7432
                                                                     (lambda (g7305
                                                                              g7306)
                                                                       (letrec ((g7433
                                                                                 (letrec ((x7434
                                                                                           (letrec ((x7436
                                                                                                     (number?/c
                                                                                                      j7307
                                                                                                      k7308
                                                                                                      g7305))
                                                                                                    (x7435
                                                                                                     (number?/c
                                                                                                      j7307
                                                                                                      k7308
                                                                                                      g7306)))
                                                                                             (f7309
                                                                                              x7436
                                                                                              x7435))))
                                                                                   (number?/c
                                                                                    j7307
                                                                                    k7308
                                                                                    x7434))))
                                                                         g7433))))
                                                             g7432))
                                                         xj7303
                                                         xk7304
                                                         (lambda (a b)
                                                           (letrec ((g7431
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7431)))))
                                                g7430)))
                                           (/
                                            (letrec ((xj7310 'server)
                                                     (xk7311 'client))
                                              (letrec ((g7437
                                                        ((lambda (j7314
                                                                  k7315
                                                                  f7316)
                                                           (letrec ((g7439
                                                                     (lambda (g7312
                                                                              g7313)
                                                                       (letrec ((g7440
                                                                                 (letrec ((x7441
                                                                                           (letrec ((x7443
                                                                                                     (number?/c
                                                                                                      j7314
                                                                                                      k7315
                                                                                                      g7312))
                                                                                                    (x7442
                                                                                                     (number?/c
                                                                                                      j7314
                                                                                                      k7315
                                                                                                      g7313)))
                                                                                             (f7316
                                                                                              x7443
                                                                                              x7442))))
                                                                                   (number?/c
                                                                                    j7314
                                                                                    k7315
                                                                                    x7441))))
                                                                         g7440))))
                                                             g7439))
                                                         xj7310
                                                         xk7311
                                                         (lambda (a b)
                                                           (letrec ((g7438
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7438)))))
                                                g7437)))
                                           (car
                                            (letrec ((xj7317 'server)
                                                     (xk7318 'client))
                                              (letrec ((g7444
                                                        ((lambda (j7320
                                                                  k7321
                                                                  f7322)
                                                           (letrec ((g7446
                                                                     (lambda (g7319)
                                                                       (letrec ((g7447
                                                                                 (letrec ((x7448
                                                                                           (letrec ((x7449
                                                                                                     (pair?/c
                                                                                                      j7320
                                                                                                      k7321
                                                                                                      g7319)))
                                                                                             (f7322
                                                                                              x7449))))
                                                                                   (any/c
                                                                                    j7320
                                                                                    k7321
                                                                                    x7448))))
                                                                         g7447))))
                                                             g7446))
                                                         xj7317
                                                         xk7318
                                                         (lambda (p)
                                                           (letrec ((g7445
                                                                     (orig-car
                                                                      p)))
                                                             g7445)))))
                                                g7444)))
                                           (cdr
                                            (letrec ((xj7323 'server)
                                                     (xk7324 'client))
                                              (letrec ((g7450
                                                        ((lambda (j7326
                                                                  k7327
                                                                  f7328)
                                                           (letrec ((g7452
                                                                     (lambda (g7325)
                                                                       (letrec ((g7453
                                                                                 (letrec ((x7454
                                                                                           (letrec ((x7455
                                                                                                     (pair?/c
                                                                                                      j7326
                                                                                                      k7327
                                                                                                      g7325)))
                                                                                             (f7328
                                                                                              x7455))))
                                                                                   (any/c
                                                                                    j7326
                                                                                    k7327
                                                                                    x7454))))
                                                                         g7453))))
                                                             g7452))
                                                         xj7323
                                                         xk7324
                                                         (lambda (p)
                                                           (letrec ((g7451
                                                                     (orig-cdr
                                                                      p)))
                                                             g7451)))))
                                                g7450)))
                                           (cons
                                            (letrec ((xj7329 'server)
                                                     (xk7330 'client))
                                              (letrec ((g7456
                                                        ((lambda (j7333
                                                                  k7334
                                                                  f7335)
                                                           (letrec ((g7458
                                                                     (lambda (g7331
                                                                              g7332)
                                                                       (letrec ((g7459
                                                                                 (letrec ((x7460
                                                                                           (letrec ((x7462
                                                                                                     (any/c
                                                                                                      j7333
                                                                                                      k7334
                                                                                                      g7331))
                                                                                                    (x7461
                                                                                                     (any/c
                                                                                                      j7333
                                                                                                      k7334
                                                                                                      g7332)))
                                                                                             (f7335
                                                                                              x7462
                                                                                              x7461))))
                                                                                   (pair?/c
                                                                                    j7333
                                                                                    k7334
                                                                                    x7460))))
                                                                         g7459))))
                                                             g7458))
                                                         xj7329
                                                         xk7330
                                                         (lambda (a b)
                                                           (letrec ((g7457
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7457)))))
                                                g7456)))
                                           (vector-ref
                                            (letrec ((xj7336 'server)
                                                     (xk7337 'client))
                                              (letrec ((g7463
                                                        ((lambda (j7339
                                                                  k7340
                                                                  f7341)
                                                           (letrec ((g7465
                                                                     (lambda (g7338)
                                                                       (letrec ((g7466
                                                                                 (letrec ((x7467
                                                                                           (letrec ((x7468
                                                                                                     (vector?/c
                                                                                                      j7339
                                                                                                      k7340
                                                                                                      g7338)))
                                                                                             (f7341
                                                                                              x7468))))
                                                                                   (integer?/c
                                                                                    j7339
                                                                                    k7340
                                                                                    x7467))))
                                                                         g7466))))
                                                             g7465))
                                                         xj7336
                                                         xk7337
                                                         (lambda (v i)
                                                           (letrec ((g7464
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7464)))))
                                                g7463)))
                                           (vector-set!
                                            (letrec ((xj7342 'server)
                                                     (xk7343 'client))
                                              (letrec ((g7469
                                                        ((lambda (j7346
                                                                  k7347
                                                                  f7348)
                                                           (letrec ((g7471
                                                                     (lambda (g7344
                                                                              g7345)
                                                                       (letrec ((g7472
                                                                                 (letrec ((x7473
                                                                                           (letrec ((x7475
                                                                                                     (vector?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7344))
                                                                                                    (x7474
                                                                                                     (integer?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7345)))
                                                                                             (f7348
                                                                                              x7475
                                                                                              x7474))))
                                                                                   (any/c
                                                                                    j7346
                                                                                    k7347
                                                                                    x7473))))
                                                                         g7472))))
                                                             g7471))
                                                         xj7342
                                                         xk7343
                                                         (lambda (vec i v)
                                                           (letrec ((g7470
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7470)))))
                                                g7469)))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7476
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7476)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7477
                                                        (letrec ((x7478
                                                                  (letrec ((x7479
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7479))))
                                                          (cdr x7478))))
                                                g7477)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7480
                                                        (letrec ((x7483
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7483)))
                                                       (g7481
                                                        (letrec ((x7484
                                                                  (list? l)))
                                                          (assert x7484)))
                                                       (g7482
                                                        (letrec ((x-cnd7485
                                                                  (null? l)))
                                                          (if x-cnd7485
                                                            '()
                                                            (letrec ((x7488
                                                                      (letrec ((x7489
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7489)))
                                                                     (x7486
                                                                      (letrec ((x7487
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7487))))
                                                              (cons
                                                               x7488
                                                               x7486))))))
                                                g7482)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7490
                                                        (letrec ((x7491
                                                                  (car x)))
                                                          (cdr x7491))))
                                                g7490)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7492
                                                        (letrec ((x7493
                                                                  (letrec ((x7494
                                                                            (letrec ((x7495
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7495))))
                                                                    (cdr
                                                                     x7494))))
                                                          (car x7493))))
                                                g7492)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7496
                                                        (letrec ((x7497
                                                                  (letrec ((x7498
                                                                            (letrec ((x7499
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7499))))
                                                                    (car
                                                                     x7498))))
                                                          (cdr x7497))))
                                                g7496)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7500
                                                        (letrec ((x7503
                                                                  (string?
                                                                   filename)))
                                                          (assert x7503)))
                                                       (g7501
                                                        (letrec ((x7504
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7504)))
                                                       (g7502
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7505
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7506 res))
                                                            g7506))))
                                                g7502)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7507
                                                        (letrec ((x7508
                                                                  (letrec ((x7509
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7509))))
                                                          (car x7508))))
                                                g7507)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7510
                                                        (letrec ((x7511
                                                                  (letrec ((x7512
                                                                            (letrec ((x7513
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7513))))
                                                                    (car
                                                                     x7512))))
                                                          (cdr x7511))))
                                                g7510)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7514
                                                        (letrec ((x7516
                                                                  (list? l)))
                                                          (assert x7516)))
                                                       (g7515
                                                        (letrec ((x-cnd7517
                                                                  (null? l)))
                                                          (if x-cnd7517
                                                            #f
                                                            (letrec ((x-cnd7518
                                                                      (letrec ((x7519
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7519
                                                                         k))))
                                                              (if x-cnd7518
                                                                (car l)
                                                                (letrec ((x7520
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7520))))))))
                                                g7515)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7521
                                                        (letrec ((x7522
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7522))))
                                                g7521)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7523
                                                        (letrec ((x7525
                                                                  (list? l)))
                                                          (assert x7525)))
                                                       (g7524
                                                        (letrec ((x-cnd7526
                                                                  (null? l)))
                                                          (if x-cnd7526
                                                            ""
                                                            (letrec ((x7529
                                                                      (letrec ((x7530
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7530)))
                                                                     (x7527
                                                                      (letrec ((x7528
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7528))))
                                                              (string-append
                                                               x7529
                                                               x7527))))))
                                                g7524)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7531
                                                        (letrec ((x7534
                                                                  (char? c1)))
                                                          (assert x7534)))
                                                       (g7532
                                                        (letrec ((x7535
                                                                  (char? c2)))
                                                          (assert x7535)))
                                                       (g7533
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7536
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7536))))
                                                g7533)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7537
                                                        (letrec ((x7538
                                                                  (letrec ((x7539
                                                                            (letrec ((x7540
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7540))))
                                                                    (cdr
                                                                     x7539))))
                                                          (cdr x7538))))
                                                g7537)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7541
                                                        (letrec ((x7544
                                                                  (list? l)))
                                                          (assert x7544)))
                                                       (g7542
                                                        (letrec ((x7545
                                                                  (number?)))
                                                          (assert x7545)))
                                                       (g7543
                                                        (letrec ((x-cnd7546
                                                                  (zero? k)))
                                                          (if x-cnd7546
                                                            x
                                                            (letrec ((x7548
                                                                      (cdr x))
                                                                     (x7547
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7548
                                                               x7547))))))
                                                g7543)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7549 '())) g7549)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7550
                                                        (letrec ((x-cnd7551
                                                                  (letrec ((x7552
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7552))))
                                                          (if x-cnd7551
                                                            (letrec ((x7553
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7553))
                                                            #f))))
                                                g7550)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7554
                                                        (letrec ((x7556
                                                                  (number? x)))
                                                          (assert x7556)))
                                                       (g7555
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7557
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7558
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7558)))))
                                                            g7557))))
                                                g7555)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7559
                                                        (letrec ((val7244
                                                                  (letrec ((x7560
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7560
                                                                     9))))
                                                          (letrec ((g7561
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7562
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7562
                                                                                   10))))
                                                                        (letrec ((g7563
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7564
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7564
                                                                                       32)))))
                                                                          g7563)))))
                                                            g7561))))
                                                g7559)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7565
                                                        (letrec ((x7566
                                                                  (letrec ((x7567
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7567))))
                                                          (cdr x7566))))
                                                g7565)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7568
                                                        (letrec ((x7570
                                                                  (number? x)))
                                                          (assert x7570)))
                                                       (g7569 (> x 0)))
                                                g7569)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7571 #f)) g7571)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7572
                                                        (letrec ((x7573
                                                                  (cdr x)))
                                                          (cdr x7573))))
                                                g7572)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7574
                                                        (letrec ((x7576
                                                                  (number? x)))
                                                          (assert x7576)))
                                                       (g7575
                                                        (letrec ((x-cnd7577
                                                                  (< x 0)))
                                                          (if x-cnd7577
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7575)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7578
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7579
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7580
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7580
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7581
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7582
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7582
                                                                                                  (letrec ((x-cnd7583
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7583
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7584
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7585
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7585
                                                                                                                (letrec ((x-cnd7586
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7586
                                                                                                                    (letrec ((x-cnd7587
                                                                                                                              (letrec ((x7589
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7588
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7589
                                                                                                                                 x7588))))
                                                                                                                      (if x-cnd7587
                                                                                                                        (letrec ((x7591
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7590
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7591
                                                                                                                           x7590))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7592
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7593
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7593
                                                                                                                    (letrec ((x-cnd7594
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7594
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7595
                                                                                                                                    (letrec ((x-cnd7596
                                                                                                                                              (letrec ((x7597
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7597
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7596
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7598
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7599
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7600
                                                                                                                                                                                      (letrec ((x7602
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7601
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7602
                                                                                                                                                                                         x7601))))
                                                                                                                                                                              (if x-cnd7600
                                                                                                                                                                                (letrec ((x7603
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7603))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7599))))
                                                                                                                                                      g7598))))
                                                                                                                                          (letrec ((g7604
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7604))
                                                                                                                                        #f))))
                                                                                                                            g7595))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7592)))))
                                                                                        g7584)))))
                                                                          g7581)))))
                                                            g7579))))
                                                g7578)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7605
                                                        (letrec ((x7606
                                                                  (letrec ((x7607
                                                                            (letrec ((x7608
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7608))))
                                                                    (car
                                                                     x7607))))
                                                          (cdr x7606))))
                                                g7605)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7609
                                                        (letrec ((x7610
                                                                  (letrec ((x7611
                                                                            (letrec ((x7612
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7612))))
                                                                    (car
                                                                     x7611))))
                                                          (car x7610))))
                                                g7609)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7613 (eq? x y)))
                                                g7613)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7614
                                                        (letrec ((x7616
                                                                  (number? x)))
                                                          (assert x7616)))
                                                       (g7615
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7617
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7618
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7618)))))
                                                            g7617))))
                                                g7615)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7619
                                                        (letrec ((x7622
                                                                  (string?
                                                                   filename)))
                                                          (assert x7622)))
                                                       (g7620
                                                        (letrec ((x7623
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7623)))
                                                       (g7621
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7624
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7625 res))
                                                            g7625))))
                                                g7621)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7626 (cons x '())))
                                                g7626)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7627
                                                        (letrec ((x7630
                                                                  (char? c1)))
                                                          (assert x7630)))
                                                       (g7628
                                                        (letrec ((x7631
                                                                  (char? c2)))
                                                          (assert x7631)))
                                                       (g7629
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7632
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7632))))
                                                g7629)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7633
                                                        (letrec ((x7634
                                                                  (letrec ((x7635
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7635))))
                                                          (cdr x7634))))
                                                g7633)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7636
                                                        (letrec ((x7637
                                                                  (letrec ((x7638
                                                                            (letrec ((x7639
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7639))))
                                                                    (car
                                                                     x7638))))
                                                          (cdr x7637))))
                                                g7636)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7640
                                                        (letrec ((x7641
                                                                  (letrec ((x7642
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7642))))
                                                          (car x7641))))
                                                g7640)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7643
                                                        (letrec ((x7644
                                                                  (letrec ((x7645
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7645))))
                                                          (car x7644))))
                                                g7643)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7646
                                                        (letrec ((x7649
                                                                  (char? c1)))
                                                          (assert x7649)))
                                                       (g7647
                                                        (letrec ((x7650
                                                                  (char? c2)))
                                                          (assert x7650)))
                                                       (g7648
                                                        (letrec ((x7651
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7651))))
                                                g7648)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7652
                                                        (letrec ((x7653
                                                                  (letrec ((x7654
                                                                            (letrec ((x7655
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7655))))
                                                                    (car
                                                                     x7654))))
                                                          (car x7653))))
                                                g7652)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7656
                                                        (letrec ((x7658
                                                                  (number? x)))
                                                          (assert x7658)))
                                                       (g7657 (< x 0)))
                                                g7657)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7659 (memq e l)))
                                                g7659)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7660
                                                        (letrec ((x7661
                                                                  (letrec ((x7662
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7662))))
                                                          (car x7661))))
                                                g7660)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7663 '())) g7663)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7664
                                                        (letrec ((x7666
                                                                  (list? l)))
                                                          (assert x7666)))
                                                       (g7665
                                                        (letrec ((x-cnd7667
                                                                  (null? l)))
                                                          (if x-cnd7667
                                                            '()
                                                            (letrec ((x7670
                                                                      (letrec ((x7671
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7671)))
                                                                     (x7668
                                                                      (letrec ((x7669
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7669))))
                                                              (append
                                                               x7670
                                                               x7668))))))
                                                g7665)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7672
                                                        (letrec ((x7673
                                                                  (letrec ((x7674
                                                                            (letrec ((x7675
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7675))))
                                                                    (car
                                                                     x7674))))
                                                          (car x7673))))
                                                g7672)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7676
                                                        (letrec ((x7677
                                                                  (letrec ((x7678
                                                                            (letrec ((x7679
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7679))))
                                                                    (cdr
                                                                     x7678))))
                                                          (cdr x7677))))
                                                g7676)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7680
                                                        (letrec ((x7682
                                                                  (number? x)))
                                                          (assert x7682)))
                                                       (g7681
                                                        (letrec ((x7683
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7683))))
                                                g7681)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7684
                                                        (letrec ((x7685
                                                                  (letrec ((x7686
                                                                            (letrec ((x7687
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7687))))
                                                                    (car
                                                                     x7686))))
                                                          (car x7685))))
                                                g7684)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7688
                                                        (letrec ((x7691
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7691)))
                                                       (g7689
                                                        (letrec ((x7692
                                                                  (list?
                                                                   args)))
                                                          (assert x7692)))
                                                       (g7690
                                                        (letrec ((x-cnd7693
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7693
                                                            (letrec ((g7694
                                                                      (proc)))
                                                              g7694)
                                                            (letrec ((x-cnd7695
                                                                      (letrec ((x7696
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7696))))
                                                              (if x-cnd7695
                                                                (letrec ((g7697
                                                                          (letrec ((x7698
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7698))))
                                                                  g7697)
                                                                (letrec ((x-cnd7699
                                                                          (letrec ((x7700
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7700))))
                                                                  (if x-cnd7699
                                                                    (letrec ((g7701
                                                                              (letrec ((x7703
                                                                                        (car
                                                                                         args))
                                                                                       (x7702
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7703
                                                                                 x7702))))
                                                                      g7701)
                                                                    (letrec ((x-cnd7704
                                                                              (letrec ((x7705
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7705))))
                                                                      (if x-cnd7704
                                                                        (letrec ((g7706
                                                                                  (letrec ((x7709
                                                                                            (car
                                                                                             args))
                                                                                           (x7708
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7707
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7709
                                                                                     x7708
                                                                                     x7707))))
                                                                          g7706)
                                                                        (letrec ((x-cnd7710
                                                                                  (letrec ((x7711
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7711))))
                                                                          (if x-cnd7710
                                                                            (letrec ((g7712
                                                                                      (letrec ((x7716
                                                                                                (car
                                                                                                 args))
                                                                                               (x7715
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7714
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7713
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7716
                                                                                         x7715
                                                                                         x7714
                                                                                         x7713))))
                                                                              g7712)
                                                                            (letrec ((x-cnd7717
                                                                                      (letrec ((x7718
                                                                                                (letrec ((x7719
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7719))))
                                                                                        (null?
                                                                                         x7718))))
                                                                              (if x-cnd7717
                                                                                (letrec ((g7720
                                                                                          (letrec ((x7726
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7725
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7724
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7723
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7721
                                                                                                    (letrec ((x7722
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7722))))
                                                                                            (proc
                                                                                             x7726
                                                                                             x7725
                                                                                             x7724
                                                                                             x7723
                                                                                             x7721))))
                                                                                  g7720)
                                                                                (letrec ((x-cnd7727
                                                                                          (letrec ((x7728
                                                                                                    (letrec ((x7729
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7729))))
                                                                                            (null?
                                                                                             x7728))))
                                                                                  (if x-cnd7727
                                                                                    (letrec ((g7730
                                                                                              (letrec ((x7738
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7737
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7736
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7735
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7733
                                                                                                        (letrec ((x7734
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7734)))
                                                                                                       (x7731
                                                                                                        (letrec ((x7732
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7732))))
                                                                                                (proc
                                                                                                 x7738
                                                                                                 x7737
                                                                                                 x7736
                                                                                                 x7735
                                                                                                 x7733
                                                                                                 x7731))))
                                                                                      g7730)
                                                                                    (letrec ((x-cnd7739
                                                                                              (letrec ((x7740
                                                                                                        (letrec ((x7741
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7741))))
                                                                                                (null?
                                                                                                 x7740))))
                                                                                      (if x-cnd7739
                                                                                        (letrec ((g7742
                                                                                                  (letrec ((x7752
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7751
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7750
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7749
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7747
                                                                                                            (letrec ((x7748
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7748)))
                                                                                                           (x7745
                                                                                                            (letrec ((x7746
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7746)))
                                                                                                           (x7743
                                                                                                            (letrec ((x7744
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7744))))
                                                                                                    (proc
                                                                                                     x7752
                                                                                                     x7751
                                                                                                     x7750
                                                                                                     x7749
                                                                                                     x7747
                                                                                                     x7745
                                                                                                     x7743))))
                                                                                          g7742)
                                                                                        (letrec ((g7753
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7753)))))))))))))))))))
                                                g7690)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7754
                                                        (letrec ((x7756
                                                                  (list? l)))
                                                          (assert x7756)))
                                                       (g7755
                                                        (letrec ((x-cnd7757
                                                                  (null? l)))
                                                          (if x-cnd7757
                                                            #f
                                                            (letrec ((x-cnd7758
                                                                      (letrec ((x7759
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7759
                                                                         e))))
                                                              (if x-cnd7758
                                                                l
                                                                (letrec ((x7760
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7760))))))))
                                                g7755)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7761
                                                        (letrec ((x7762
                                                                  (letrec ((x7763
                                                                            (letrec ((x7764
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7764))))
                                                                    (cdr
                                                                     x7763))))
                                                          (cdr x7762))))
                                                g7761)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7765
                                                        (letrec ((x7766
                                                                  (letrec ((x7767
                                                                            (letrec ((x7768
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7768))))
                                                                    (cdr
                                                                     x7767))))
                                                          (car x7766))))
                                                g7765)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7769 (random 42)))
                                                g7769)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7770
                                                        (letrec ((x7772
                                                                  (number? x)))
                                                          (assert x7772)))
                                                       (g7771 (= x 0)))
                                                g7771)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7773
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7774
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7774))))
                                                g7773)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7775
                                                        (letrec ((x7776
                                                                  (cdr x)))
                                                          (car x7776))))
                                                g7775)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7777
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd7778
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7778
                                                                      (letrec ((x7779
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7779))
                                                                      #f))))
                                                          (letrec ((g7780
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g7780))))
                                                g7777)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7781
                                                        (letrec ((x7782
                                                                  (letrec ((x7783
                                                                            (letrec ((x7784
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7784))))
                                                                    (cdr
                                                                     x7783))))
                                                          (cdr x7782))))
                                                g7781)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7785
                                                        (letrec ((x-cnd7786
                                                                  (letrec ((x7787
                                                                            #\0))
                                                                    (char<=?
                                                                     x7787
                                                                     c))))
                                                          (if x-cnd7786
                                                            (letrec ((x7788
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7788))
                                                            #f))))
                                                g7785)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7789
                                                        (letrec ((x7791
                                                                  (list? l)))
                                                          (assert x7791)))
                                                       (g7790
                                                        (letrec ((x-cnd7792
                                                                  (null? l)))
                                                          (if x-cnd7792
                                                            #f
                                                            (letrec ((x-cnd7793
                                                                      (letrec ((x7794
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7794
                                                                         k))))
                                                              (if x-cnd7793
                                                                (car l)
                                                                (letrec ((x7795
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7795))))))))
                                                g7790)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7796 (if x #f #t)))
                                                g7796)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7797 (append l1 l2)))
                                                g7797)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7798
                                                        (letrec ((x7800
                                                                  (list? l)))
                                                          (assert x7800)))
                                                       (g7799
                                                        (letrec ((x-cnd7801
                                                                  (null? l)))
                                                          (if x-cnd7801
                                                            #f
                                                            (letrec ((x-cnd7802
                                                                      (letrec ((x7803
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7803
                                                                         e))))
                                                              (if x-cnd7802
                                                                l
                                                                (letrec ((x7804
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7804))))))))
                                                g7799)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7805
                                                        (letrec ((x7806
                                                                  (letrec ((x7807
                                                                            (letrec ((x7808
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7808))))
                                                                    (cdr
                                                                     x7807))))
                                                          (car x7806))))
                                                g7805)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7809
                                                        (letrec ((x7811
                                                                  (list? l)))
                                                          (assert x7811)))
                                                       (g7810
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7812
                                                                              (letrec ((x-cnd7813
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7813
                                                                                  0
                                                                                  (letrec ((x7814
                                                                                            (letrec ((x7815
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7815))))
                                                                                    (+
                                                                                     1
                                                                                     x7814))))))
                                                                      g7812))))
                                                          (letrec ((g7816
                                                                    (rec l)))
                                                            g7816))))
                                                g7810)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7817
                                                        (letrec ((x7820
                                                                  (char? c1)))
                                                          (assert x7820)))
                                                       (g7818
                                                        (letrec ((x7821
                                                                  (char? c2)))
                                                          (assert x7821)))
                                                       (g7819
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7822
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7822))))
                                                g7819)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7823
                                                        (letrec ((x7824
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7824))))
                                                g7823)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7825
                                                        (letrec ((x7826
                                                                  (letrec ((x7827
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7827))))
                                                          (cdr x7826))))
                                                g7825)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7828
                                                        (letrec ((x7830
                                                                  (list? l)))
                                                          (assert x7830)))
                                                       (g7829
                                                        (letrec ((x-cnd7831
                                                                  (null? l)))
                                                          (if x-cnd7831
                                                            #f
                                                            (letrec ((x-cnd7832
                                                                      (letrec ((x7833
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7833
                                                                         k))))
                                                              (if x-cnd7832
                                                                (car l)
                                                                (letrec ((x7834
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7834))))))))
                                                g7829)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7835
                                                        (letrec ((x7836
                                                                  (car x)))
                                                          (car x7836))))
                                                g7835)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7837
                                                        (letrec ((x7840
                                                                  (char? c1)))
                                                          (assert x7840)))
                                                       (g7838
                                                        (letrec ((x7841
                                                                  (char? c2)))
                                                          (assert x7841)))
                                                       (g7839
                                                        (letrec ((x7842
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7842))))
                                                g7839)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7843
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7844
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7844))))
                                                g7843)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7845
                                                        (letrec ((x7848
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7848)))
                                                       (g7846
                                                        (letrec ((x7849
                                                                  (list? l)))
                                                          (assert x7849)))
                                                       (g7847
                                                        (letrec ((x-cnd7850
                                                                  (null? l)))
                                                          (if x-cnd7850
                                                            #t
                                                            (letrec ((x-cnd7851
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7851
                                                                (letrec ((g7852
                                                                          (letrec ((x7854
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7854)))
                                                                         (g7853
                                                                          (letrec ((x7855
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7855))))
                                                                  g7853)
                                                                '()))))))
                                                g7847)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7856
                                                        (letrec ((x7858
                                                                  (number? x)))
                                                          (assert x7858)))
                                                       (g7857
                                                        (letrec ((x-cnd7859
                                                                  (< x 0)))
                                                          (if x-cnd7859
                                                            (- 0 x)
                                                            x))))
                                                g7857)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7860
                                                        (letrec ((x7863
                                                                  (char? c1)))
                                                          (assert x7863)))
                                                       (g7861
                                                        (letrec ((x7864
                                                                  (char? c2)))
                                                          (assert x7864)))
                                                       (g7862
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7865
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7865))))
                                                g7862)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7866
                                                        (letrec ((x7867
                                                                  (letrec ((x7868
                                                                            (letrec ((x7869
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7869))))
                                                                    (cdr
                                                                     x7868))))
                                                          (car x7867))))
                                                g7866)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7870 #f)) g7870)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7871
                                                        (letrec ((x7873
                                                                  (letrec ((x7874
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7874)))
                                                                 (x7872
                                                                  (gcd m n)))
                                                          (/ x7873 x7872))))
                                                g7871)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7875
                                                        (letrec ((x7877
                                                                  (number? x)))
                                                          (assert x7877)))
                                                       (g7876
                                                        (letrec ((x7878
                                                                  (<= x y)))
                                                          (not x7878))))
                                                g7876)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7879
                                                        (letrec ((x7883
                                                                  (list? l)))
                                                          (assert x7883)))
                                                       (g7880
                                                        (letrec ((x7884
                                                                  (number?
                                                                   index)))
                                                          (assert x7884)))
                                                       (g7881
                                                        (letrec ((x7885
                                                                  (letrec ((x7886
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7886))))
                                                          (assert x7885)))
                                                       (g7882
                                                        (letrec ((x-cnd7887
                                                                  (= index 0)))
                                                          (if x-cnd7887
                                                            (car l)
                                                            (letrec ((x7889
                                                                      (cdr l))
                                                                     (x7888
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7889
                                                               x7888))))))
                                                g7882)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7890
                                                        (letrec ((x-cnd7891
                                                                  (= b 0)))
                                                          (if x-cnd7891
                                                            a
                                                            (letrec ((x7892
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7892))))))
                                                g7890)))
                                           (foldl
                                            (lambda (f z l)
                                              (letrec ((g7893
                                                        (letrec ((x-cnd7894
                                                                  (empty? l)))
                                                          (if x-cnd7894
                                                            z
                                                            (letrec ((x7896
                                                                      (letrec ((x7897
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         z
                                                                         x7897)))
                                                                     (x7895
                                                                      (cdr l)))
                                                              (foldl
                                                               f
                                                               x7896
                                                               x7895))))))
                                                g7893)))
                                           (randpos
                                            (lambda (rand)
                                              (letrec ((g7898
                                                        (letrec ((n (rand)))
                                                          (letrec ((g7899
                                                                    (letrec ((x-cnd7900
                                                                              (>
                                                                               n
                                                                               0)))
                                                                      (if x-cnd7900
                                                                        n
                                                                        (randpos
                                                                         rand)))))
                                                            g7899))))
                                                g7898)))
                                           (mk-list
                                            (lambda (rand n)
                                              (letrec ((g7901
                                                        (letrec ((x-cnd7902
                                                                  (<= n 0)))
                                                          (if x-cnd7902
                                                            empty
                                                            (letrec ((x7905
                                                                      (randpos
                                                                       rand))
                                                                     (x7903
                                                                      (letrec ((x7904
                                                                                (-
                                                                                 n
                                                                                 1)))
                                                                        (mk-list
                                                                         rand
                                                                         x7904))))
                                                              (cons
                                                               x7905
                                                               x7903))))))
                                                g7901)))
                                           (main
                                            (lambda (rand n m)
                                              (letrec ((g7906
                                                        (letrec ((x7907
                                                                  (mk-list
                                                                   rand
                                                                   n)))
                                                          (foldl / m x7907))))
                                                g7906))))
                                    (letrec ((g7908
                                              (letrec ((x7912
                                                        (letrec ((xj7349
                                                                  (letrec ((x7913
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x7913)))
                                                                 (xk7350
                                                                  (letrec ((x7914
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x7914))))
                                                          (letrec ((g7915
                                                                    ((lambda (j7354
                                                                              k7355
                                                                              f7356)
                                                                       (letrec ((g7916
                                                                                 (lambda (g7351
                                                                                          g7352
                                                                                          g7353)
                                                                                   (letrec ((g7917
                                                                                             (letrec ((x7918
                                                                                                       (letrec ((x7921
                                                                                                                 ((lambda (j7357
                                                                                                                           k7358
                                                                                                                           f7359)
                                                                                                                    (letrec ((g7922
                                                                                                                              (lambda ()
                                                                                                                                (letrec ((g7923
                                                                                                                                          (letrec ((x7924
                                                                                                                                                    (f7359)))
                                                                                                                                            (integer?/c
                                                                                                                                             j7357
                                                                                                                                             k7358
                                                                                                                                             x7924))))
                                                                                                                                  g7923))))
                                                                                                                      g7922))
                                                                                                                  j7354
                                                                                                                  k7355
                                                                                                                  g7351))
                                                                                                                (x7920
                                                                                                                 (integer?/c
                                                                                                                  j7354
                                                                                                                  k7355
                                                                                                                  g7352))
                                                                                                                (x7919
                                                                                                                 (integer?/c
                                                                                                                  j7354
                                                                                                                  k7355
                                                                                                                  g7353)))
                                                                                                         (f7356
                                                                                                          x7921
                                                                                                          x7920
                                                                                                          x7919))))
                                                                                               (real?/c
                                                                                                j7354
                                                                                                k7355
                                                                                                x7918))))
                                                                                     g7917))))
                                                                         g7916))
                                                                     xj7349
                                                                     xk7350
                                                                     main)))
                                                            g7915)))
                                                       (x7911 (input))
                                                       (x7910 (input))
                                                       (x7909 (input)))
                                                (x7912 x7911 x7910 x7909))))
                                      g7908))))
                          g7373))))
              g7371)))
    g7370))
