(letrec ((any? (lambda (v) (letrec ((g7348 #t)) g7348)))
         (meta (lambda (v) (letrec ((g7349 v)) g7349)))
         (member
          (lambda (v lst)
            (letrec ((g7350
                      (letrec ((g7351
                                (letrec ((x-e7352 lst))
                                  (match
                                   x-e7352
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7353 (eq? v v1)))
                                       (if x-cnd7353 #t (member v vs)))))))))
                        g7351)))
              g7350)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7354 (lambda (v) (letrec ((g7355 v)) g7355)))) g7354)))
         (nonzero?
          (lambda (v)
            (letrec ((g7356 (letrec ((x7357 (= v 0))) (not x7357)))) g7356))))
  (letrec ((g7358
            (letrec ((g7359
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7360 '())
                                 (g7361
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7362
                                                        (lambda (k j lst)
                                                          (letrec ((g7363
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7364
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7364))
                                                                     lst)))
                                                            g7363))))
                                                g7362)))
                                           (real?/c
                                            (lambda (g7261 g7262 g7263)
                                              (letrec ((g7365
                                                        (letrec ((x-cnd7366
                                                                  (real?
                                                                   g7263)))
                                                          (if x-cnd7366
                                                            g7263
                                                            (blame
                                                             g7261
                                                             'real?)))))
                                                g7365)))
                                           (boolean?/c
                                            (lambda (g7264 g7265 g7266)
                                              (letrec ((g7367
                                                        (letrec ((x-cnd7368
                                                                  (boolean?
                                                                   g7266)))
                                                          (if x-cnd7368
                                                            g7266
                                                            (blame
                                                             g7264
                                                             'boolean?)))))
                                                g7367)))
                                           (number?/c
                                            (lambda (g7267 g7268 g7269)
                                              (letrec ((g7369
                                                        (letrec ((x-cnd7370
                                                                  (number?
                                                                   g7269)))
                                                          (if x-cnd7370
                                                            g7269
                                                            (blame
                                                             g7267
                                                             'number?)))))
                                                g7369)))
                                           (any/c
                                            (lambda (g7270 g7271 g7272)
                                              (letrec ((g7371
                                                        (letrec ((x-cnd7372
                                                                  ((lambda (v)
                                                                     (letrec ((g7373
                                                                               #t))
                                                                       g7373))
                                                                   g7272)))
                                                          (if x-cnd7372
                                                            g7272
                                                            (blame
                                                             g7270
                                                             '(lambda (v)
                                                                #t))))))
                                                g7371)))
                                           (any?/c
                                            (lambda (g7273 g7274 g7275)
                                              (letrec ((g7374
                                                        (letrec ((x-cnd7375
                                                                  ((lambda (v)
                                                                     (letrec ((g7376
                                                                               #t))
                                                                       g7376))
                                                                   g7275)))
                                                          (if x-cnd7375
                                                            g7275
                                                            (blame
                                                             g7273
                                                             '(lambda (v)
                                                                #t))))))
                                                g7374)))
                                           (cons?/c
                                            (lambda (g7276 g7277 g7278)
                                              (letrec ((g7377
                                                        (letrec ((x-cnd7378
                                                                  (pair?
                                                                   g7278)))
                                                          (if x-cnd7378
                                                            g7278
                                                            (blame
                                                             g7276
                                                             'pair?)))))
                                                g7377)))
                                           (pair?/c
                                            (lambda (g7279 g7280 g7281)
                                              (letrec ((g7379
                                                        (letrec ((x-cnd7380
                                                                  (pair?
                                                                   g7281)))
                                                          (if x-cnd7380
                                                            g7281
                                                            (blame
                                                             g7279
                                                             'pair?)))))
                                                g7379)))
                                           (integer?/c
                                            (lambda (g7282 g7283 g7284)
                                              (letrec ((g7381
                                                        (letrec ((x-cnd7382
                                                                  (integer?
                                                                   g7284)))
                                                          (if x-cnd7382
                                                            g7284
                                                            (blame
                                                             g7282
                                                             'integer?)))))
                                                g7381)))
                                           (symbol?/c
                                            (lambda (g7285 g7286 g7287)
                                              (letrec ((g7383
                                                        (letrec ((x-cnd7384
                                                                  (symbol?
                                                                   g7287)))
                                                          (if x-cnd7384
                                                            g7287
                                                            (blame
                                                             g7285
                                                             'symbol?)))))
                                                g7383)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7385
                                                        (lambda (k j v)
                                                          (letrec ((g7386
                                                                    (letrec ((x-cnd7387
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7387
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7386))))
                                                g7385)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7388
                                                        (lambda (k j v)
                                                          (letrec ((g7389
                                                                    (letrec ((x-cnd7390
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7390
                                                                        '()
                                                                        (letrec ((x7394
                                                                                  (letrec ((x7395
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7395)))
                                                                                 (x7391
                                                                                  (letrec ((x7393
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7392
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7393
                                                                                     k
                                                                                     j
                                                                                     x7392))))
                                                                          (orig-cons
                                                                           x7394
                                                                           x7391))))))
                                                            g7389))))
                                                g7388)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7396 #t)) g7396)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7397
                                                        (letrec ((x7398
                                                                  (= v 0)))
                                                          (not x7398))))
                                                g7397)))
                                           (nonzero?/c
                                            (lambda (g7288 g7289 g7290)
                                              (letrec ((g7399
                                                        (letrec ((x-cnd7400
                                                                  ((lambda (v)
                                                                     (letrec ((g7401
                                                                               (letrec ((x7402
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7402))))
                                                                       g7401))
                                                                   g7290)))
                                                          (if x-cnd7400
                                                            g7290
                                                            (blame
                                                             g7288
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7399)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7403 v)) g7403)))
                                           (+
                                            ((lambda (j7293 k7294 f7295)
                                               (letrec ((g7405
                                                         (lambda (g7291 g7292)
                                                           (letrec ((g7406
                                                                     (letrec ((x7407
                                                                               (letrec ((x7409
                                                                                         (number?/c
                                                                                          j7293
                                                                                          k7294
                                                                                          g7291))
                                                                                        (x7408
                                                                                         (number?/c
                                                                                          j7293
                                                                                          k7294
                                                                                          g7292)))
                                                                                 (f7295
                                                                                  x7409
                                                                                  x7408))))
                                                                       (number?/c
                                                                        j7293
                                                                        k7294
                                                                        x7407))))
                                                             g7406))))
                                                 g7405))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7404 (orig-+ a b)))
                                                 g7404))))
                                           (-
                                            ((lambda (j7298 k7299 f7300)
                                               (letrec ((g7411
                                                         (lambda (g7296 g7297)
                                                           (letrec ((g7412
                                                                     (letrec ((x7413
                                                                               (letrec ((x7415
                                                                                         (number?/c
                                                                                          j7298
                                                                                          k7299
                                                                                          g7296))
                                                                                        (x7414
                                                                                         (number?/c
                                                                                          j7298
                                                                                          k7299
                                                                                          g7297)))
                                                                                 (f7300
                                                                                  x7415
                                                                                  x7414))))
                                                                       (number?/c
                                                                        j7298
                                                                        k7299
                                                                        x7413))))
                                                             g7412))))
                                                 g7411))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7410 (orig-- a b)))
                                                 g7410))))
                                           (*
                                            ((lambda (j7303 k7304 f7305)
                                               (letrec ((g7417
                                                         (lambda (g7301 g7302)
                                                           (letrec ((g7418
                                                                     (letrec ((x7419
                                                                               (letrec ((x7421
                                                                                         (number?/c
                                                                                          j7303
                                                                                          k7304
                                                                                          g7301))
                                                                                        (x7420
                                                                                         (number?/c
                                                                                          j7303
                                                                                          k7304
                                                                                          g7302)))
                                                                                 (f7305
                                                                                  x7421
                                                                                  x7420))))
                                                                       (number?/c
                                                                        j7303
                                                                        k7304
                                                                        x7419))))
                                                             g7418))))
                                                 g7417))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7416 (orig-* a b)))
                                                 g7416))))
                                           (/
                                            ((lambda (j7308 k7309 f7310)
                                               (letrec ((g7423
                                                         (lambda (g7306 g7307)
                                                           (letrec ((g7424
                                                                     (letrec ((x7425
                                                                               (letrec ((x7427
                                                                                         (number?/c
                                                                                          j7308
                                                                                          k7309
                                                                                          g7306))
                                                                                        (x7426
                                                                                         (number?/c
                                                                                          j7308
                                                                                          k7309
                                                                                          g7307)))
                                                                                 (f7310
                                                                                  x7427
                                                                                  x7426))))
                                                                       (number?/c
                                                                        j7308
                                                                        k7309
                                                                        x7425))))
                                                             g7424))))
                                                 g7423))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7422 (orig-/ a b)))
                                                 g7422))))
                                           (car
                                            ((lambda (j7312 k7313 f7314)
                                               (letrec ((g7429
                                                         (lambda (g7311)
                                                           (letrec ((g7430
                                                                     (letrec ((x7431
                                                                               (letrec ((x7432
                                                                                         (pair?/c
                                                                                          j7312
                                                                                          k7313
                                                                                          g7311)))
                                                                                 (f7314
                                                                                  x7432))))
                                                                       (any/c
                                                                        j7312
                                                                        k7313
                                                                        x7431))))
                                                             g7430))))
                                                 g7429))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7428 (orig-car p)))
                                                 g7428))))
                                           (cdr
                                            ((lambda (j7316 k7317 f7318)
                                               (letrec ((g7434
                                                         (lambda (g7315)
                                                           (letrec ((g7435
                                                                     (letrec ((x7436
                                                                               (letrec ((x7437
                                                                                         (pair?/c
                                                                                          j7316
                                                                                          k7317
                                                                                          g7315)))
                                                                                 (f7318
                                                                                  x7437))))
                                                                       (any/c
                                                                        j7316
                                                                        k7317
                                                                        x7436))))
                                                             g7435))))
                                                 g7434))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7433 (orig-cdr p)))
                                                 g7433))))
                                           (cons
                                            ((lambda (j7321 k7322 f7323)
                                               (letrec ((g7439
                                                         (lambda (g7319 g7320)
                                                           (letrec ((g7440
                                                                     (letrec ((x7441
                                                                               (letrec ((x7443
                                                                                         (any/c
                                                                                          j7321
                                                                                          k7322
                                                                                          g7319))
                                                                                        (x7442
                                                                                         (any/c
                                                                                          j7321
                                                                                          k7322
                                                                                          g7320)))
                                                                                 (f7323
                                                                                  x7443
                                                                                  x7442))))
                                                                       (pair?/c
                                                                        j7321
                                                                        k7322
                                                                        x7441))))
                                                             g7440))))
                                                 g7439))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7438
                                                         (orig-cons a b)))
                                                 g7438))))
                                           (vector-ref
                                            ((lambda (j7325 k7326 f7327)
                                               (letrec ((g7445
                                                         (lambda (g7324)
                                                           (letrec ((g7446
                                                                     (letrec ((x7447
                                                                               (letrec ((x7448
                                                                                         (vector?/c
                                                                                          j7325
                                                                                          k7326
                                                                                          g7324)))
                                                                                 (f7327
                                                                                  x7448))))
                                                                       (integer?/c
                                                                        j7325
                                                                        k7326
                                                                        x7447))))
                                                             g7446))))
                                                 g7445))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7444
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7444))))
                                           (vector-set!
                                            ((lambda (j7330 k7331 f7332)
                                               (letrec ((g7450
                                                         (lambda (g7328 g7329)
                                                           (letrec ((g7451
                                                                     (letrec ((x7452
                                                                               (letrec ((x7454
                                                                                         (vector?/c
                                                                                          j7330
                                                                                          k7331
                                                                                          g7328))
                                                                                        (x7453
                                                                                         (integer?/c
                                                                                          j7330
                                                                                          k7331
                                                                                          g7329)))
                                                                                 (f7332
                                                                                  x7454
                                                                                  x7453))))
                                                                       (any/c
                                                                        j7330
                                                                        k7331
                                                                        x7452))))
                                                             g7451))))
                                                 g7450))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7449
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7449))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7455
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7455)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7456
                                                        (letrec ((x7457
                                                                  (letrec ((x7458
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7458))))
                                                          (cdr x7457))))
                                                g7456)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7459
                                                        (letrec ((x7462
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7462)))
                                                       (g7460
                                                        (letrec ((x7463
                                                                  (list? l)))
                                                          (assert x7463)))
                                                       (g7461
                                                        (letrec ((x-cnd7464
                                                                  (null? l)))
                                                          (if x-cnd7464
                                                            '()
                                                            (letrec ((x7467
                                                                      (letrec ((x7468
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7468)))
                                                                     (x7465
                                                                      (letrec ((x7466
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7466))))
                                                              (cons
                                                               x7467
                                                               x7465))))))
                                                g7461)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7469
                                                        (letrec ((x7470
                                                                  (car x)))
                                                          (cdr x7470))))
                                                g7469)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7471
                                                        (letrec ((x7472
                                                                  (letrec ((x7473
                                                                            (letrec ((x7474
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7474))))
                                                                    (cdr
                                                                     x7473))))
                                                          (car x7472))))
                                                g7471)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7475
                                                        (letrec ((x7476
                                                                  (letrec ((x7477
                                                                            (letrec ((x7478
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7478))))
                                                                    (car
                                                                     x7477))))
                                                          (cdr x7476))))
                                                g7475)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7479
                                                        (letrec ((x7482
                                                                  (string?
                                                                   filename)))
                                                          (assert x7482)))
                                                       (g7480
                                                        (letrec ((x7483
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7483)))
                                                       (g7481
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7484
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7485 res))
                                                            g7485))))
                                                g7481)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7486
                                                        (letrec ((x7487
                                                                  (letrec ((x7488
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7488))))
                                                          (car x7487))))
                                                g7486)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7489
                                                        (letrec ((x7490
                                                                  (letrec ((x7491
                                                                            (letrec ((x7492
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7492))))
                                                                    (car
                                                                     x7491))))
                                                          (cdr x7490))))
                                                g7489)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7493
                                                        (letrec ((x7495
                                                                  (list? l)))
                                                          (assert x7495)))
                                                       (g7494
                                                        (letrec ((x-cnd7496
                                                                  (null? l)))
                                                          (if x-cnd7496
                                                            #f
                                                            (letrec ((x-cnd7497
                                                                      (letrec ((x7498
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7498
                                                                         k))))
                                                              (if x-cnd7497
                                                                (car l)
                                                                (letrec ((x7499
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7499))))))))
                                                g7494)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7500
                                                        (letrec ((x7501
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7501))))
                                                g7500)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7502
                                                        (letrec ((x7504
                                                                  (list? l)))
                                                          (assert x7504)))
                                                       (g7503
                                                        (letrec ((x-cnd7505
                                                                  (null? l)))
                                                          (if x-cnd7505
                                                            ""
                                                            (letrec ((x7508
                                                                      (letrec ((x7509
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7509)))
                                                                     (x7506
                                                                      (letrec ((x7507
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7507))))
                                                              (string-append
                                                               x7508
                                                               x7506))))))
                                                g7503)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7510
                                                        (letrec ((x7513
                                                                  (char? c1)))
                                                          (assert x7513)))
                                                       (g7511
                                                        (letrec ((x7514
                                                                  (char? c2)))
                                                          (assert x7514)))
                                                       (g7512
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7515
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7515))))
                                                g7512)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7516
                                                        (letrec ((x7517
                                                                  (letrec ((x7518
                                                                            (letrec ((x7519
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7519))))
                                                                    (cdr
                                                                     x7518))))
                                                          (cdr x7517))))
                                                g7516)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7520
                                                        (letrec ((x7523
                                                                  (list? l)))
                                                          (assert x7523)))
                                                       (g7521
                                                        (letrec ((x7524
                                                                  (number?)))
                                                          (assert x7524)))
                                                       (g7522
                                                        (letrec ((x-cnd7525
                                                                  (zero? k)))
                                                          (if x-cnd7525
                                                            x
                                                            (letrec ((x7527
                                                                      (cdr x))
                                                                     (x7526
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7527
                                                               x7526))))))
                                                g7522)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7528 '())) g7528)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7529
                                                        (letrec ((x-cnd7530
                                                                  (letrec ((x7531
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7531))))
                                                          (if x-cnd7530
                                                            (letrec ((x7532
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7532))
                                                            #f))))
                                                g7529)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7533
                                                        (letrec ((x7535
                                                                  (number? x)))
                                                          (assert x7535)))
                                                       (g7534
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7536
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7537
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7537)))))
                                                            g7536))))
                                                g7534)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7538
                                                        (letrec ((val7244
                                                                  (letrec ((x7539
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7539
                                                                     9))))
                                                          (letrec ((g7540
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7541
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7541
                                                                                   10))))
                                                                        (letrec ((g7542
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7543
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7543
                                                                                       32)))))
                                                                          g7542)))))
                                                            g7540))))
                                                g7538)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7544
                                                        (letrec ((x7545
                                                                  (letrec ((x7546
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7546))))
                                                          (cdr x7545))))
                                                g7544)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7547
                                                        (letrec ((x7549
                                                                  (number? x)))
                                                          (assert x7549)))
                                                       (g7548 (> x 0)))
                                                g7548)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7550 #f)) g7550)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7551
                                                        (letrec ((x7552
                                                                  (cdr x)))
                                                          (cdr x7552))))
                                                g7551)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7553
                                                        (letrec ((x7555
                                                                  (number? x)))
                                                          (assert x7555)))
                                                       (g7554
                                                        (letrec ((x-cnd7556
                                                                  (< x 0)))
                                                          (if x-cnd7556
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7554)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7557
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7558
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7559
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7559
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7560
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7561
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7561
                                                                                                  (letrec ((x-cnd7562
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7562
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7563
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7564
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7564
                                                                                                                (letrec ((x-cnd7565
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7565
                                                                                                                    (letrec ((x-cnd7566
                                                                                                                              (letrec ((x7568
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7567
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7568
                                                                                                                                 x7567))))
                                                                                                                      (if x-cnd7566
                                                                                                                        (letrec ((x7570
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7569
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7570
                                                                                                                           x7569))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7571
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7572
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7572
                                                                                                                    (letrec ((x-cnd7573
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7573
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7574
                                                                                                                                    (letrec ((x-cnd7575
                                                                                                                                              (letrec ((x7576
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7576
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7575
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7577
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7578
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7579
                                                                                                                                                                                      (letrec ((x7581
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7580
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7581
                                                                                                                                                                                         x7580))))
                                                                                                                                                                              (if x-cnd7579
                                                                                                                                                                                (letrec ((x7582
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7582))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7578))))
                                                                                                                                                      g7577))))
                                                                                                                                          (letrec ((g7583
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7583))
                                                                                                                                        #f))))
                                                                                                                            g7574))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7571)))))
                                                                                        g7563)))))
                                                                          g7560)))))
                                                            g7558))))
                                                g7557)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7584
                                                        (letrec ((x7585
                                                                  (letrec ((x7586
                                                                            (letrec ((x7587
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7587))))
                                                                    (car
                                                                     x7586))))
                                                          (cdr x7585))))
                                                g7584)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7588
                                                        (letrec ((x7589
                                                                  (letrec ((x7590
                                                                            (letrec ((x7591
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7591))))
                                                                    (car
                                                                     x7590))))
                                                          (car x7589))))
                                                g7588)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7592 (eq? x y)))
                                                g7592)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7593
                                                        (letrec ((x7595
                                                                  (number? x)))
                                                          (assert x7595)))
                                                       (g7594
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7596
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7597
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7597)))))
                                                            g7596))))
                                                g7594)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7598
                                                        (letrec ((x7601
                                                                  (string?
                                                                   filename)))
                                                          (assert x7601)))
                                                       (g7599
                                                        (letrec ((x7602
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7602)))
                                                       (g7600
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7603
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7604 res))
                                                            g7604))))
                                                g7600)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7605 (cons x '())))
                                                g7605)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7606
                                                        (letrec ((x7609
                                                                  (char? c1)))
                                                          (assert x7609)))
                                                       (g7607
                                                        (letrec ((x7610
                                                                  (char? c2)))
                                                          (assert x7610)))
                                                       (g7608
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7611
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7611))))
                                                g7608)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7612
                                                        (letrec ((x7613
                                                                  (letrec ((x7614
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7614))))
                                                          (cdr x7613))))
                                                g7612)))
                                           (cdaddr
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
                                                          (cdr x7616))))
                                                g7615)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7619
                                                        (letrec ((x7620
                                                                  (letrec ((x7621
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7621))))
                                                          (car x7620))))
                                                g7619)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7622
                                                        (letrec ((x7623
                                                                  (letrec ((x7624
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7624))))
                                                          (car x7623))))
                                                g7622)))
                                           (char-ci>?
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
                                                        (letrec ((x7630
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7630))))
                                                g7627)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7631
                                                        (letrec ((x7632
                                                                  (letrec ((x7633
                                                                            (letrec ((x7634
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7634))))
                                                                    (car
                                                                     x7633))))
                                                          (car x7632))))
                                                g7631)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7635
                                                        (letrec ((x7637
                                                                  (number? x)))
                                                          (assert x7637)))
                                                       (g7636 (< x 0)))
                                                g7636)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7638 (memq e l)))
                                                g7638)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7639
                                                        (letrec ((x7640
                                                                  (letrec ((x7641
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7641))))
                                                          (car x7640))))
                                                g7639)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7642 '())) g7642)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7643
                                                        (letrec ((x7645
                                                                  (list? l)))
                                                          (assert x7645)))
                                                       (g7644
                                                        (letrec ((x-cnd7646
                                                                  (null? l)))
                                                          (if x-cnd7646
                                                            '()
                                                            (letrec ((x7649
                                                                      (letrec ((x7650
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7650)))
                                                                     (x7647
                                                                      (letrec ((x7648
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7648))))
                                                              (append
                                                               x7649
                                                               x7647))))))
                                                g7644)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7651
                                                        (letrec ((x7652
                                                                  (letrec ((x7653
                                                                            (letrec ((x7654
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7654))))
                                                                    (car
                                                                     x7653))))
                                                          (car x7652))))
                                                g7651)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7655
                                                        (letrec ((x7656
                                                                  (letrec ((x7657
                                                                            (letrec ((x7658
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7658))))
                                                                    (cdr
                                                                     x7657))))
                                                          (cdr x7656))))
                                                g7655)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7659
                                                        (letrec ((x7661
                                                                  (number? x)))
                                                          (assert x7661)))
                                                       (g7660
                                                        (letrec ((x7662
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7662))))
                                                g7660)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7663
                                                        (letrec ((x7664
                                                                  (letrec ((x7665
                                                                            (letrec ((x7666
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7666))))
                                                                    (car
                                                                     x7665))))
                                                          (car x7664))))
                                                g7663)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7667
                                                        (letrec ((x7670
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7670)))
                                                       (g7668
                                                        (letrec ((x7671
                                                                  (list?
                                                                   args)))
                                                          (assert x7671)))
                                                       (g7669
                                                        (letrec ((x-cnd7672
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7672
                                                            (letrec ((g7673
                                                                      (proc)))
                                                              g7673)
                                                            (letrec ((x-cnd7674
                                                                      (letrec ((x7675
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7675))))
                                                              (if x-cnd7674
                                                                (letrec ((g7676
                                                                          (letrec ((x7677
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7677))))
                                                                  g7676)
                                                                (letrec ((x-cnd7678
                                                                          (letrec ((x7679
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7679))))
                                                                  (if x-cnd7678
                                                                    (letrec ((g7680
                                                                              (letrec ((x7682
                                                                                        (car
                                                                                         args))
                                                                                       (x7681
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7682
                                                                                 x7681))))
                                                                      g7680)
                                                                    (letrec ((x-cnd7683
                                                                              (letrec ((x7684
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7684))))
                                                                      (if x-cnd7683
                                                                        (letrec ((g7685
                                                                                  (letrec ((x7688
                                                                                            (car
                                                                                             args))
                                                                                           (x7687
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7686
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7688
                                                                                     x7687
                                                                                     x7686))))
                                                                          g7685)
                                                                        (letrec ((x-cnd7689
                                                                                  (letrec ((x7690
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7690))))
                                                                          (if x-cnd7689
                                                                            (letrec ((g7691
                                                                                      (letrec ((x7695
                                                                                                (car
                                                                                                 args))
                                                                                               (x7694
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7693
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7692
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7695
                                                                                         x7694
                                                                                         x7693
                                                                                         x7692))))
                                                                              g7691)
                                                                            (letrec ((x-cnd7696
                                                                                      (letrec ((x7697
                                                                                                (letrec ((x7698
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7698))))
                                                                                        (null?
                                                                                         x7697))))
                                                                              (if x-cnd7696
                                                                                (letrec ((g7699
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
                                                                                                     args))
                                                                                                   (x7700
                                                                                                    (letrec ((x7701
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7701))))
                                                                                            (proc
                                                                                             x7705
                                                                                             x7704
                                                                                             x7703
                                                                                             x7702
                                                                                             x7700))))
                                                                                  g7699)
                                                                                (letrec ((x-cnd7706
                                                                                          (letrec ((x7707
                                                                                                    (letrec ((x7708
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7708))))
                                                                                            (null?
                                                                                             x7707))))
                                                                                  (if x-cnd7706
                                                                                    (letrec ((g7709
                                                                                              (letrec ((x7717
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7716
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7715
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7714
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7712
                                                                                                        (letrec ((x7713
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7713)))
                                                                                                       (x7710
                                                                                                        (letrec ((x7711
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7711))))
                                                                                                (proc
                                                                                                 x7717
                                                                                                 x7716
                                                                                                 x7715
                                                                                                 x7714
                                                                                                 x7712
                                                                                                 x7710))))
                                                                                      g7709)
                                                                                    (letrec ((x-cnd7718
                                                                                              (letrec ((x7719
                                                                                                        (letrec ((x7720
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7720))))
                                                                                                (null?
                                                                                                 x7719))))
                                                                                      (if x-cnd7718
                                                                                        (letrec ((g7721
                                                                                                  (letrec ((x7731
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7730
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7729
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7728
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7726
                                                                                                            (letrec ((x7727
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7727)))
                                                                                                           (x7724
                                                                                                            (letrec ((x7725
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7725)))
                                                                                                           (x7722
                                                                                                            (letrec ((x7723
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7723))))
                                                                                                    (proc
                                                                                                     x7731
                                                                                                     x7730
                                                                                                     x7729
                                                                                                     x7728
                                                                                                     x7726
                                                                                                     x7724
                                                                                                     x7722))))
                                                                                          g7721)
                                                                                        (letrec ((g7732
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7732)))))))))))))))))))
                                                g7669)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7733
                                                        (letrec ((x7735
                                                                  (list? l)))
                                                          (assert x7735)))
                                                       (g7734
                                                        (letrec ((x-cnd7736
                                                                  (null? l)))
                                                          (if x-cnd7736
                                                            #f
                                                            (letrec ((x-cnd7737
                                                                      (letrec ((x7738
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7738
                                                                         e))))
                                                              (if x-cnd7737
                                                                l
                                                                (letrec ((x7739
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7739))))))))
                                                g7734)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7740
                                                        (letrec ((x7741
                                                                  (letrec ((x7742
                                                                            (letrec ((x7743
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7743))))
                                                                    (cdr
                                                                     x7742))))
                                                          (cdr x7741))))
                                                g7740)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7744
                                                        (letrec ((x7745
                                                                  (letrec ((x7746
                                                                            (letrec ((x7747
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7747))))
                                                                    (cdr
                                                                     x7746))))
                                                          (car x7745))))
                                                g7744)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7748 (random 42)))
                                                g7748)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7749
                                                        (letrec ((x7751
                                                                  (number? x)))
                                                          (assert x7751)))
                                                       (g7750 (= x 0)))
                                                g7750)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7752
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7753
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7753))))
                                                g7752)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7754
                                                        (letrec ((x7755
                                                                  (cdr x)))
                                                          (car x7755))))
                                                g7754)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7756
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd7757
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7757
                                                                      (letrec ((x7758
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7758))
                                                                      #f))))
                                                          (letrec ((g7759
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g7759))))
                                                g7756)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7760
                                                        (letrec ((x7761
                                                                  (letrec ((x7762
                                                                            (letrec ((x7763
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7763))))
                                                                    (cdr
                                                                     x7762))))
                                                          (cdr x7761))))
                                                g7760)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7764
                                                        (letrec ((x-cnd7765
                                                                  (letrec ((x7766
                                                                            #\0))
                                                                    (char<=?
                                                                     x7766
                                                                     c))))
                                                          (if x-cnd7765
                                                            (letrec ((x7767
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7767))
                                                            #f))))
                                                g7764)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7768
                                                        (letrec ((x7770
                                                                  (list? l)))
                                                          (assert x7770)))
                                                       (g7769
                                                        (letrec ((x-cnd7771
                                                                  (null? l)))
                                                          (if x-cnd7771
                                                            #f
                                                            (letrec ((x-cnd7772
                                                                      (letrec ((x7773
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7773
                                                                         k))))
                                                              (if x-cnd7772
                                                                (car l)
                                                                (letrec ((x7774
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7774))))))))
                                                g7769)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7775 (if x #f #t)))
                                                g7775)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7776 (append l1 l2)))
                                                g7776)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7777
                                                        (letrec ((x7779
                                                                  (list? l)))
                                                          (assert x7779)))
                                                       (g7778
                                                        (letrec ((x-cnd7780
                                                                  (null? l)))
                                                          (if x-cnd7780
                                                            #f
                                                            (letrec ((x-cnd7781
                                                                      (letrec ((x7782
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7782
                                                                         e))))
                                                              (if x-cnd7781
                                                                l
                                                                (letrec ((x7783
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7783))))))))
                                                g7778)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7784
                                                        (letrec ((x7785
                                                                  (letrec ((x7786
                                                                            (letrec ((x7787
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7787))))
                                                                    (cdr
                                                                     x7786))))
                                                          (car x7785))))
                                                g7784)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7788
                                                        (letrec ((x7790
                                                                  (list? l)))
                                                          (assert x7790)))
                                                       (g7789
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7791
                                                                              (letrec ((x-cnd7792
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7792
                                                                                  0
                                                                                  (letrec ((x7793
                                                                                            (letrec ((x7794
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7794))))
                                                                                    (+
                                                                                     1
                                                                                     x7793))))))
                                                                      g7791))))
                                                          (letrec ((g7795
                                                                    (rec l)))
                                                            g7795))))
                                                g7789)))
                                           (char-ci<=?
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
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7801
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7801))))
                                                g7798)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7802
                                                        (letrec ((x7803
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7803))))
                                                g7802)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7804
                                                        (letrec ((x7805
                                                                  (letrec ((x7806
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7806))))
                                                          (cdr x7805))))
                                                g7804)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7807
                                                        (letrec ((x7809
                                                                  (list? l)))
                                                          (assert x7809)))
                                                       (g7808
                                                        (letrec ((x-cnd7810
                                                                  (null? l)))
                                                          (if x-cnd7810
                                                            #f
                                                            (letrec ((x-cnd7811
                                                                      (letrec ((x7812
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7812
                                                                         k))))
                                                              (if x-cnd7811
                                                                (car l)
                                                                (letrec ((x7813
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7813))))))))
                                                g7808)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7814
                                                        (letrec ((x7815
                                                                  (car x)))
                                                          (car x7815))))
                                                g7814)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7816
                                                        (letrec ((x7819
                                                                  (char? c1)))
                                                          (assert x7819)))
                                                       (g7817
                                                        (letrec ((x7820
                                                                  (char? c2)))
                                                          (assert x7820)))
                                                       (g7818
                                                        (letrec ((x7821
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7821))))
                                                g7818)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7822
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7823
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7823))))
                                                g7822)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7824
                                                        (letrec ((x7827
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7827)))
                                                       (g7825
                                                        (letrec ((x7828
                                                                  (list? l)))
                                                          (assert x7828)))
                                                       (g7826
                                                        (letrec ((x-cnd7829
                                                                  (null? l)))
                                                          (if x-cnd7829
                                                            #t
                                                            (letrec ((x-cnd7830
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7830
                                                                (letrec ((g7831
                                                                          (letrec ((x7833
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7833)))
                                                                         (g7832
                                                                          (letrec ((x7834
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7834))))
                                                                  g7832)
                                                                '()))))))
                                                g7826)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7835
                                                        (letrec ((x7837
                                                                  (number? x)))
                                                          (assert x7837)))
                                                       (g7836
                                                        (letrec ((x-cnd7838
                                                                  (< x 0)))
                                                          (if x-cnd7838
                                                            (- 0 x)
                                                            x))))
                                                g7836)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7839
                                                        (letrec ((x7842
                                                                  (char? c1)))
                                                          (assert x7842)))
                                                       (g7840
                                                        (letrec ((x7843
                                                                  (char? c2)))
                                                          (assert x7843)))
                                                       (g7841
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7844
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7844))))
                                                g7841)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7845
                                                        (letrec ((x7846
                                                                  (letrec ((x7847
                                                                            (letrec ((x7848
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7848))))
                                                                    (cdr
                                                                     x7847))))
                                                          (car x7846))))
                                                g7845)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7849 #f)) g7849)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7850
                                                        (letrec ((x7852
                                                                  (letrec ((x7853
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7853)))
                                                                 (x7851
                                                                  (gcd m n)))
                                                          (/ x7852 x7851))))
                                                g7850)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7854
                                                        (letrec ((x7856
                                                                  (number? x)))
                                                          (assert x7856)))
                                                       (g7855
                                                        (letrec ((x7857
                                                                  (<= x y)))
                                                          (not x7857))))
                                                g7855)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7858
                                                        (letrec ((x7862
                                                                  (list? l)))
                                                          (assert x7862)))
                                                       (g7859
                                                        (letrec ((x7863
                                                                  (number?
                                                                   index)))
                                                          (assert x7863)))
                                                       (g7860
                                                        (letrec ((x7864
                                                                  (letrec ((x7865
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7865))))
                                                          (assert x7864)))
                                                       (g7861
                                                        (letrec ((x-cnd7866
                                                                  (= index 0)))
                                                          (if x-cnd7866
                                                            (car l)
                                                            (letrec ((x7868
                                                                      (cdr l))
                                                                     (x7867
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7868
                                                               x7867))))))
                                                g7861)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7869
                                                        (letrec ((x-cnd7870
                                                                  (= b 0)))
                                                          (if x-cnd7870
                                                            a
                                                            (letrec ((x7871
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7871))))))
                                                g7869)))
                                           (mk-list
                                            (lambda (n x)
                                              (letrec ((g7872
                                                        (letrec ((x-cnd7873
                                                                  (< n 0)))
                                                          (if x-cnd7873
                                                            empty
                                                            (letrec ((x7874
                                                                      (letrec ((x7875
                                                                                (-
                                                                                 n
                                                                                 1)))
                                                                        (mk-list
                                                                         x7875
                                                                         x))))
                                                              (cons
                                                               x
                                                               x7874))))))
                                                g7872)))
                                           (mem
                                            (lambda (x xs)
                                              (letrec ((g7876
                                                        (letrec ((x-cnd7877
                                                                  (empty? xs)))
                                                          (if x-cnd7877
                                                            #f
                                                            (letrec ((val7259
                                                                      (letrec ((x7878
                                                                                (car
                                                                                 xs)))
                                                                        (=
                                                                         x
                                                                         x7878))))
                                                              (letrec ((g7879
                                                                        (if val7259
                                                                          val7259
                                                                          (letrec ((x7880
                                                                                    (cdr
                                                                                     xs)))
                                                                            (mem
                                                                             x
                                                                             x7880)))))
                                                                g7879))))))
                                                g7876))))
                                    (letrec ((g7881
                                              ((lambda (j7335 k7336 f7337)
                                                 (letrec ((g7883
                                                           (lambda (g7333
                                                                    g7334)
                                                             (letrec ((g7884
                                                                       (letrec ((x7338
                                                                                 (integer?/c
                                                                                  j7335
                                                                                  k7336
                                                                                  g7333))
                                                                                (x7339
                                                                                 (integer?/c
                                                                                  j7335
                                                                                  k7336
                                                                                  g7334)))
                                                                         (letrec ((g7885
                                                                                   (letrec ((x7887
                                                                                             ((lambda (_
                                                                                                       x)
                                                                                                (letrec ((g7888
                                                                                                          (letrec ((x7893
                                                                                                                    (listof
                                                                                                                     integer?/c)))
                                                                                                            (and/c
                                                                                                             x7893
                                                                                                             (lambda (g7340
                                                                                                                      g7341
                                                                                                                      g7342)
                                                                                                               (letrec ((g7889
                                                                                                                         (letrec ((x-cnd7890
                                                                                                                                   ((lambda (l)
                                                                                                                                      (letrec ((g7891
                                                                                                                                                (letrec ((val7260
                                                                                                                                                          (empty?
                                                                                                                                                           l)))
                                                                                                                                                  (letrec ((g7892
                                                                                                                                                            (if val7260
                                                                                                                                                              val7260
                                                                                                                                                              (member
                                                                                                                                                               x
                                                                                                                                                               l))))
                                                                                                                                                    g7892))))
                                                                                                                                        g7891))
                                                                                                                                    g7342)))
                                                                                                                           (if x-cnd7890
                                                                                                                             g7342
                                                                                                                             (blame
                                                                                                                              g7340
                                                                                                                              '(lambda (l)
                                                                                                                                 (letrec ((val7260
                                                                                                                                           (empty?
                                                                                                                                            l)))
                                                                                                                                   (if val7260
                                                                                                                                     val7260
                                                                                                                                     (member
                                                                                                                                      x
                                                                                                                                      l)))))))))
                                                                                                                 g7889))))))
                                                                                                  g7888))
                                                                                              x7338
                                                                                              x7339))
                                                                                            (x7886
                                                                                             (f7337
                                                                                              x7338
                                                                                              x7339)))
                                                                                     (x7887
                                                                                      j7335
                                                                                      k7336
                                                                                      x7886))))
                                                                           g7885))))
                                                               g7884))))
                                                   g7883))
                                               'module
                                               'importer
                                               mk-list))
                                             (g7882
                                              (letrec ((x7896
                                                        ((lambda (j7345
                                                                  k7346
                                                                  f7347)
                                                           (letrec ((g7897
                                                                     (lambda (g7343
                                                                              g7344)
                                                                       (letrec ((g7898
                                                                                 (letrec ((x7899
                                                                                           (letrec ((x7902
                                                                                                     (integer?/c
                                                                                                      j7345
                                                                                                      k7346
                                                                                                      g7343))
                                                                                                    (x7900
                                                                                                     (letrec ((x7901
                                                                                                               (listof
                                                                                                                integer?/c)))
                                                                                                       (x7901
                                                                                                        j7345
                                                                                                        k7346
                                                                                                        g7344))))
                                                                                             (f7347
                                                                                              x7902
                                                                                              x7900))))
                                                                                   (boolean?/c
                                                                                    j7345
                                                                                    k7346
                                                                                    x7899))))
                                                                         g7898))))
                                                             g7897))
                                                         'module
                                                         'importer
                                                         mem))
                                                       (x7895 (input))
                                                       (x7894 (input)))
                                                (x7896 x7895 x7894))))
                                      g7882))))
                          g7361))))
              g7359)))
    g7358))
