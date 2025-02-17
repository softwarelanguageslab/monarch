(letrec ((any? (lambda (v) (letrec ((g7373 #t)) g7373)))
         (meta (lambda (v) (letrec ((g7374 v)) g7374)))
         (member
          (lambda (v lst)
            (letrec ((g7375
                      (letrec ((g7376
                                (letrec ((x-e7377 lst))
                                  (match
                                   x-e7377
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7378 (eq? v v1)))
                                       (if x-cnd7378 #t (member v vs)))))))))
                        g7376)))
              g7375)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7379 (lambda (v) (letrec ((g7380 v)) g7380)))) g7379)))
         (nonzero?
          (lambda (v)
            (letrec ((g7381 (letrec ((x7382 (= v 0))) (not x7382)))) g7381))))
  (letrec ((g7383
            (letrec ((g7384
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7385 '())
                                 (g7386
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7387
                                                        (lambda (k j lst)
                                                          (letrec ((g7388
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7389
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7389))
                                                                     lst)))
                                                            g7388))))
                                                g7387)))
                                           (real?/c
                                            (lambda (g7259 g7260 g7261)
                                              (letrec ((g7390
                                                        (letrec ((x-cnd7391
                                                                  (real?
                                                                   g7261)))
                                                          (if x-cnd7391
                                                            g7261
                                                            (blame
                                                             g7259
                                                             'real?)))))
                                                g7390)))
                                           (boolean?/c
                                            (lambda (g7262 g7263 g7264)
                                              (letrec ((g7392
                                                        (letrec ((x-cnd7393
                                                                  (boolean?
                                                                   g7264)))
                                                          (if x-cnd7393
                                                            g7264
                                                            (blame
                                                             g7262
                                                             'boolean?)))))
                                                g7392)))
                                           (number?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7394
                                                        (letrec ((x-cnd7395
                                                                  (number?
                                                                   g7267)))
                                                          (if x-cnd7395
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'number?)))))
                                                g7394)))
                                           (any/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7396
                                                        (letrec ((x-cnd7397
                                                                  ((lambda (v)
                                                                     (letrec ((g7398
                                                                               #t))
                                                                       g7398))
                                                                   g7270)))
                                                          (if x-cnd7397
                                                            g7270
                                                            (blame
                                                             g7268
                                                             '(lambda (v)
                                                                #t))))))
                                                g7396)))
                                           (any?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7399
                                                        (letrec ((x-cnd7400
                                                                  ((lambda (v)
                                                                     (letrec ((g7401
                                                                               #t))
                                                                       g7401))
                                                                   g7273)))
                                                          (if x-cnd7400
                                                            g7273
                                                            (blame
                                                             g7271
                                                             '(lambda (v)
                                                                #t))))))
                                                g7399)))
                                           (cons?/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7402
                                                        (letrec ((x-cnd7403
                                                                  (pair?
                                                                   g7276)))
                                                          (if x-cnd7403
                                                            g7276
                                                            (blame
                                                             g7274
                                                             'pair?)))))
                                                g7402)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7404
                                                        (letrec ((x-cnd7405
                                                                  (pair?
                                                                   g7279)))
                                                          (if x-cnd7405
                                                            g7279
                                                            (blame
                                                             g7277
                                                             'pair?)))))
                                                g7404)))
                                           (integer?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7406
                                                        (letrec ((x-cnd7407
                                                                  (integer?
                                                                   g7282)))
                                                          (if x-cnd7407
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'integer?)))))
                                                g7406)))
                                           (symbol?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7408
                                                        (letrec ((x-cnd7409
                                                                  (symbol?
                                                                   g7285)))
                                                          (if x-cnd7409
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'symbol?)))))
                                                g7408)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7410
                                                        (lambda (k j v)
                                                          (letrec ((g7411
                                                                    (letrec ((x-cnd7412
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7412
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7411))))
                                                g7410)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7413
                                                        (lambda (k j v)
                                                          (letrec ((g7414
                                                                    (letrec ((x-cnd7415
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7415
                                                                        '()
                                                                        (letrec ((x7419
                                                                                  (letrec ((x7420
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7420)))
                                                                                 (x7416
                                                                                  (letrec ((x7418
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7417
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7418
                                                                                     k
                                                                                     j
                                                                                     x7417))))
                                                                          (orig-cons
                                                                           x7419
                                                                           x7416))))))
                                                            g7414))))
                                                g7413)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7421 #t)) g7421)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7422
                                                        (letrec ((x7423
                                                                  (= v 0)))
                                                          (not x7423))))
                                                g7422)))
                                           (nonzero?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7424
                                                        (letrec ((x-cnd7425
                                                                  ((lambda (v)
                                                                     (letrec ((g7426
                                                                               (letrec ((x7427
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7427))))
                                                                       g7426))
                                                                   g7288)))
                                                          (if x-cnd7425
                                                            g7288
                                                            (blame
                                                             g7286
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7424)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7428 v)) g7428)))
                                           (+
                                            (letrec ((xj7289 'server)
                                                     (xk7290 'client))
                                              (letrec ((g7429
                                                        ((lambda (j7293
                                                                  k7294
                                                                  f7295)
                                                           (letrec ((g7431
                                                                     (lambda (g7291
                                                                              g7292)
                                                                       (letrec ((g7432
                                                                                 (letrec ((x7433
                                                                                           (letrec ((x7435
                                                                                                     (number?/c
                                                                                                      j7293
                                                                                                      k7294
                                                                                                      g7291))
                                                                                                    (x7434
                                                                                                     (number?/c
                                                                                                      j7293
                                                                                                      k7294
                                                                                                      g7292)))
                                                                                             (f7295
                                                                                              x7435
                                                                                              x7434))))
                                                                                   (number?/c
                                                                                    j7293
                                                                                    k7294
                                                                                    x7433))))
                                                                         g7432))))
                                                             g7431))
                                                         xj7289
                                                         xk7290
                                                         (lambda (a b)
                                                           (letrec ((g7430
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7430)))))
                                                g7429)))
                                           (-
                                            (letrec ((xj7296 'server)
                                                     (xk7297 'client))
                                              (letrec ((g7436
                                                        ((lambda (j7300
                                                                  k7301
                                                                  f7302)
                                                           (letrec ((g7438
                                                                     (lambda (g7298
                                                                              g7299)
                                                                       (letrec ((g7439
                                                                                 (letrec ((x7440
                                                                                           (letrec ((x7442
                                                                                                     (number?/c
                                                                                                      j7300
                                                                                                      k7301
                                                                                                      g7298))
                                                                                                    (x7441
                                                                                                     (number?/c
                                                                                                      j7300
                                                                                                      k7301
                                                                                                      g7299)))
                                                                                             (f7302
                                                                                              x7442
                                                                                              x7441))))
                                                                                   (number?/c
                                                                                    j7300
                                                                                    k7301
                                                                                    x7440))))
                                                                         g7439))))
                                                             g7438))
                                                         xj7296
                                                         xk7297
                                                         (lambda (a b)
                                                           (letrec ((g7437
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7437)))))
                                                g7436)))
                                           (*
                                            (letrec ((xj7303 'server)
                                                     (xk7304 'client))
                                              (letrec ((g7443
                                                        ((lambda (j7307
                                                                  k7308
                                                                  f7309)
                                                           (letrec ((g7445
                                                                     (lambda (g7305
                                                                              g7306)
                                                                       (letrec ((g7446
                                                                                 (letrec ((x7447
                                                                                           (letrec ((x7449
                                                                                                     (number?/c
                                                                                                      j7307
                                                                                                      k7308
                                                                                                      g7305))
                                                                                                    (x7448
                                                                                                     (number?/c
                                                                                                      j7307
                                                                                                      k7308
                                                                                                      g7306)))
                                                                                             (f7309
                                                                                              x7449
                                                                                              x7448))))
                                                                                   (number?/c
                                                                                    j7307
                                                                                    k7308
                                                                                    x7447))))
                                                                         g7446))))
                                                             g7445))
                                                         xj7303
                                                         xk7304
                                                         (lambda (a b)
                                                           (letrec ((g7444
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7444)))))
                                                g7443)))
                                           (/
                                            (letrec ((xj7310 'server)
                                                     (xk7311 'client))
                                              (letrec ((g7450
                                                        ((lambda (j7314
                                                                  k7315
                                                                  f7316)
                                                           (letrec ((g7452
                                                                     (lambda (g7312
                                                                              g7313)
                                                                       (letrec ((g7453
                                                                                 (letrec ((x7454
                                                                                           (letrec ((x7456
                                                                                                     (number?/c
                                                                                                      j7314
                                                                                                      k7315
                                                                                                      g7312))
                                                                                                    (x7455
                                                                                                     (number?/c
                                                                                                      j7314
                                                                                                      k7315
                                                                                                      g7313)))
                                                                                             (f7316
                                                                                              x7456
                                                                                              x7455))))
                                                                                   (number?/c
                                                                                    j7314
                                                                                    k7315
                                                                                    x7454))))
                                                                         g7453))))
                                                             g7452))
                                                         xj7310
                                                         xk7311
                                                         (lambda (a b)
                                                           (letrec ((g7451
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7451)))))
                                                g7450)))
                                           (car
                                            (letrec ((xj7317 'server)
                                                     (xk7318 'client))
                                              (letrec ((g7457
                                                        ((lambda (j7320
                                                                  k7321
                                                                  f7322)
                                                           (letrec ((g7459
                                                                     (lambda (g7319)
                                                                       (letrec ((g7460
                                                                                 (letrec ((x7461
                                                                                           (letrec ((x7462
                                                                                                     (pair?/c
                                                                                                      j7320
                                                                                                      k7321
                                                                                                      g7319)))
                                                                                             (f7322
                                                                                              x7462))))
                                                                                   (any/c
                                                                                    j7320
                                                                                    k7321
                                                                                    x7461))))
                                                                         g7460))))
                                                             g7459))
                                                         xj7317
                                                         xk7318
                                                         (lambda (p)
                                                           (letrec ((g7458
                                                                     (orig-car
                                                                      p)))
                                                             g7458)))))
                                                g7457)))
                                           (cdr
                                            (letrec ((xj7323 'server)
                                                     (xk7324 'client))
                                              (letrec ((g7463
                                                        ((lambda (j7326
                                                                  k7327
                                                                  f7328)
                                                           (letrec ((g7465
                                                                     (lambda (g7325)
                                                                       (letrec ((g7466
                                                                                 (letrec ((x7467
                                                                                           (letrec ((x7468
                                                                                                     (pair?/c
                                                                                                      j7326
                                                                                                      k7327
                                                                                                      g7325)))
                                                                                             (f7328
                                                                                              x7468))))
                                                                                   (any/c
                                                                                    j7326
                                                                                    k7327
                                                                                    x7467))))
                                                                         g7466))))
                                                             g7465))
                                                         xj7323
                                                         xk7324
                                                         (lambda (p)
                                                           (letrec ((g7464
                                                                     (orig-cdr
                                                                      p)))
                                                             g7464)))))
                                                g7463)))
                                           (cons
                                            (letrec ((xj7329 'server)
                                                     (xk7330 'client))
                                              (letrec ((g7469
                                                        ((lambda (j7333
                                                                  k7334
                                                                  f7335)
                                                           (letrec ((g7471
                                                                     (lambda (g7331
                                                                              g7332)
                                                                       (letrec ((g7472
                                                                                 (letrec ((x7473
                                                                                           (letrec ((x7475
                                                                                                     (any/c
                                                                                                      j7333
                                                                                                      k7334
                                                                                                      g7331))
                                                                                                    (x7474
                                                                                                     (any/c
                                                                                                      j7333
                                                                                                      k7334
                                                                                                      g7332)))
                                                                                             (f7335
                                                                                              x7475
                                                                                              x7474))))
                                                                                   (pair?/c
                                                                                    j7333
                                                                                    k7334
                                                                                    x7473))))
                                                                         g7472))))
                                                             g7471))
                                                         xj7329
                                                         xk7330
                                                         (lambda (a b)
                                                           (letrec ((g7470
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7470)))))
                                                g7469)))
                                           (vector-ref
                                            (letrec ((xj7336 'server)
                                                     (xk7337 'client))
                                              (letrec ((g7476
                                                        ((lambda (j7339
                                                                  k7340
                                                                  f7341)
                                                           (letrec ((g7478
                                                                     (lambda (g7338)
                                                                       (letrec ((g7479
                                                                                 (letrec ((x7480
                                                                                           (letrec ((x7481
                                                                                                     (vector?/c
                                                                                                      j7339
                                                                                                      k7340
                                                                                                      g7338)))
                                                                                             (f7341
                                                                                              x7481))))
                                                                                   (integer?/c
                                                                                    j7339
                                                                                    k7340
                                                                                    x7480))))
                                                                         g7479))))
                                                             g7478))
                                                         xj7336
                                                         xk7337
                                                         (lambda (v i)
                                                           (letrec ((g7477
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7477)))))
                                                g7476)))
                                           (vector-set!
                                            (letrec ((xj7342 'server)
                                                     (xk7343 'client))
                                              (letrec ((g7482
                                                        ((lambda (j7346
                                                                  k7347
                                                                  f7348)
                                                           (letrec ((g7484
                                                                     (lambda (g7344
                                                                              g7345)
                                                                       (letrec ((g7485
                                                                                 (letrec ((x7486
                                                                                           (letrec ((x7488
                                                                                                     (vector?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7344))
                                                                                                    (x7487
                                                                                                     (integer?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7345)))
                                                                                             (f7348
                                                                                              x7488
                                                                                              x7487))))
                                                                                   (any/c
                                                                                    j7346
                                                                                    k7347
                                                                                    x7486))))
                                                                         g7485))))
                                                             g7484))
                                                         xj7342
                                                         xk7343
                                                         (lambda (vec i v)
                                                           (letrec ((g7483
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7483)))))
                                                g7482)))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7489
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7489)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7490
                                                        (letrec ((x7491
                                                                  (letrec ((x7492
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7492))))
                                                          (cdr x7491))))
                                                g7490)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7493
                                                        (letrec ((x7496
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7496)))
                                                       (g7494
                                                        (letrec ((x7497
                                                                  (list? l)))
                                                          (assert x7497)))
                                                       (g7495
                                                        (letrec ((x-cnd7498
                                                                  (null? l)))
                                                          (if x-cnd7498
                                                            '()
                                                            (letrec ((x7501
                                                                      (letrec ((x7502
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7502)))
                                                                     (x7499
                                                                      (letrec ((x7500
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7500))))
                                                              (cons
                                                               x7501
                                                               x7499))))))
                                                g7495)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7503
                                                        (letrec ((x7504
                                                                  (car x)))
                                                          (cdr x7504))))
                                                g7503)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7505
                                                        (letrec ((x7506
                                                                  (letrec ((x7507
                                                                            (letrec ((x7508
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7508))))
                                                                    (cdr
                                                                     x7507))))
                                                          (car x7506))))
                                                g7505)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7509
                                                        (letrec ((x7510
                                                                  (letrec ((x7511
                                                                            (letrec ((x7512
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7512))))
                                                                    (car
                                                                     x7511))))
                                                          (cdr x7510))))
                                                g7509)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7513
                                                        (letrec ((x7516
                                                                  (string?
                                                                   filename)))
                                                          (assert x7516)))
                                                       (g7514
                                                        (letrec ((x7517
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7517)))
                                                       (g7515
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7518
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7519 res))
                                                            g7519))))
                                                g7515)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7520
                                                        (letrec ((x7521
                                                                  (letrec ((x7522
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7522))))
                                                          (car x7521))))
                                                g7520)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7523
                                                        (letrec ((x7524
                                                                  (letrec ((x7525
                                                                            (letrec ((x7526
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7526))))
                                                                    (car
                                                                     x7525))))
                                                          (cdr x7524))))
                                                g7523)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7527
                                                        (letrec ((x7529
                                                                  (list? l)))
                                                          (assert x7529)))
                                                       (g7528
                                                        (letrec ((x-cnd7530
                                                                  (null? l)))
                                                          (if x-cnd7530
                                                            #f
                                                            (letrec ((x-cnd7531
                                                                      (letrec ((x7532
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7532
                                                                         k))))
                                                              (if x-cnd7531
                                                                (car l)
                                                                (letrec ((x7533
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7533))))))))
                                                g7528)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7534
                                                        (letrec ((x7535
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7535))))
                                                g7534)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7536
                                                        (letrec ((x7538
                                                                  (list? l)))
                                                          (assert x7538)))
                                                       (g7537
                                                        (letrec ((x-cnd7539
                                                                  (null? l)))
                                                          (if x-cnd7539
                                                            ""
                                                            (letrec ((x7542
                                                                      (letrec ((x7543
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7543)))
                                                                     (x7540
                                                                      (letrec ((x7541
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7541))))
                                                              (string-append
                                                               x7542
                                                               x7540))))))
                                                g7537)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7544
                                                        (letrec ((x7547
                                                                  (char? c1)))
                                                          (assert x7547)))
                                                       (g7545
                                                        (letrec ((x7548
                                                                  (char? c2)))
                                                          (assert x7548)))
                                                       (g7546
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7549
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7549))))
                                                g7546)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7550
                                                        (letrec ((x7551
                                                                  (letrec ((x7552
                                                                            (letrec ((x7553
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7553))))
                                                                    (cdr
                                                                     x7552))))
                                                          (cdr x7551))))
                                                g7550)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7554
                                                        (letrec ((x7557
                                                                  (list? l)))
                                                          (assert x7557)))
                                                       (g7555
                                                        (letrec ((x7558
                                                                  (number?)))
                                                          (assert x7558)))
                                                       (g7556
                                                        (letrec ((x-cnd7559
                                                                  (zero? k)))
                                                          (if x-cnd7559
                                                            x
                                                            (letrec ((x7561
                                                                      (cdr x))
                                                                     (x7560
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7561
                                                               x7560))))))
                                                g7556)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7562 '())) g7562)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7563
                                                        (letrec ((x-cnd7564
                                                                  (letrec ((x7565
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7565))))
                                                          (if x-cnd7564
                                                            (letrec ((x7566
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7566))
                                                            #f))))
                                                g7563)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7567
                                                        (letrec ((x7569
                                                                  (number? x)))
                                                          (assert x7569)))
                                                       (g7568
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7570
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7571
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7571)))))
                                                            g7570))))
                                                g7568)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7572
                                                        (letrec ((val7244
                                                                  (letrec ((x7573
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7573
                                                                     9))))
                                                          (letrec ((g7574
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7575
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7575
                                                                                   10))))
                                                                        (letrec ((g7576
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7577
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7577
                                                                                       32)))))
                                                                          g7576)))))
                                                            g7574))))
                                                g7572)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7578
                                                        (letrec ((x7579
                                                                  (letrec ((x7580
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7580))))
                                                          (cdr x7579))))
                                                g7578)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7581
                                                        (letrec ((x7583
                                                                  (number? x)))
                                                          (assert x7583)))
                                                       (g7582 (> x 0)))
                                                g7582)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7584 #f)) g7584)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7585
                                                        (letrec ((x7586
                                                                  (cdr x)))
                                                          (cdr x7586))))
                                                g7585)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7587
                                                        (letrec ((x7589
                                                                  (number? x)))
                                                          (assert x7589)))
                                                       (g7588
                                                        (letrec ((x-cnd7590
                                                                  (< x 0)))
                                                          (if x-cnd7590
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7588)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7591
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7592
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7593
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7593
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7594
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7595
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7595
                                                                                                  (letrec ((x-cnd7596
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7596
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7597
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7598
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7598
                                                                                                                (letrec ((x-cnd7599
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7599
                                                                                                                    (letrec ((x-cnd7600
                                                                                                                              (letrec ((x7602
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7601
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7602
                                                                                                                                 x7601))))
                                                                                                                      (if x-cnd7600
                                                                                                                        (letrec ((x7604
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7603
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7604
                                                                                                                           x7603))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7605
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7606
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7606
                                                                                                                    (letrec ((x-cnd7607
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7607
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7608
                                                                                                                                    (letrec ((x-cnd7609
                                                                                                                                              (letrec ((x7610
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7610
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7609
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7611
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7612
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7613
                                                                                                                                                                                      (letrec ((x7615
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7614
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7615
                                                                                                                                                                                         x7614))))
                                                                                                                                                                              (if x-cnd7613
                                                                                                                                                                                (letrec ((x7616
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7616))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7612))))
                                                                                                                                                      g7611))))
                                                                                                                                          (letrec ((g7617
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7617))
                                                                                                                                        #f))))
                                                                                                                            g7608))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7605)))))
                                                                                        g7597)))))
                                                                          g7594)))))
                                                            g7592))))
                                                g7591)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7618
                                                        (letrec ((x7619
                                                                  (letrec ((x7620
                                                                            (letrec ((x7621
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7621))))
                                                                    (car
                                                                     x7620))))
                                                          (cdr x7619))))
                                                g7618)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7622
                                                        (letrec ((x7623
                                                                  (letrec ((x7624
                                                                            (letrec ((x7625
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7625))))
                                                                    (car
                                                                     x7624))))
                                                          (car x7623))))
                                                g7622)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7626 (eq? x y)))
                                                g7626)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7627
                                                        (letrec ((x7629
                                                                  (number? x)))
                                                          (assert x7629)))
                                                       (g7628
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7630
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7631
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7631)))))
                                                            g7630))))
                                                g7628)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7632
                                                        (letrec ((x7635
                                                                  (string?
                                                                   filename)))
                                                          (assert x7635)))
                                                       (g7633
                                                        (letrec ((x7636
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7636)))
                                                       (g7634
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7637
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7638 res))
                                                            g7638))))
                                                g7634)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7639 (cons x '())))
                                                g7639)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7640
                                                        (letrec ((x7643
                                                                  (char? c1)))
                                                          (assert x7643)))
                                                       (g7641
                                                        (letrec ((x7644
                                                                  (char? c2)))
                                                          (assert x7644)))
                                                       (g7642
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7645
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7645))))
                                                g7642)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7646
                                                        (letrec ((x7647
                                                                  (letrec ((x7648
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7648))))
                                                          (cdr x7647))))
                                                g7646)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7649
                                                        (letrec ((x7650
                                                                  (letrec ((x7651
                                                                            (letrec ((x7652
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7652))))
                                                                    (car
                                                                     x7651))))
                                                          (cdr x7650))))
                                                g7649)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7653
                                                        (letrec ((x7654
                                                                  (letrec ((x7655
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7655))))
                                                          (car x7654))))
                                                g7653)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7656
                                                        (letrec ((x7657
                                                                  (letrec ((x7658
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7658))))
                                                          (car x7657))))
                                                g7656)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7659
                                                        (letrec ((x7662
                                                                  (char? c1)))
                                                          (assert x7662)))
                                                       (g7660
                                                        (letrec ((x7663
                                                                  (char? c2)))
                                                          (assert x7663)))
                                                       (g7661
                                                        (letrec ((x7664
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7664))))
                                                g7661)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7665
                                                        (letrec ((x7666
                                                                  (letrec ((x7667
                                                                            (letrec ((x7668
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7668))))
                                                                    (car
                                                                     x7667))))
                                                          (car x7666))))
                                                g7665)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7669
                                                        (letrec ((x7671
                                                                  (number? x)))
                                                          (assert x7671)))
                                                       (g7670 (< x 0)))
                                                g7670)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7672 (memq e l)))
                                                g7672)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7673
                                                        (letrec ((x7674
                                                                  (letrec ((x7675
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7675))))
                                                          (car x7674))))
                                                g7673)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7676 '())) g7676)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7677
                                                        (letrec ((x7679
                                                                  (list? l)))
                                                          (assert x7679)))
                                                       (g7678
                                                        (letrec ((x-cnd7680
                                                                  (null? l)))
                                                          (if x-cnd7680
                                                            '()
                                                            (letrec ((x7683
                                                                      (letrec ((x7684
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7684)))
                                                                     (x7681
                                                                      (letrec ((x7682
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7682))))
                                                              (append
                                                               x7683
                                                               x7681))))))
                                                g7678)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7685
                                                        (letrec ((x7686
                                                                  (letrec ((x7687
                                                                            (letrec ((x7688
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7688))))
                                                                    (car
                                                                     x7687))))
                                                          (car x7686))))
                                                g7685)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7689
                                                        (letrec ((x7690
                                                                  (letrec ((x7691
                                                                            (letrec ((x7692
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7692))))
                                                                    (cdr
                                                                     x7691))))
                                                          (cdr x7690))))
                                                g7689)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7693
                                                        (letrec ((x7695
                                                                  (number? x)))
                                                          (assert x7695)))
                                                       (g7694
                                                        (letrec ((x7696
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7696))))
                                                g7694)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7697
                                                        (letrec ((x7698
                                                                  (letrec ((x7699
                                                                            (letrec ((x7700
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7700))))
                                                                    (car
                                                                     x7699))))
                                                          (car x7698))))
                                                g7697)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7701
                                                        (letrec ((x7704
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7704)))
                                                       (g7702
                                                        (letrec ((x7705
                                                                  (list?
                                                                   args)))
                                                          (assert x7705)))
                                                       (g7703
                                                        (letrec ((x-cnd7706
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7706
                                                            (letrec ((g7707
                                                                      (proc)))
                                                              g7707)
                                                            (letrec ((x-cnd7708
                                                                      (letrec ((x7709
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7709))))
                                                              (if x-cnd7708
                                                                (letrec ((g7710
                                                                          (letrec ((x7711
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7711))))
                                                                  g7710)
                                                                (letrec ((x-cnd7712
                                                                          (letrec ((x7713
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7713))))
                                                                  (if x-cnd7712
                                                                    (letrec ((g7714
                                                                              (letrec ((x7716
                                                                                        (car
                                                                                         args))
                                                                                       (x7715
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7716
                                                                                 x7715))))
                                                                      g7714)
                                                                    (letrec ((x-cnd7717
                                                                              (letrec ((x7718
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7718))))
                                                                      (if x-cnd7717
                                                                        (letrec ((g7719
                                                                                  (letrec ((x7722
                                                                                            (car
                                                                                             args))
                                                                                           (x7721
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7720
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7722
                                                                                     x7721
                                                                                     x7720))))
                                                                          g7719)
                                                                        (letrec ((x-cnd7723
                                                                                  (letrec ((x7724
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7724))))
                                                                          (if x-cnd7723
                                                                            (letrec ((g7725
                                                                                      (letrec ((x7729
                                                                                                (car
                                                                                                 args))
                                                                                               (x7728
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7727
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7726
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7729
                                                                                         x7728
                                                                                         x7727
                                                                                         x7726))))
                                                                              g7725)
                                                                            (letrec ((x-cnd7730
                                                                                      (letrec ((x7731
                                                                                                (letrec ((x7732
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7732))))
                                                                                        (null?
                                                                                         x7731))))
                                                                              (if x-cnd7730
                                                                                (letrec ((g7733
                                                                                          (letrec ((x7739
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7738
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7737
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7736
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7734
                                                                                                    (letrec ((x7735
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7735))))
                                                                                            (proc
                                                                                             x7739
                                                                                             x7738
                                                                                             x7737
                                                                                             x7736
                                                                                             x7734))))
                                                                                  g7733)
                                                                                (letrec ((x-cnd7740
                                                                                          (letrec ((x7741
                                                                                                    (letrec ((x7742
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7742))))
                                                                                            (null?
                                                                                             x7741))))
                                                                                  (if x-cnd7740
                                                                                    (letrec ((g7743
                                                                                              (letrec ((x7751
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7750
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7749
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7748
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7746
                                                                                                        (letrec ((x7747
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7747)))
                                                                                                       (x7744
                                                                                                        (letrec ((x7745
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7745))))
                                                                                                (proc
                                                                                                 x7751
                                                                                                 x7750
                                                                                                 x7749
                                                                                                 x7748
                                                                                                 x7746
                                                                                                 x7744))))
                                                                                      g7743)
                                                                                    (letrec ((x-cnd7752
                                                                                              (letrec ((x7753
                                                                                                        (letrec ((x7754
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7754))))
                                                                                                (null?
                                                                                                 x7753))))
                                                                                      (if x-cnd7752
                                                                                        (letrec ((g7755
                                                                                                  (letrec ((x7765
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7764
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7763
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7762
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7760
                                                                                                            (letrec ((x7761
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7761)))
                                                                                                           (x7758
                                                                                                            (letrec ((x7759
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7759)))
                                                                                                           (x7756
                                                                                                            (letrec ((x7757
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7757))))
                                                                                                    (proc
                                                                                                     x7765
                                                                                                     x7764
                                                                                                     x7763
                                                                                                     x7762
                                                                                                     x7760
                                                                                                     x7758
                                                                                                     x7756))))
                                                                                          g7755)
                                                                                        (letrec ((g7766
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7766)))))))))))))))))))
                                                g7703)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7767
                                                        (letrec ((x7769
                                                                  (list? l)))
                                                          (assert x7769)))
                                                       (g7768
                                                        (letrec ((x-cnd7770
                                                                  (null? l)))
                                                          (if x-cnd7770
                                                            #f
                                                            (letrec ((x-cnd7771
                                                                      (letrec ((x7772
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7772
                                                                         e))))
                                                              (if x-cnd7771
                                                                l
                                                                (letrec ((x7773
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7773))))))))
                                                g7768)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7774
                                                        (letrec ((x7775
                                                                  (letrec ((x7776
                                                                            (letrec ((x7777
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7777))))
                                                                    (cdr
                                                                     x7776))))
                                                          (cdr x7775))))
                                                g7774)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7778
                                                        (letrec ((x7779
                                                                  (letrec ((x7780
                                                                            (letrec ((x7781
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7781))))
                                                                    (cdr
                                                                     x7780))))
                                                          (car x7779))))
                                                g7778)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7782 (random 42)))
                                                g7782)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7783
                                                        (letrec ((x7785
                                                                  (number? x)))
                                                          (assert x7785)))
                                                       (g7784 (= x 0)))
                                                g7784)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7786
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7787
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7787))))
                                                g7786)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7788
                                                        (letrec ((x7789
                                                                  (cdr x)))
                                                          (car x7789))))
                                                g7788)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7790
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd7791
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7791
                                                                      (letrec ((x7792
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7792))
                                                                      #f))))
                                                          (letrec ((g7793
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g7793))))
                                                g7790)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7794
                                                        (letrec ((x7795
                                                                  (letrec ((x7796
                                                                            (letrec ((x7797
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7797))))
                                                                    (cdr
                                                                     x7796))))
                                                          (cdr x7795))))
                                                g7794)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7798
                                                        (letrec ((x-cnd7799
                                                                  (letrec ((x7800
                                                                            #\0))
                                                                    (char<=?
                                                                     x7800
                                                                     c))))
                                                          (if x-cnd7799
                                                            (letrec ((x7801
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7801))
                                                            #f))))
                                                g7798)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7802
                                                        (letrec ((x7804
                                                                  (list? l)))
                                                          (assert x7804)))
                                                       (g7803
                                                        (letrec ((x-cnd7805
                                                                  (null? l)))
                                                          (if x-cnd7805
                                                            #f
                                                            (letrec ((x-cnd7806
                                                                      (letrec ((x7807
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7807
                                                                         k))))
                                                              (if x-cnd7806
                                                                (car l)
                                                                (letrec ((x7808
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7808))))))))
                                                g7803)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7809 (if x #f #t)))
                                                g7809)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7810 (append l1 l2)))
                                                g7810)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7811
                                                        (letrec ((x7813
                                                                  (list? l)))
                                                          (assert x7813)))
                                                       (g7812
                                                        (letrec ((x-cnd7814
                                                                  (null? l)))
                                                          (if x-cnd7814
                                                            #f
                                                            (letrec ((x-cnd7815
                                                                      (letrec ((x7816
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7816
                                                                         e))))
                                                              (if x-cnd7815
                                                                l
                                                                (letrec ((x7817
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7817))))))))
                                                g7812)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7818
                                                        (letrec ((x7819
                                                                  (letrec ((x7820
                                                                            (letrec ((x7821
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7821))))
                                                                    (cdr
                                                                     x7820))))
                                                          (car x7819))))
                                                g7818)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7822
                                                        (letrec ((x7824
                                                                  (list? l)))
                                                          (assert x7824)))
                                                       (g7823
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7825
                                                                              (letrec ((x-cnd7826
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7826
                                                                                  0
                                                                                  (letrec ((x7827
                                                                                            (letrec ((x7828
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7828))))
                                                                                    (+
                                                                                     1
                                                                                     x7827))))))
                                                                      g7825))))
                                                          (letrec ((g7829
                                                                    (rec l)))
                                                            g7829))))
                                                g7823)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7830
                                                        (letrec ((x7833
                                                                  (char? c1)))
                                                          (assert x7833)))
                                                       (g7831
                                                        (letrec ((x7834
                                                                  (char? c2)))
                                                          (assert x7834)))
                                                       (g7832
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7835
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7835))))
                                                g7832)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7836
                                                        (letrec ((x7837
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7837))))
                                                g7836)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7838
                                                        (letrec ((x7839
                                                                  (letrec ((x7840
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7840))))
                                                          (cdr x7839))))
                                                g7838)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7841
                                                        (letrec ((x7843
                                                                  (list? l)))
                                                          (assert x7843)))
                                                       (g7842
                                                        (letrec ((x-cnd7844
                                                                  (null? l)))
                                                          (if x-cnd7844
                                                            #f
                                                            (letrec ((x-cnd7845
                                                                      (letrec ((x7846
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7846
                                                                         k))))
                                                              (if x-cnd7845
                                                                (car l)
                                                                (letrec ((x7847
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7847))))))))
                                                g7842)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7848
                                                        (letrec ((x7849
                                                                  (car x)))
                                                          (car x7849))))
                                                g7848)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7850
                                                        (letrec ((x7853
                                                                  (char? c1)))
                                                          (assert x7853)))
                                                       (g7851
                                                        (letrec ((x7854
                                                                  (char? c2)))
                                                          (assert x7854)))
                                                       (g7852
                                                        (letrec ((x7855
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7855))))
                                                g7852)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7856
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7857
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7857))))
                                                g7856)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7858
                                                        (letrec ((x7861
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7861)))
                                                       (g7859
                                                        (letrec ((x7862
                                                                  (list? l)))
                                                          (assert x7862)))
                                                       (g7860
                                                        (letrec ((x-cnd7863
                                                                  (null? l)))
                                                          (if x-cnd7863
                                                            #t
                                                            (letrec ((x-cnd7864
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7864
                                                                (letrec ((g7865
                                                                          (letrec ((x7867
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7867)))
                                                                         (g7866
                                                                          (letrec ((x7868
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7868))))
                                                                  g7866)
                                                                '()))))))
                                                g7860)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7869
                                                        (letrec ((x7871
                                                                  (number? x)))
                                                          (assert x7871)))
                                                       (g7870
                                                        (letrec ((x-cnd7872
                                                                  (< x 0)))
                                                          (if x-cnd7872
                                                            (- 0 x)
                                                            x))))
                                                g7870)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7873
                                                        (letrec ((x7876
                                                                  (char? c1)))
                                                          (assert x7876)))
                                                       (g7874
                                                        (letrec ((x7877
                                                                  (char? c2)))
                                                          (assert x7877)))
                                                       (g7875
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7878
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7878))))
                                                g7875)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7879
                                                        (letrec ((x7880
                                                                  (letrec ((x7881
                                                                            (letrec ((x7882
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7882))))
                                                                    (cdr
                                                                     x7881))))
                                                          (car x7880))))
                                                g7879)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7883 #f)) g7883)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7884
                                                        (letrec ((x7886
                                                                  (letrec ((x7887
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7887)))
                                                                 (x7885
                                                                  (gcd m n)))
                                                          (/ x7886 x7885))))
                                                g7884)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7888
                                                        (letrec ((x7890
                                                                  (number? x)))
                                                          (assert x7890)))
                                                       (g7889
                                                        (letrec ((x7891
                                                                  (<= x y)))
                                                          (not x7891))))
                                                g7889)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7892
                                                        (letrec ((x7896
                                                                  (list? l)))
                                                          (assert x7896)))
                                                       (g7893
                                                        (letrec ((x7897
                                                                  (number?
                                                                   index)))
                                                          (assert x7897)))
                                                       (g7894
                                                        (letrec ((x7898
                                                                  (letrec ((x7899
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7899))))
                                                          (assert x7898)))
                                                       (g7895
                                                        (letrec ((x-cnd7900
                                                                  (= index 0)))
                                                          (if x-cnd7900
                                                            (car l)
                                                            (letrec ((x7902
                                                                      (cdr l))
                                                                     (x7901
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7902
                                                               x7901))))))
                                                g7895)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7903
                                                        (letrec ((x-cnd7904
                                                                  (= b 0)))
                                                          (if x-cnd7904
                                                            a
                                                            (letrec ((x7905
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7905))))))
                                                g7903)))
                                           (foldr
                                            (lambda (f z xs)
                                              (letrec ((g7906
                                                        (letrec ((x-cnd7907
                                                                  (empty? xs)))
                                                          (if x-cnd7907
                                                            z
                                                            (letrec ((x7910
                                                                      (car xs))
                                                                     (x7908
                                                                      (letrec ((x7909
                                                                                (cdr
                                                                                 xs)))
                                                                        (foldr
                                                                         f
                                                                         z
                                                                         x7909))))
                                                              (f
                                                               x7910
                                                               x7908))))))
                                                g7906)))
                                           (map
                                            (lambda (f xs)
                                              (letrec ((g7911
                                                        (letrec ((x7912
                                                                  (letrec ((x7915
                                                                            (x
                                                                             ys))
                                                                           (x7913
                                                                            (letrec ((x7914
                                                                                      (f
                                                                                       x)))
                                                                              (cons
                                                                               x7914
                                                                               ys))))
                                                                    (λ x7915
                                                                      x7913))))
                                                          (foldr
                                                           x7912
                                                           empty
                                                           xs))))
                                                g7911))))
                                    (letrec ((g7916
                                              (letrec ((x7921
                                                        (letrec ((xj7349
                                                                  (letrec ((x7922
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x7922)))
                                                                 (xk7350
                                                                  (letrec ((x7923
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x7923))))
                                                          (letrec ((g7924
                                                                    ((lambda (j7354
                                                                              k7355
                                                                              f7356)
                                                                       (letrec ((g7925
                                                                                 (lambda (g7351
                                                                                          g7352
                                                                                          g7353)
                                                                                   (letrec ((g7926
                                                                                             (letrec ((x7927
                                                                                                       (letrec ((x7931
                                                                                                                 ((lambda (j7359
                                                                                                                           k7360
                                                                                                                           f7361)
                                                                                                                    (letrec ((g7932
                                                                                                                              (lambda (g7357
                                                                                                                                       g7358)
                                                                                                                                (letrec ((g7933
                                                                                                                                          (letrec ((x7934
                                                                                                                                                    (letrec ((x7936
                                                                                                                                                              (any/c
                                                                                                                                                               j7359
                                                                                                                                                               k7360
                                                                                                                                                               g7357))
                                                                                                                                                             (x7935
                                                                                                                                                              (any/c
                                                                                                                                                               j7359
                                                                                                                                                               k7360
                                                                                                                                                               g7358)))
                                                                                                                                                      (f7361
                                                                                                                                                       x7936
                                                                                                                                                       x7935))))
                                                                                                                                            (any/c
                                                                                                                                             j7359
                                                                                                                                             k7360
                                                                                                                                             x7934))))
                                                                                                                                  g7933))))
                                                                                                                      g7932))
                                                                                                                  j7354
                                                                                                                  k7355
                                                                                                                  g7351))
                                                                                                                (x7930
                                                                                                                 (any/c
                                                                                                                  j7354
                                                                                                                  k7355
                                                                                                                  g7352))
                                                                                                                (x7928
                                                                                                                 (letrec ((x7929
                                                                                                                           (listof
                                                                                                                            any/c)))
                                                                                                                   (x7929
                                                                                                                    j7354
                                                                                                                    k7355
                                                                                                                    g7353))))
                                                                                                         (f7356
                                                                                                          x7931
                                                                                                          x7930
                                                                                                          x7928))))
                                                                                               (any/c
                                                                                                j7354
                                                                                                k7355
                                                                                                x7927))))
                                                                                     g7926))))
                                                                         g7925))
                                                                     xj7349
                                                                     xk7350
                                                                     foldr)))
                                                            g7924)))
                                                       (x7920 (input))
                                                       (x7919 (input))
                                                       (x7918 (input)))
                                                (x7921 x7920 x7919 x7918)))
                                             (g7917
                                              (letrec ((x7939
                                                        (letrec ((xj7362
                                                                  (letrec ((x7940
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x7940)))
                                                                 (xk7363
                                                                  (letrec ((x7941
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x7941))))
                                                          (letrec ((g7942
                                                                    ((lambda (j7366
                                                                              k7367
                                                                              f7368)
                                                                       (letrec ((g7943
                                                                                 (lambda (g7364
                                                                                          g7365)
                                                                                   (letrec ((g7944
                                                                                             (letrec ((x7953
                                                                                                       (listof
                                                                                                        any/c))
                                                                                                      (x7945
                                                                                                       (letrec ((x7948
                                                                                                                 ((lambda (j7370
                                                                                                                           k7371
                                                                                                                           f7372)
                                                                                                                    (letrec ((g7949
                                                                                                                              (lambda (g7369)
                                                                                                                                (letrec ((g7950
                                                                                                                                          (letrec ((x7951
                                                                                                                                                    (letrec ((x7952
                                                                                                                                                              (any/c
                                                                                                                                                               j7370
                                                                                                                                                               k7371
                                                                                                                                                               g7369)))
                                                                                                                                                      (f7372
                                                                                                                                                       x7952))))
                                                                                                                                            (any/c
                                                                                                                                             j7370
                                                                                                                                             k7371
                                                                                                                                             x7951))))
                                                                                                                                  g7950))))
                                                                                                                      g7949))
                                                                                                                  j7366
                                                                                                                  k7367
                                                                                                                  g7364))
                                                                                                                (x7946
                                                                                                                 (letrec ((x7947
                                                                                                                           (listof
                                                                                                                            any/c)))
                                                                                                                   (x7947
                                                                                                                    j7366
                                                                                                                    k7367
                                                                                                                    g7365))))
                                                                                                         (f7368
                                                                                                          x7948
                                                                                                          x7946))))
                                                                                               (x7953
                                                                                                j7366
                                                                                                k7367
                                                                                                x7945))))
                                                                                     g7944))))
                                                                         g7943))
                                                                     xj7362
                                                                     xk7363
                                                                     map)))
                                                            g7942)))
                                                       (x7938 (input))
                                                       (x7937 (input)))
                                                (x7939 x7938 x7937))))
                                      g7917))))
                          g7386))))
              g7384)))
    g7383))
