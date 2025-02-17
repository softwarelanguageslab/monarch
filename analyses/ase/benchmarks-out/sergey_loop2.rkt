(letrec ((any? (lambda (v) (letrec ((g7349 #t)) g7349)))
         (meta (lambda (v) (letrec ((g7350 v)) g7350)))
         (member
          (lambda (v lst)
            (letrec ((g7351
                      (letrec ((g7352
                                (letrec ((x-e7353 lst))
                                  (match
                                   x-e7353
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7354 (eq? v v1)))
                                       (if x-cnd7354 #t (member v vs)))))))))
                        g7352)))
              g7351)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7355 (lambda (v) (letrec ((g7356 v)) g7356)))) g7355)))
         (nonzero?
          (lambda (v)
            (letrec ((g7357 (letrec ((x7358 (= v 0))) (not x7358)))) g7357))))
  (letrec ((g7359
            (letrec ((g7360
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7361 '())
                                 (g7362
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7363
                                                        (lambda (k j lst)
                                                          (letrec ((g7364
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7365
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7365))
                                                                     lst)))
                                                            g7364))))
                                                g7363)))
                                           (real?/c
                                            (lambda (g7259 g7260 g7261)
                                              (letrec ((g7366
                                                        (letrec ((x-cnd7367
                                                                  (real?
                                                                   g7261)))
                                                          (if x-cnd7367
                                                            g7261
                                                            (blame
                                                             g7259
                                                             'real?)))))
                                                g7366)))
                                           (boolean?/c
                                            (lambda (g7262 g7263 g7264)
                                              (letrec ((g7368
                                                        (letrec ((x-cnd7369
                                                                  (boolean?
                                                                   g7264)))
                                                          (if x-cnd7369
                                                            g7264
                                                            (blame
                                                             g7262
                                                             'boolean?)))))
                                                g7368)))
                                           (number?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7370
                                                        (letrec ((x-cnd7371
                                                                  (number?
                                                                   g7267)))
                                                          (if x-cnd7371
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'number?)))))
                                                g7370)))
                                           (any/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7372
                                                        (letrec ((x-cnd7373
                                                                  ((lambda (v)
                                                                     (letrec ((g7374
                                                                               #t))
                                                                       g7374))
                                                                   g7270)))
                                                          (if x-cnd7373
                                                            g7270
                                                            (blame
                                                             g7268
                                                             '(lambda (v)
                                                                #t))))))
                                                g7372)))
                                           (any?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7375
                                                        (letrec ((x-cnd7376
                                                                  ((lambda (v)
                                                                     (letrec ((g7377
                                                                               #t))
                                                                       g7377))
                                                                   g7273)))
                                                          (if x-cnd7376
                                                            g7273
                                                            (blame
                                                             g7271
                                                             '(lambda (v)
                                                                #t))))))
                                                g7375)))
                                           (cons?/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7378
                                                        (letrec ((x-cnd7379
                                                                  (pair?
                                                                   g7276)))
                                                          (if x-cnd7379
                                                            g7276
                                                            (blame
                                                             g7274
                                                             'pair?)))))
                                                g7378)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7380
                                                        (letrec ((x-cnd7381
                                                                  (pair?
                                                                   g7279)))
                                                          (if x-cnd7381
                                                            g7279
                                                            (blame
                                                             g7277
                                                             'pair?)))))
                                                g7380)))
                                           (integer?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7382
                                                        (letrec ((x-cnd7383
                                                                  (integer?
                                                                   g7282)))
                                                          (if x-cnd7383
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'integer?)))))
                                                g7382)))
                                           (symbol?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7384
                                                        (letrec ((x-cnd7385
                                                                  (symbol?
                                                                   g7285)))
                                                          (if x-cnd7385
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'symbol?)))))
                                                g7384)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7386
                                                        (lambda (k j v)
                                                          (letrec ((g7387
                                                                    (letrec ((x-cnd7388
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7388
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7387))))
                                                g7386)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7389
                                                        (lambda (k j v)
                                                          (letrec ((g7390
                                                                    (letrec ((x-cnd7391
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7391
                                                                        '()
                                                                        (letrec ((x7395
                                                                                  (letrec ((x7396
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7396)))
                                                                                 (x7392
                                                                                  (letrec ((x7394
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7393
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7394
                                                                                     k
                                                                                     j
                                                                                     x7393))))
                                                                          (orig-cons
                                                                           x7395
                                                                           x7392))))))
                                                            g7390))))
                                                g7389)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7397 #t)) g7397)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7398
                                                        (letrec ((x7399
                                                                  (= v 0)))
                                                          (not x7399))))
                                                g7398)))
                                           (nonzero?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7400
                                                        (letrec ((x-cnd7401
                                                                  ((lambda (v)
                                                                     (letrec ((g7402
                                                                               (letrec ((x7403
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7403))))
                                                                       g7402))
                                                                   g7288)))
                                                          (if x-cnd7401
                                                            g7288
                                                            (blame
                                                             g7286
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7400)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7404 v)) g7404)))
                                           (+
                                            (letrec ((xj7289 'server)
                                                     (xk7290 'client))
                                              (letrec ((g7405
                                                        ((lambda (j7293
                                                                  k7294
                                                                  f7295)
                                                           (letrec ((g7407
                                                                     (lambda (g7291
                                                                              g7292)
                                                                       (letrec ((g7408
                                                                                 (letrec ((x7409
                                                                                           (letrec ((x7411
                                                                                                     (number?/c
                                                                                                      j7293
                                                                                                      k7294
                                                                                                      g7291))
                                                                                                    (x7410
                                                                                                     (number?/c
                                                                                                      j7293
                                                                                                      k7294
                                                                                                      g7292)))
                                                                                             (f7295
                                                                                              x7411
                                                                                              x7410))))
                                                                                   (number?/c
                                                                                    j7293
                                                                                    k7294
                                                                                    x7409))))
                                                                         g7408))))
                                                             g7407))
                                                         xj7289
                                                         xk7290
                                                         (lambda (a b)
                                                           (letrec ((g7406
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7406)))))
                                                g7405)))
                                           (-
                                            (letrec ((xj7296 'server)
                                                     (xk7297 'client))
                                              (letrec ((g7412
                                                        ((lambda (j7300
                                                                  k7301
                                                                  f7302)
                                                           (letrec ((g7414
                                                                     (lambda (g7298
                                                                              g7299)
                                                                       (letrec ((g7415
                                                                                 (letrec ((x7416
                                                                                           (letrec ((x7418
                                                                                                     (number?/c
                                                                                                      j7300
                                                                                                      k7301
                                                                                                      g7298))
                                                                                                    (x7417
                                                                                                     (number?/c
                                                                                                      j7300
                                                                                                      k7301
                                                                                                      g7299)))
                                                                                             (f7302
                                                                                              x7418
                                                                                              x7417))))
                                                                                   (number?/c
                                                                                    j7300
                                                                                    k7301
                                                                                    x7416))))
                                                                         g7415))))
                                                             g7414))
                                                         xj7296
                                                         xk7297
                                                         (lambda (a b)
                                                           (letrec ((g7413
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7413)))))
                                                g7412)))
                                           (*
                                            (letrec ((xj7303 'server)
                                                     (xk7304 'client))
                                              (letrec ((g7419
                                                        ((lambda (j7307
                                                                  k7308
                                                                  f7309)
                                                           (letrec ((g7421
                                                                     (lambda (g7305
                                                                              g7306)
                                                                       (letrec ((g7422
                                                                                 (letrec ((x7423
                                                                                           (letrec ((x7425
                                                                                                     (number?/c
                                                                                                      j7307
                                                                                                      k7308
                                                                                                      g7305))
                                                                                                    (x7424
                                                                                                     (number?/c
                                                                                                      j7307
                                                                                                      k7308
                                                                                                      g7306)))
                                                                                             (f7309
                                                                                              x7425
                                                                                              x7424))))
                                                                                   (number?/c
                                                                                    j7307
                                                                                    k7308
                                                                                    x7423))))
                                                                         g7422))))
                                                             g7421))
                                                         xj7303
                                                         xk7304
                                                         (lambda (a b)
                                                           (letrec ((g7420
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7420)))))
                                                g7419)))
                                           (/
                                            (letrec ((xj7310 'server)
                                                     (xk7311 'client))
                                              (letrec ((g7426
                                                        ((lambda (j7314
                                                                  k7315
                                                                  f7316)
                                                           (letrec ((g7428
                                                                     (lambda (g7312
                                                                              g7313)
                                                                       (letrec ((g7429
                                                                                 (letrec ((x7430
                                                                                           (letrec ((x7432
                                                                                                     (number?/c
                                                                                                      j7314
                                                                                                      k7315
                                                                                                      g7312))
                                                                                                    (x7431
                                                                                                     (number?/c
                                                                                                      j7314
                                                                                                      k7315
                                                                                                      g7313)))
                                                                                             (f7316
                                                                                              x7432
                                                                                              x7431))))
                                                                                   (number?/c
                                                                                    j7314
                                                                                    k7315
                                                                                    x7430))))
                                                                         g7429))))
                                                             g7428))
                                                         xj7310
                                                         xk7311
                                                         (lambda (a b)
                                                           (letrec ((g7427
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7427)))))
                                                g7426)))
                                           (car
                                            (letrec ((xj7317 'server)
                                                     (xk7318 'client))
                                              (letrec ((g7433
                                                        ((lambda (j7320
                                                                  k7321
                                                                  f7322)
                                                           (letrec ((g7435
                                                                     (lambda (g7319)
                                                                       (letrec ((g7436
                                                                                 (letrec ((x7437
                                                                                           (letrec ((x7438
                                                                                                     (pair?/c
                                                                                                      j7320
                                                                                                      k7321
                                                                                                      g7319)))
                                                                                             (f7322
                                                                                              x7438))))
                                                                                   (any/c
                                                                                    j7320
                                                                                    k7321
                                                                                    x7437))))
                                                                         g7436))))
                                                             g7435))
                                                         xj7317
                                                         xk7318
                                                         (lambda (p)
                                                           (letrec ((g7434
                                                                     (orig-car
                                                                      p)))
                                                             g7434)))))
                                                g7433)))
                                           (cdr
                                            (letrec ((xj7323 'server)
                                                     (xk7324 'client))
                                              (letrec ((g7439
                                                        ((lambda (j7326
                                                                  k7327
                                                                  f7328)
                                                           (letrec ((g7441
                                                                     (lambda (g7325)
                                                                       (letrec ((g7442
                                                                                 (letrec ((x7443
                                                                                           (letrec ((x7444
                                                                                                     (pair?/c
                                                                                                      j7326
                                                                                                      k7327
                                                                                                      g7325)))
                                                                                             (f7328
                                                                                              x7444))))
                                                                                   (any/c
                                                                                    j7326
                                                                                    k7327
                                                                                    x7443))))
                                                                         g7442))))
                                                             g7441))
                                                         xj7323
                                                         xk7324
                                                         (lambda (p)
                                                           (letrec ((g7440
                                                                     (orig-cdr
                                                                      p)))
                                                             g7440)))))
                                                g7439)))
                                           (cons
                                            (letrec ((xj7329 'server)
                                                     (xk7330 'client))
                                              (letrec ((g7445
                                                        ((lambda (j7333
                                                                  k7334
                                                                  f7335)
                                                           (letrec ((g7447
                                                                     (lambda (g7331
                                                                              g7332)
                                                                       (letrec ((g7448
                                                                                 (letrec ((x7449
                                                                                           (letrec ((x7451
                                                                                                     (any/c
                                                                                                      j7333
                                                                                                      k7334
                                                                                                      g7331))
                                                                                                    (x7450
                                                                                                     (any/c
                                                                                                      j7333
                                                                                                      k7334
                                                                                                      g7332)))
                                                                                             (f7335
                                                                                              x7451
                                                                                              x7450))))
                                                                                   (pair?/c
                                                                                    j7333
                                                                                    k7334
                                                                                    x7449))))
                                                                         g7448))))
                                                             g7447))
                                                         xj7329
                                                         xk7330
                                                         (lambda (a b)
                                                           (letrec ((g7446
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7446)))))
                                                g7445)))
                                           (vector-ref
                                            (letrec ((xj7336 'server)
                                                     (xk7337 'client))
                                              (letrec ((g7452
                                                        ((lambda (j7339
                                                                  k7340
                                                                  f7341)
                                                           (letrec ((g7454
                                                                     (lambda (g7338)
                                                                       (letrec ((g7455
                                                                                 (letrec ((x7456
                                                                                           (letrec ((x7457
                                                                                                     (vector?/c
                                                                                                      j7339
                                                                                                      k7340
                                                                                                      g7338)))
                                                                                             (f7341
                                                                                              x7457))))
                                                                                   (integer?/c
                                                                                    j7339
                                                                                    k7340
                                                                                    x7456))))
                                                                         g7455))))
                                                             g7454))
                                                         xj7336
                                                         xk7337
                                                         (lambda (v i)
                                                           (letrec ((g7453
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7453)))))
                                                g7452)))
                                           (vector-set!
                                            (letrec ((xj7342 'server)
                                                     (xk7343 'client))
                                              (letrec ((g7458
                                                        ((lambda (j7346
                                                                  k7347
                                                                  f7348)
                                                           (letrec ((g7460
                                                                     (lambda (g7344
                                                                              g7345)
                                                                       (letrec ((g7461
                                                                                 (letrec ((x7462
                                                                                           (letrec ((x7464
                                                                                                     (vector?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7344))
                                                                                                    (x7463
                                                                                                     (integer?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7345)))
                                                                                             (f7348
                                                                                              x7464
                                                                                              x7463))))
                                                                                   (any/c
                                                                                    j7346
                                                                                    k7347
                                                                                    x7462))))
                                                                         g7461))))
                                                             g7460))
                                                         xj7342
                                                         xk7343
                                                         (lambda (vec i v)
                                                           (letrec ((g7459
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7459)))))
                                                g7458)))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7465
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7465)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7466
                                                        (letrec ((x7467
                                                                  (letrec ((x7468
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7468))))
                                                          (cdr x7467))))
                                                g7466)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7469
                                                        (letrec ((x7472
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7472)))
                                                       (g7470
                                                        (letrec ((x7473
                                                                  (list? l)))
                                                          (assert x7473)))
                                                       (g7471
                                                        (letrec ((x-cnd7474
                                                                  (null? l)))
                                                          (if x-cnd7474
                                                            '()
                                                            (letrec ((x7477
                                                                      (letrec ((x7478
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7478)))
                                                                     (x7475
                                                                      (letrec ((x7476
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7476))))
                                                              (cons
                                                               x7477
                                                               x7475))))))
                                                g7471)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7479
                                                        (letrec ((x7480
                                                                  (car x)))
                                                          (cdr x7480))))
                                                g7479)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7481
                                                        (letrec ((x7482
                                                                  (letrec ((x7483
                                                                            (letrec ((x7484
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7484))))
                                                                    (cdr
                                                                     x7483))))
                                                          (car x7482))))
                                                g7481)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7485
                                                        (letrec ((x7486
                                                                  (letrec ((x7487
                                                                            (letrec ((x7488
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7488))))
                                                                    (car
                                                                     x7487))))
                                                          (cdr x7486))))
                                                g7485)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7489
                                                        (letrec ((x7492
                                                                  (string?
                                                                   filename)))
                                                          (assert x7492)))
                                                       (g7490
                                                        (letrec ((x7493
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7493)))
                                                       (g7491
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7494
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7495 res))
                                                            g7495))))
                                                g7491)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7496
                                                        (letrec ((x7497
                                                                  (letrec ((x7498
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7498))))
                                                          (car x7497))))
                                                g7496)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7499
                                                        (letrec ((x7500
                                                                  (letrec ((x7501
                                                                            (letrec ((x7502
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7502))))
                                                                    (car
                                                                     x7501))))
                                                          (cdr x7500))))
                                                g7499)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7503
                                                        (letrec ((x7505
                                                                  (list? l)))
                                                          (assert x7505)))
                                                       (g7504
                                                        (letrec ((x-cnd7506
                                                                  (null? l)))
                                                          (if x-cnd7506
                                                            #f
                                                            (letrec ((x-cnd7507
                                                                      (letrec ((x7508
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7508
                                                                         k))))
                                                              (if x-cnd7507
                                                                (car l)
                                                                (letrec ((x7509
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7509))))))))
                                                g7504)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7510
                                                        (letrec ((x7511
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7511))))
                                                g7510)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7512
                                                        (letrec ((x7514
                                                                  (list? l)))
                                                          (assert x7514)))
                                                       (g7513
                                                        (letrec ((x-cnd7515
                                                                  (null? l)))
                                                          (if x-cnd7515
                                                            ""
                                                            (letrec ((x7518
                                                                      (letrec ((x7519
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7519)))
                                                                     (x7516
                                                                      (letrec ((x7517
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7517))))
                                                              (string-append
                                                               x7518
                                                               x7516))))))
                                                g7513)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7520
                                                        (letrec ((x7523
                                                                  (char? c1)))
                                                          (assert x7523)))
                                                       (g7521
                                                        (letrec ((x7524
                                                                  (char? c2)))
                                                          (assert x7524)))
                                                       (g7522
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7525
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7525))))
                                                g7522)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7526
                                                        (letrec ((x7527
                                                                  (letrec ((x7528
                                                                            (letrec ((x7529
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7529))))
                                                                    (cdr
                                                                     x7528))))
                                                          (cdr x7527))))
                                                g7526)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7530
                                                        (letrec ((x7533
                                                                  (list? l)))
                                                          (assert x7533)))
                                                       (g7531
                                                        (letrec ((x7534
                                                                  (number?)))
                                                          (assert x7534)))
                                                       (g7532
                                                        (letrec ((x-cnd7535
                                                                  (zero? k)))
                                                          (if x-cnd7535
                                                            x
                                                            (letrec ((x7537
                                                                      (cdr x))
                                                                     (x7536
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7537
                                                               x7536))))))
                                                g7532)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7538 '())) g7538)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7539
                                                        (letrec ((x-cnd7540
                                                                  (letrec ((x7541
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7541))))
                                                          (if x-cnd7540
                                                            (letrec ((x7542
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7542))
                                                            #f))))
                                                g7539)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7543
                                                        (letrec ((x7545
                                                                  (number? x)))
                                                          (assert x7545)))
                                                       (g7544
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7546
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7547
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7547)))))
                                                            g7546))))
                                                g7544)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7548
                                                        (letrec ((val7244
                                                                  (letrec ((x7549
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7549
                                                                     9))))
                                                          (letrec ((g7550
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7551
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7551
                                                                                   10))))
                                                                        (letrec ((g7552
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7553
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7553
                                                                                       32)))))
                                                                          g7552)))))
                                                            g7550))))
                                                g7548)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7554
                                                        (letrec ((x7555
                                                                  (letrec ((x7556
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7556))))
                                                          (cdr x7555))))
                                                g7554)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7557
                                                        (letrec ((x7559
                                                                  (number? x)))
                                                          (assert x7559)))
                                                       (g7558 (> x 0)))
                                                g7558)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7560 #f)) g7560)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7561
                                                        (letrec ((x7562
                                                                  (cdr x)))
                                                          (cdr x7562))))
                                                g7561)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7563
                                                        (letrec ((x7565
                                                                  (number? x)))
                                                          (assert x7565)))
                                                       (g7564
                                                        (letrec ((x-cnd7566
                                                                  (< x 0)))
                                                          (if x-cnd7566
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7564)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7567
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7568
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7569
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7569
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7570
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7571
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7571
                                                                                                  (letrec ((x-cnd7572
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7572
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7573
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7574
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7574
                                                                                                                (letrec ((x-cnd7575
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7575
                                                                                                                    (letrec ((x-cnd7576
                                                                                                                              (letrec ((x7578
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7577
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7578
                                                                                                                                 x7577))))
                                                                                                                      (if x-cnd7576
                                                                                                                        (letrec ((x7580
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7579
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7580
                                                                                                                           x7579))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7581
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7582
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7582
                                                                                                                    (letrec ((x-cnd7583
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7583
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7584
                                                                                                                                    (letrec ((x-cnd7585
                                                                                                                                              (letrec ((x7586
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7586
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7585
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7587
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7588
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7589
                                                                                                                                                                                      (letrec ((x7591
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7590
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7591
                                                                                                                                                                                         x7590))))
                                                                                                                                                                              (if x-cnd7589
                                                                                                                                                                                (letrec ((x7592
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7592))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7588))))
                                                                                                                                                      g7587))))
                                                                                                                                          (letrec ((g7593
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7593))
                                                                                                                                        #f))))
                                                                                                                            g7584))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7581)))))
                                                                                        g7573)))))
                                                                          g7570)))))
                                                            g7568))))
                                                g7567)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7594
                                                        (letrec ((x7595
                                                                  (letrec ((x7596
                                                                            (letrec ((x7597
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7597))))
                                                                    (car
                                                                     x7596))))
                                                          (cdr x7595))))
                                                g7594)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7598
                                                        (letrec ((x7599
                                                                  (letrec ((x7600
                                                                            (letrec ((x7601
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7601))))
                                                                    (car
                                                                     x7600))))
                                                          (car x7599))))
                                                g7598)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7602 (eq? x y)))
                                                g7602)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7603
                                                        (letrec ((x7605
                                                                  (number? x)))
                                                          (assert x7605)))
                                                       (g7604
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7606
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7607
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7607)))))
                                                            g7606))))
                                                g7604)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7608
                                                        (letrec ((x7611
                                                                  (string?
                                                                   filename)))
                                                          (assert x7611)))
                                                       (g7609
                                                        (letrec ((x7612
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7612)))
                                                       (g7610
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7613
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7614 res))
                                                            g7614))))
                                                g7610)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7615 (cons x '())))
                                                g7615)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7616
                                                        (letrec ((x7619
                                                                  (char? c1)))
                                                          (assert x7619)))
                                                       (g7617
                                                        (letrec ((x7620
                                                                  (char? c2)))
                                                          (assert x7620)))
                                                       (g7618
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7621
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7621))))
                                                g7618)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7622
                                                        (letrec ((x7623
                                                                  (letrec ((x7624
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7624))))
                                                          (cdr x7623))))
                                                g7622)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7625
                                                        (letrec ((x7626
                                                                  (letrec ((x7627
                                                                            (letrec ((x7628
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7628))))
                                                                    (car
                                                                     x7627))))
                                                          (cdr x7626))))
                                                g7625)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7629
                                                        (letrec ((x7630
                                                                  (letrec ((x7631
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7631))))
                                                          (car x7630))))
                                                g7629)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7632
                                                        (letrec ((x7633
                                                                  (letrec ((x7634
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7634))))
                                                          (car x7633))))
                                                g7632)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7635
                                                        (letrec ((x7638
                                                                  (char? c1)))
                                                          (assert x7638)))
                                                       (g7636
                                                        (letrec ((x7639
                                                                  (char? c2)))
                                                          (assert x7639)))
                                                       (g7637
                                                        (letrec ((x7640
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7640))))
                                                g7637)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7641
                                                        (letrec ((x7642
                                                                  (letrec ((x7643
                                                                            (letrec ((x7644
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7644))))
                                                                    (car
                                                                     x7643))))
                                                          (car x7642))))
                                                g7641)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7645
                                                        (letrec ((x7647
                                                                  (number? x)))
                                                          (assert x7647)))
                                                       (g7646 (< x 0)))
                                                g7646)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7648 (memq e l)))
                                                g7648)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7649
                                                        (letrec ((x7650
                                                                  (letrec ((x7651
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7651))))
                                                          (car x7650))))
                                                g7649)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7652 '())) g7652)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7653
                                                        (letrec ((x7655
                                                                  (list? l)))
                                                          (assert x7655)))
                                                       (g7654
                                                        (letrec ((x-cnd7656
                                                                  (null? l)))
                                                          (if x-cnd7656
                                                            '()
                                                            (letrec ((x7659
                                                                      (letrec ((x7660
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7660)))
                                                                     (x7657
                                                                      (letrec ((x7658
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7658))))
                                                              (append
                                                               x7659
                                                               x7657))))))
                                                g7654)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7661
                                                        (letrec ((x7662
                                                                  (letrec ((x7663
                                                                            (letrec ((x7664
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7664))))
                                                                    (car
                                                                     x7663))))
                                                          (car x7662))))
                                                g7661)))
                                           (cddadr
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
                                                          (cdr x7666))))
                                                g7665)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7669
                                                        (letrec ((x7671
                                                                  (number? x)))
                                                          (assert x7671)))
                                                       (g7670
                                                        (letrec ((x7672
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7672))))
                                                g7670)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7673
                                                        (letrec ((x7674
                                                                  (letrec ((x7675
                                                                            (letrec ((x7676
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7676))))
                                                                    (car
                                                                     x7675))))
                                                          (car x7674))))
                                                g7673)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7677
                                                        (letrec ((x7680
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7680)))
                                                       (g7678
                                                        (letrec ((x7681
                                                                  (list?
                                                                   args)))
                                                          (assert x7681)))
                                                       (g7679
                                                        (letrec ((x-cnd7682
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7682
                                                            (letrec ((g7683
                                                                      (proc)))
                                                              g7683)
                                                            (letrec ((x-cnd7684
                                                                      (letrec ((x7685
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7685))))
                                                              (if x-cnd7684
                                                                (letrec ((g7686
                                                                          (letrec ((x7687
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7687))))
                                                                  g7686)
                                                                (letrec ((x-cnd7688
                                                                          (letrec ((x7689
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7689))))
                                                                  (if x-cnd7688
                                                                    (letrec ((g7690
                                                                              (letrec ((x7692
                                                                                        (car
                                                                                         args))
                                                                                       (x7691
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7692
                                                                                 x7691))))
                                                                      g7690)
                                                                    (letrec ((x-cnd7693
                                                                              (letrec ((x7694
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7694))))
                                                                      (if x-cnd7693
                                                                        (letrec ((g7695
                                                                                  (letrec ((x7698
                                                                                            (car
                                                                                             args))
                                                                                           (x7697
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7696
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7698
                                                                                     x7697
                                                                                     x7696))))
                                                                          g7695)
                                                                        (letrec ((x-cnd7699
                                                                                  (letrec ((x7700
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7700))))
                                                                          (if x-cnd7699
                                                                            (letrec ((g7701
                                                                                      (letrec ((x7705
                                                                                                (car
                                                                                                 args))
                                                                                               (x7704
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7703
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7702
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7705
                                                                                         x7704
                                                                                         x7703
                                                                                         x7702))))
                                                                              g7701)
                                                                            (letrec ((x-cnd7706
                                                                                      (letrec ((x7707
                                                                                                (letrec ((x7708
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7708))))
                                                                                        (null?
                                                                                         x7707))))
                                                                              (if x-cnd7706
                                                                                (letrec ((g7709
                                                                                          (letrec ((x7715
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7714
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7713
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7712
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7710
                                                                                                    (letrec ((x7711
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7711))))
                                                                                            (proc
                                                                                             x7715
                                                                                             x7714
                                                                                             x7713
                                                                                             x7712
                                                                                             x7710))))
                                                                                  g7709)
                                                                                (letrec ((x-cnd7716
                                                                                          (letrec ((x7717
                                                                                                    (letrec ((x7718
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7718))))
                                                                                            (null?
                                                                                             x7717))))
                                                                                  (if x-cnd7716
                                                                                    (letrec ((g7719
                                                                                              (letrec ((x7727
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7726
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7725
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7724
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7722
                                                                                                        (letrec ((x7723
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7723)))
                                                                                                       (x7720
                                                                                                        (letrec ((x7721
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7721))))
                                                                                                (proc
                                                                                                 x7727
                                                                                                 x7726
                                                                                                 x7725
                                                                                                 x7724
                                                                                                 x7722
                                                                                                 x7720))))
                                                                                      g7719)
                                                                                    (letrec ((x-cnd7728
                                                                                              (letrec ((x7729
                                                                                                        (letrec ((x7730
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7730))))
                                                                                                (null?
                                                                                                 x7729))))
                                                                                      (if x-cnd7728
                                                                                        (letrec ((g7731
                                                                                                  (letrec ((x7741
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7740
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7739
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7738
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7736
                                                                                                            (letrec ((x7737
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7737)))
                                                                                                           (x7734
                                                                                                            (letrec ((x7735
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7735)))
                                                                                                           (x7732
                                                                                                            (letrec ((x7733
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7733))))
                                                                                                    (proc
                                                                                                     x7741
                                                                                                     x7740
                                                                                                     x7739
                                                                                                     x7738
                                                                                                     x7736
                                                                                                     x7734
                                                                                                     x7732))))
                                                                                          g7731)
                                                                                        (letrec ((g7742
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7742)))))))))))))))))))
                                                g7679)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7743
                                                        (letrec ((x7745
                                                                  (list? l)))
                                                          (assert x7745)))
                                                       (g7744
                                                        (letrec ((x-cnd7746
                                                                  (null? l)))
                                                          (if x-cnd7746
                                                            #f
                                                            (letrec ((x-cnd7747
                                                                      (letrec ((x7748
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7748
                                                                         e))))
                                                              (if x-cnd7747
                                                                l
                                                                (letrec ((x7749
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7749))))))))
                                                g7744)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7750
                                                        (letrec ((x7751
                                                                  (letrec ((x7752
                                                                            (letrec ((x7753
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7753))))
                                                                    (cdr
                                                                     x7752))))
                                                          (cdr x7751))))
                                                g7750)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7754
                                                        (letrec ((x7755
                                                                  (letrec ((x7756
                                                                            (letrec ((x7757
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7757))))
                                                                    (cdr
                                                                     x7756))))
                                                          (car x7755))))
                                                g7754)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7758 (random 42)))
                                                g7758)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7759
                                                        (letrec ((x7761
                                                                  (number? x)))
                                                          (assert x7761)))
                                                       (g7760 (= x 0)))
                                                g7760)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7762
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7763
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7763))))
                                                g7762)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7764
                                                        (letrec ((x7765
                                                                  (cdr x)))
                                                          (car x7765))))
                                                g7764)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7766
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd7767
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7767
                                                                      (letrec ((x7768
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7768))
                                                                      #f))))
                                                          (letrec ((g7769
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g7769))))
                                                g7766)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7770
                                                        (letrec ((x7771
                                                                  (letrec ((x7772
                                                                            (letrec ((x7773
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7773))))
                                                                    (cdr
                                                                     x7772))))
                                                          (cdr x7771))))
                                                g7770)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7774
                                                        (letrec ((x-cnd7775
                                                                  (letrec ((x7776
                                                                            #\0))
                                                                    (char<=?
                                                                     x7776
                                                                     c))))
                                                          (if x-cnd7775
                                                            (letrec ((x7777
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7777))
                                                            #f))))
                                                g7774)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7778
                                                        (letrec ((x7780
                                                                  (list? l)))
                                                          (assert x7780)))
                                                       (g7779
                                                        (letrec ((x-cnd7781
                                                                  (null? l)))
                                                          (if x-cnd7781
                                                            #f
                                                            (letrec ((x-cnd7782
                                                                      (letrec ((x7783
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7783
                                                                         k))))
                                                              (if x-cnd7782
                                                                (car l)
                                                                (letrec ((x7784
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7784))))))))
                                                g7779)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7785 (if x #f #t)))
                                                g7785)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7786 (append l1 l2)))
                                                g7786)))
                                           (memq
                                            (lambda (e l)
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
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7792
                                                                         e))))
                                                              (if x-cnd7791
                                                                l
                                                                (letrec ((x7793
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7793))))))))
                                                g7788)))
                                           (cadaar
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
                                                          (car x7795))))
                                                g7794)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7798
                                                        (letrec ((x7800
                                                                  (list? l)))
                                                          (assert x7800)))
                                                       (g7799
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7801
                                                                              (letrec ((x-cnd7802
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7802
                                                                                  0
                                                                                  (letrec ((x7803
                                                                                            (letrec ((x7804
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7804))))
                                                                                    (+
                                                                                     1
                                                                                     x7803))))))
                                                                      g7801))))
                                                          (letrec ((g7805
                                                                    (rec l)))
                                                            g7805))))
                                                g7799)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7806
                                                        (letrec ((x7809
                                                                  (char? c1)))
                                                          (assert x7809)))
                                                       (g7807
                                                        (letrec ((x7810
                                                                  (char? c2)))
                                                          (assert x7810)))
                                                       (g7808
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7811
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7811))))
                                                g7808)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7812
                                                        (letrec ((x7813
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7813))))
                                                g7812)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7814
                                                        (letrec ((x7815
                                                                  (letrec ((x7816
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7816))))
                                                          (cdr x7815))))
                                                g7814)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7817
                                                        (letrec ((x7819
                                                                  (list? l)))
                                                          (assert x7819)))
                                                       (g7818
                                                        (letrec ((x-cnd7820
                                                                  (null? l)))
                                                          (if x-cnd7820
                                                            #f
                                                            (letrec ((x-cnd7821
                                                                      (letrec ((x7822
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7822
                                                                         k))))
                                                              (if x-cnd7821
                                                                (car l)
                                                                (letrec ((x7823
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7823))))))))
                                                g7818)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7824
                                                        (letrec ((x7825
                                                                  (car x)))
                                                          (car x7825))))
                                                g7824)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7826
                                                        (letrec ((x7829
                                                                  (char? c1)))
                                                          (assert x7829)))
                                                       (g7827
                                                        (letrec ((x7830
                                                                  (char? c2)))
                                                          (assert x7830)))
                                                       (g7828
                                                        (letrec ((x7831
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7831))))
                                                g7828)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7832
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7833
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7833))))
                                                g7832)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7834
                                                        (letrec ((x7837
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7837)))
                                                       (g7835
                                                        (letrec ((x7838
                                                                  (list? l)))
                                                          (assert x7838)))
                                                       (g7836
                                                        (letrec ((x-cnd7839
                                                                  (null? l)))
                                                          (if x-cnd7839
                                                            #t
                                                            (letrec ((x-cnd7840
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7840
                                                                (letrec ((g7841
                                                                          (letrec ((x7843
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7843)))
                                                                         (g7842
                                                                          (letrec ((x7844
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7844))))
                                                                  g7842)
                                                                '()))))))
                                                g7836)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7845
                                                        (letrec ((x7847
                                                                  (number? x)))
                                                          (assert x7847)))
                                                       (g7846
                                                        (letrec ((x-cnd7848
                                                                  (< x 0)))
                                                          (if x-cnd7848
                                                            (- 0 x)
                                                            x))))
                                                g7846)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7849
                                                        (letrec ((x7852
                                                                  (char? c1)))
                                                          (assert x7852)))
                                                       (g7850
                                                        (letrec ((x7853
                                                                  (char? c2)))
                                                          (assert x7853)))
                                                       (g7851
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7854
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7854))))
                                                g7851)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7855
                                                        (letrec ((x7856
                                                                  (letrec ((x7857
                                                                            (letrec ((x7858
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7858))))
                                                                    (cdr
                                                                     x7857))))
                                                          (car x7856))))
                                                g7855)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7859 #f)) g7859)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7860
                                                        (letrec ((x7862
                                                                  (letrec ((x7863
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7863)))
                                                                 (x7861
                                                                  (gcd m n)))
                                                          (/ x7862 x7861))))
                                                g7860)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7864
                                                        (letrec ((x7866
                                                                  (number? x)))
                                                          (assert x7866)))
                                                       (g7865
                                                        (letrec ((x7867
                                                                  (<= x y)))
                                                          (not x7867))))
                                                g7865)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7868
                                                        (letrec ((x7872
                                                                  (list? l)))
                                                          (assert x7872)))
                                                       (g7869
                                                        (letrec ((x7873
                                                                  (number?
                                                                   index)))
                                                          (assert x7873)))
                                                       (g7870
                                                        (letrec ((x7874
                                                                  (letrec ((x7875
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7875))))
                                                          (assert x7874)))
                                                       (g7871
                                                        (letrec ((x-cnd7876
                                                                  (= index 0)))
                                                          (if x-cnd7876
                                                            (car l)
                                                            (letrec ((x7878
                                                                      (cdr l))
                                                                     (x7877
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7878
                                                               x7877))))))
                                                g7871)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7879
                                                        (letrec ((x-cnd7880
                                                                  (= b 0)))
                                                          (if x-cnd7880
                                                            a
                                                            (letrec ((x7881
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7881))))))
                                                g7879))))
                                    (letrec ((g7882
                                              (letrec ((lp1 2000))
                                                (letrec ((g7883
                                                          (letrec ((a
                                                                    (letrec ((x7884
                                                                              (letrec ((x7899
                                                                                        (i
                                                                                         x))
                                                                                       (x7885
                                                                                        (letrec ((a
                                                                                                  (=
                                                                                                   0
                                                                                                   i)))
                                                                                          (letrec ((g7886
                                                                                                    (if a
                                                                                                      x
                                                                                                      (letrec ((lp2
                                                                                                                1000))
                                                                                                        (letrec ((g7887
                                                                                                                  (letrec ((b
                                                                                                                            (letrec ((x7888
                                                                                                                                      (letrec ((x7894
                                                                                                                                                (j
                                                                                                                                                 f
                                                                                                                                                 y))
                                                                                                                                               (x7889
                                                                                                                                                (letrec ((b
                                                                                                                                                          (=
                                                                                                                                                           0
                                                                                                                                                           j)))
                                                                                                                                                  (letrec ((g7890
                                                                                                                                                            (if b
                                                                                                                                                              (letrec ((x7891
                                                                                                                                                                        (-
                                                                                                                                                                         i
                                                                                                                                                                         1)))
                                                                                                                                                                (lp1
                                                                                                                                                                 x7891
                                                                                                                                                                 y))
                                                                                                                                                              (letrec (($tmp$3
                                                                                                                                                                        (f
                                                                                                                                                                         y)))
                                                                                                                                                                (letrec ((g7892
                                                                                                                                                                          (letrec ((x7893
                                                                                                                                                                                    (-
                                                                                                                                                                                     j
                                                                                                                                                                                     1)))
                                                                                                                                                                            (lp2
                                                                                                                                                                             x7893
                                                                                                                                                                             f
                                                                                                                                                                             $tmp$3))))
                                                                                                                                                                  g7892)))))
                                                                                                                                                    g7890))))
                                                                                                                                        (λ x7894
                                                                                                                                          x7889))))
                                                                                                                              (set! lp2
                                                                                                                                x7888))))
                                                                                                                    (letrec ((g7895
                                                                                                                              (letrec ((x7896
                                                                                                                                        (letrec ((x7898
                                                                                                                                                  (n))
                                                                                                                                                 (x7897
                                                                                                                                                  (+
                                                                                                                                                   n
                                                                                                                                                   i)))
                                                                                                                                          (λ x7898
                                                                                                                                            x7897))))
                                                                                                                                (lp2
                                                                                                                                 10
                                                                                                                                 x7896
                                                                                                                                 x))))
                                                                                                                      g7895))))
                                                                                                          g7887)))))
                                                                                            g7886))))
                                                                                (λ x7899
                                                                                  x7885))))
                                                                      (set! lp1
                                                                        x7884))))
                                                            (letrec ((g7900
                                                                      (lp1
                                                                       10
                                                                       0)))
                                                              g7900))))
                                                  g7883))))
                                      g7882))))
                          g7362))))
              g7360)))
    g7359))
