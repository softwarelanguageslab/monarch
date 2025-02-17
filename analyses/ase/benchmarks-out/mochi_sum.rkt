(letrec ((any? (lambda (v) (letrec ((g7336 #t)) g7336)))
         (meta (lambda (v) (letrec ((g7337 v)) g7337)))
         (member
          (lambda (v lst)
            (letrec ((g7338
                      (letrec ((g7339
                                (letrec ((x-e7340 lst))
                                  (match
                                   x-e7340
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7341 (eq? v v1)))
                                       (if x-cnd7341 #t (member v vs)))))))))
                        g7339)))
              g7338)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7342 (lambda (v) (letrec ((g7343 v)) g7343)))) g7342)))
         (nonzero?
          (lambda (v)
            (letrec ((g7344 (letrec ((x7345 (= v 0))) (not x7345)))) g7344))))
  (letrec ((g7346
            (letrec ((g7347
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7348 '())
                                 (g7349
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7350
                                                        (lambda (k j lst)
                                                          (letrec ((g7351
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7352
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7352))
                                                                     lst)))
                                                            g7351))))
                                                g7350)))
                                           (real?/c
                                            (lambda (g7259 g7260 g7261)
                                              (letrec ((g7353
                                                        (letrec ((x-cnd7354
                                                                  (real?
                                                                   g7261)))
                                                          (if x-cnd7354
                                                            g7261
                                                            (blame
                                                             g7259
                                                             'real?)))))
                                                g7353)))
                                           (boolean?/c
                                            (lambda (g7262 g7263 g7264)
                                              (letrec ((g7355
                                                        (letrec ((x-cnd7356
                                                                  (boolean?
                                                                   g7264)))
                                                          (if x-cnd7356
                                                            g7264
                                                            (blame
                                                             g7262
                                                             'boolean?)))))
                                                g7355)))
                                           (number?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7357
                                                        (letrec ((x-cnd7358
                                                                  (number?
                                                                   g7267)))
                                                          (if x-cnd7358
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'number?)))))
                                                g7357)))
                                           (any/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7359
                                                        (letrec ((x-cnd7360
                                                                  ((lambda (v)
                                                                     (letrec ((g7361
                                                                               #t))
                                                                       g7361))
                                                                   g7270)))
                                                          (if x-cnd7360
                                                            g7270
                                                            (blame
                                                             g7268
                                                             '(lambda (v)
                                                                #t))))))
                                                g7359)))
                                           (any?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7362
                                                        (letrec ((x-cnd7363
                                                                  ((lambda (v)
                                                                     (letrec ((g7364
                                                                               #t))
                                                                       g7364))
                                                                   g7273)))
                                                          (if x-cnd7363
                                                            g7273
                                                            (blame
                                                             g7271
                                                             '(lambda (v)
                                                                #t))))))
                                                g7362)))
                                           (cons?/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7365
                                                        (letrec ((x-cnd7366
                                                                  (pair?
                                                                   g7276)))
                                                          (if x-cnd7366
                                                            g7276
                                                            (blame
                                                             g7274
                                                             'pair?)))))
                                                g7365)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7367
                                                        (letrec ((x-cnd7368
                                                                  (pair?
                                                                   g7279)))
                                                          (if x-cnd7368
                                                            g7279
                                                            (blame
                                                             g7277
                                                             'pair?)))))
                                                g7367)))
                                           (integer?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7369
                                                        (letrec ((x-cnd7370
                                                                  (integer?
                                                                   g7282)))
                                                          (if x-cnd7370
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'integer?)))))
                                                g7369)))
                                           (symbol?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7371
                                                        (letrec ((x-cnd7372
                                                                  (symbol?
                                                                   g7285)))
                                                          (if x-cnd7372
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'symbol?)))))
                                                g7371)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7373
                                                        (lambda (k j v)
                                                          (letrec ((g7374
                                                                    (letrec ((x-cnd7375
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7375
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7374))))
                                                g7373)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7376
                                                        (lambda (k j v)
                                                          (letrec ((g7377
                                                                    (letrec ((x-cnd7378
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7378
                                                                        '()
                                                                        (letrec ((x7382
                                                                                  (letrec ((x7383
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7383)))
                                                                                 (x7379
                                                                                  (letrec ((x7381
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7380
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7381
                                                                                     k
                                                                                     j
                                                                                     x7380))))
                                                                          (orig-cons
                                                                           x7382
                                                                           x7379))))))
                                                            g7377))))
                                                g7376)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7384 #t)) g7384)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7385
                                                        (letrec ((x7386
                                                                  (= v 0)))
                                                          (not x7386))))
                                                g7385)))
                                           (nonzero?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7387
                                                        (letrec ((x-cnd7388
                                                                  ((lambda (v)
                                                                     (letrec ((g7389
                                                                               (letrec ((x7390
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7390))))
                                                                       g7389))
                                                                   g7288)))
                                                          (if x-cnd7388
                                                            g7288
                                                            (blame
                                                             g7286
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7387)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7391 v)) g7391)))
                                           (+
                                            ((lambda (j7291 k7292 f7293)
                                               (letrec ((g7393
                                                         (lambda (g7289 g7290)
                                                           (letrec ((g7394
                                                                     (letrec ((x7395
                                                                               (letrec ((x7397
                                                                                         (number?/c
                                                                                          j7291
                                                                                          k7292
                                                                                          g7289))
                                                                                        (x7396
                                                                                         (number?/c
                                                                                          j7291
                                                                                          k7292
                                                                                          g7290)))
                                                                                 (f7293
                                                                                  x7397
                                                                                  x7396))))
                                                                       (number?/c
                                                                        j7291
                                                                        k7292
                                                                        x7395))))
                                                             g7394))))
                                                 g7393))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7392 (orig-+ a b)))
                                                 g7392))))
                                           (-
                                            ((lambda (j7296 k7297 f7298)
                                               (letrec ((g7399
                                                         (lambda (g7294 g7295)
                                                           (letrec ((g7400
                                                                     (letrec ((x7401
                                                                               (letrec ((x7403
                                                                                         (number?/c
                                                                                          j7296
                                                                                          k7297
                                                                                          g7294))
                                                                                        (x7402
                                                                                         (number?/c
                                                                                          j7296
                                                                                          k7297
                                                                                          g7295)))
                                                                                 (f7298
                                                                                  x7403
                                                                                  x7402))))
                                                                       (number?/c
                                                                        j7296
                                                                        k7297
                                                                        x7401))))
                                                             g7400))))
                                                 g7399))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7398 (orig-- a b)))
                                                 g7398))))
                                           (*
                                            ((lambda (j7301 k7302 f7303)
                                               (letrec ((g7405
                                                         (lambda (g7299 g7300)
                                                           (letrec ((g7406
                                                                     (letrec ((x7407
                                                                               (letrec ((x7409
                                                                                         (number?/c
                                                                                          j7301
                                                                                          k7302
                                                                                          g7299))
                                                                                        (x7408
                                                                                         (number?/c
                                                                                          j7301
                                                                                          k7302
                                                                                          g7300)))
                                                                                 (f7303
                                                                                  x7409
                                                                                  x7408))))
                                                                       (number?/c
                                                                        j7301
                                                                        k7302
                                                                        x7407))))
                                                             g7406))))
                                                 g7405))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7404 (orig-* a b)))
                                                 g7404))))
                                           (/
                                            ((lambda (j7306 k7307 f7308)
                                               (letrec ((g7411
                                                         (lambda (g7304 g7305)
                                                           (letrec ((g7412
                                                                     (letrec ((x7413
                                                                               (letrec ((x7415
                                                                                         (number?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7304))
                                                                                        (x7414
                                                                                         (number?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7305)))
                                                                                 (f7308
                                                                                  x7415
                                                                                  x7414))))
                                                                       (number?/c
                                                                        j7306
                                                                        k7307
                                                                        x7413))))
                                                             g7412))))
                                                 g7411))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7410 (orig-/ a b)))
                                                 g7410))))
                                           (car
                                            ((lambda (j7310 k7311 f7312)
                                               (letrec ((g7417
                                                         (lambda (g7309)
                                                           (letrec ((g7418
                                                                     (letrec ((x7419
                                                                               (letrec ((x7420
                                                                                         (pair?/c
                                                                                          j7310
                                                                                          k7311
                                                                                          g7309)))
                                                                                 (f7312
                                                                                  x7420))))
                                                                       (any/c
                                                                        j7310
                                                                        k7311
                                                                        x7419))))
                                                             g7418))))
                                                 g7417))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7416 (orig-car p)))
                                                 g7416))))
                                           (cdr
                                            ((lambda (j7314 k7315 f7316)
                                               (letrec ((g7422
                                                         (lambda (g7313)
                                                           (letrec ((g7423
                                                                     (letrec ((x7424
                                                                               (letrec ((x7425
                                                                                         (pair?/c
                                                                                          j7314
                                                                                          k7315
                                                                                          g7313)))
                                                                                 (f7316
                                                                                  x7425))))
                                                                       (any/c
                                                                        j7314
                                                                        k7315
                                                                        x7424))))
                                                             g7423))))
                                                 g7422))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7421 (orig-cdr p)))
                                                 g7421))))
                                           (cons
                                            ((lambda (j7319 k7320 f7321)
                                               (letrec ((g7427
                                                         (lambda (g7317 g7318)
                                                           (letrec ((g7428
                                                                     (letrec ((x7429
                                                                               (letrec ((x7431
                                                                                         (any/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7317))
                                                                                        (x7430
                                                                                         (any/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7318)))
                                                                                 (f7321
                                                                                  x7431
                                                                                  x7430))))
                                                                       (pair?/c
                                                                        j7319
                                                                        k7320
                                                                        x7429))))
                                                             g7428))))
                                                 g7427))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7426
                                                         (orig-cons a b)))
                                                 g7426))))
                                           (vector-ref
                                            ((lambda (j7323 k7324 f7325)
                                               (letrec ((g7433
                                                         (lambda (g7322)
                                                           (letrec ((g7434
                                                                     (letrec ((x7435
                                                                               (letrec ((x7436
                                                                                         (vector?/c
                                                                                          j7323
                                                                                          k7324
                                                                                          g7322)))
                                                                                 (f7325
                                                                                  x7436))))
                                                                       (integer?/c
                                                                        j7323
                                                                        k7324
                                                                        x7435))))
                                                             g7434))))
                                                 g7433))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7432
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7432))))
                                           (vector-set!
                                            ((lambda (j7328 k7329 f7330)
                                               (letrec ((g7438
                                                         (lambda (g7326 g7327)
                                                           (letrec ((g7439
                                                                     (letrec ((x7440
                                                                               (letrec ((x7442
                                                                                         (vector?/c
                                                                                          j7328
                                                                                          k7329
                                                                                          g7326))
                                                                                        (x7441
                                                                                         (integer?/c
                                                                                          j7328
                                                                                          k7329
                                                                                          g7327)))
                                                                                 (f7330
                                                                                  x7442
                                                                                  x7441))))
                                                                       (any/c
                                                                        j7328
                                                                        k7329
                                                                        x7440))))
                                                             g7439))))
                                                 g7438))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7437
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7437))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7443
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7443)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7444
                                                        (letrec ((x7445
                                                                  (letrec ((x7446
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7446))))
                                                          (cdr x7445))))
                                                g7444)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7447
                                                        (letrec ((x7450
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7450)))
                                                       (g7448
                                                        (letrec ((x7451
                                                                  (list? l)))
                                                          (assert x7451)))
                                                       (g7449
                                                        (letrec ((x-cnd7452
                                                                  (null? l)))
                                                          (if x-cnd7452
                                                            '()
                                                            (letrec ((x7455
                                                                      (letrec ((x7456
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7456)))
                                                                     (x7453
                                                                      (letrec ((x7454
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7454))))
                                                              (cons
                                                               x7455
                                                               x7453))))))
                                                g7449)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7457
                                                        (letrec ((x7458
                                                                  (car x)))
                                                          (cdr x7458))))
                                                g7457)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7459
                                                        (letrec ((x7460
                                                                  (letrec ((x7461
                                                                            (letrec ((x7462
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7462))))
                                                                    (cdr
                                                                     x7461))))
                                                          (car x7460))))
                                                g7459)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7463
                                                        (letrec ((x7464
                                                                  (letrec ((x7465
                                                                            (letrec ((x7466
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7466))))
                                                                    (car
                                                                     x7465))))
                                                          (cdr x7464))))
                                                g7463)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7467
                                                        (letrec ((x7470
                                                                  (string?
                                                                   filename)))
                                                          (assert x7470)))
                                                       (g7468
                                                        (letrec ((x7471
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7471)))
                                                       (g7469
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7472
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7473 res))
                                                            g7473))))
                                                g7469)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7474
                                                        (letrec ((x7475
                                                                  (letrec ((x7476
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7476))))
                                                          (car x7475))))
                                                g7474)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7477
                                                        (letrec ((x7478
                                                                  (letrec ((x7479
                                                                            (letrec ((x7480
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7480))))
                                                                    (car
                                                                     x7479))))
                                                          (cdr x7478))))
                                                g7477)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7481
                                                        (letrec ((x7483
                                                                  (list? l)))
                                                          (assert x7483)))
                                                       (g7482
                                                        (letrec ((x-cnd7484
                                                                  (null? l)))
                                                          (if x-cnd7484
                                                            #f
                                                            (letrec ((x-cnd7485
                                                                      (letrec ((x7486
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7486
                                                                         k))))
                                                              (if x-cnd7485
                                                                (car l)
                                                                (letrec ((x7487
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7487))))))))
                                                g7482)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7488
                                                        (letrec ((x7489
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7489))))
                                                g7488)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7490
                                                        (letrec ((x7492
                                                                  (list? l)))
                                                          (assert x7492)))
                                                       (g7491
                                                        (letrec ((x-cnd7493
                                                                  (null? l)))
                                                          (if x-cnd7493
                                                            ""
                                                            (letrec ((x7496
                                                                      (letrec ((x7497
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7497)))
                                                                     (x7494
                                                                      (letrec ((x7495
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7495))))
                                                              (string-append
                                                               x7496
                                                               x7494))))))
                                                g7491)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7498
                                                        (letrec ((x7501
                                                                  (char? c1)))
                                                          (assert x7501)))
                                                       (g7499
                                                        (letrec ((x7502
                                                                  (char? c2)))
                                                          (assert x7502)))
                                                       (g7500
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7503
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7503))))
                                                g7500)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7504
                                                        (letrec ((x7505
                                                                  (letrec ((x7506
                                                                            (letrec ((x7507
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7507))))
                                                                    (cdr
                                                                     x7506))))
                                                          (cdr x7505))))
                                                g7504)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7508
                                                        (letrec ((x7511
                                                                  (list? l)))
                                                          (assert x7511)))
                                                       (g7509
                                                        (letrec ((x7512
                                                                  (number?)))
                                                          (assert x7512)))
                                                       (g7510
                                                        (letrec ((x-cnd7513
                                                                  (zero? k)))
                                                          (if x-cnd7513
                                                            x
                                                            (letrec ((x7515
                                                                      (cdr x))
                                                                     (x7514
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7515
                                                               x7514))))))
                                                g7510)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7516 '())) g7516)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7517
                                                        (letrec ((x-cnd7518
                                                                  (letrec ((x7519
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7519))))
                                                          (if x-cnd7518
                                                            (letrec ((x7520
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7520))
                                                            #f))))
                                                g7517)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7521
                                                        (letrec ((x7523
                                                                  (number? x)))
                                                          (assert x7523)))
                                                       (g7522
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7524
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7525
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7525)))))
                                                            g7524))))
                                                g7522)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7526
                                                        (letrec ((val7244
                                                                  (letrec ((x7527
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7527
                                                                     9))))
                                                          (letrec ((g7528
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7529
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7529
                                                                                   10))))
                                                                        (letrec ((g7530
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7531
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7531
                                                                                       32)))))
                                                                          g7530)))))
                                                            g7528))))
                                                g7526)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7532
                                                        (letrec ((x7533
                                                                  (letrec ((x7534
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7534))))
                                                          (cdr x7533))))
                                                g7532)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7535
                                                        (letrec ((x7537
                                                                  (number? x)))
                                                          (assert x7537)))
                                                       (g7536 (> x 0)))
                                                g7536)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7538 #f)) g7538)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7539
                                                        (letrec ((x7540
                                                                  (cdr x)))
                                                          (cdr x7540))))
                                                g7539)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7541
                                                        (letrec ((x7543
                                                                  (number? x)))
                                                          (assert x7543)))
                                                       (g7542
                                                        (letrec ((x-cnd7544
                                                                  (< x 0)))
                                                          (if x-cnd7544
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7542)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7545
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7546
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7547
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7547
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7548
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7549
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7549
                                                                                                  (letrec ((x-cnd7550
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7550
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7551
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7552
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7552
                                                                                                                (letrec ((x-cnd7553
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7553
                                                                                                                    (letrec ((x-cnd7554
                                                                                                                              (letrec ((x7556
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7555
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7556
                                                                                                                                 x7555))))
                                                                                                                      (if x-cnd7554
                                                                                                                        (letrec ((x7558
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7557
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7558
                                                                                                                           x7557))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7559
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7560
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7560
                                                                                                                    (letrec ((x-cnd7561
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7561
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7562
                                                                                                                                    (letrec ((x-cnd7563
                                                                                                                                              (letrec ((x7564
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7564
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7563
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7565
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7566
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7567
                                                                                                                                                                                      (letrec ((x7569
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7568
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7569
                                                                                                                                                                                         x7568))))
                                                                                                                                                                              (if x-cnd7567
                                                                                                                                                                                (letrec ((x7570
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7570))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7566))))
                                                                                                                                                      g7565))))
                                                                                                                                          (letrec ((g7571
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7571))
                                                                                                                                        #f))))
                                                                                                                            g7562))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7559)))))
                                                                                        g7551)))))
                                                                          g7548)))))
                                                            g7546))))
                                                g7545)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7572
                                                        (letrec ((x7573
                                                                  (letrec ((x7574
                                                                            (letrec ((x7575
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7575))))
                                                                    (car
                                                                     x7574))))
                                                          (cdr x7573))))
                                                g7572)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7576
                                                        (letrec ((x7577
                                                                  (letrec ((x7578
                                                                            (letrec ((x7579
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7579))))
                                                                    (car
                                                                     x7578))))
                                                          (car x7577))))
                                                g7576)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7580 (eq? x y)))
                                                g7580)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7581
                                                        (letrec ((x7583
                                                                  (number? x)))
                                                          (assert x7583)))
                                                       (g7582
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7584
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7585
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7585)))))
                                                            g7584))))
                                                g7582)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7586
                                                        (letrec ((x7589
                                                                  (string?
                                                                   filename)))
                                                          (assert x7589)))
                                                       (g7587
                                                        (letrec ((x7590
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7590)))
                                                       (g7588
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7591
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7592 res))
                                                            g7592))))
                                                g7588)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7593 (cons x '())))
                                                g7593)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7594
                                                        (letrec ((x7597
                                                                  (char? c1)))
                                                          (assert x7597)))
                                                       (g7595
                                                        (letrec ((x7598
                                                                  (char? c2)))
                                                          (assert x7598)))
                                                       (g7596
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7599
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7599))))
                                                g7596)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7600
                                                        (letrec ((x7601
                                                                  (letrec ((x7602
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7602))))
                                                          (cdr x7601))))
                                                g7600)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7603
                                                        (letrec ((x7604
                                                                  (letrec ((x7605
                                                                            (letrec ((x7606
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7606))))
                                                                    (car
                                                                     x7605))))
                                                          (cdr x7604))))
                                                g7603)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7607
                                                        (letrec ((x7608
                                                                  (letrec ((x7609
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7609))))
                                                          (car x7608))))
                                                g7607)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7610
                                                        (letrec ((x7611
                                                                  (letrec ((x7612
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7612))))
                                                          (car x7611))))
                                                g7610)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7613
                                                        (letrec ((x7616
                                                                  (char? c1)))
                                                          (assert x7616)))
                                                       (g7614
                                                        (letrec ((x7617
                                                                  (char? c2)))
                                                          (assert x7617)))
                                                       (g7615
                                                        (letrec ((x7618
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7618))))
                                                g7615)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7619
                                                        (letrec ((x7620
                                                                  (letrec ((x7621
                                                                            (letrec ((x7622
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7622))))
                                                                    (car
                                                                     x7621))))
                                                          (car x7620))))
                                                g7619)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7623
                                                        (letrec ((x7625
                                                                  (number? x)))
                                                          (assert x7625)))
                                                       (g7624 (< x 0)))
                                                g7624)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7626 (memq e l)))
                                                g7626)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7627
                                                        (letrec ((x7628
                                                                  (letrec ((x7629
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7629))))
                                                          (car x7628))))
                                                g7627)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7630 '())) g7630)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7631
                                                        (letrec ((x7633
                                                                  (list? l)))
                                                          (assert x7633)))
                                                       (g7632
                                                        (letrec ((x-cnd7634
                                                                  (null? l)))
                                                          (if x-cnd7634
                                                            '()
                                                            (letrec ((x7637
                                                                      (letrec ((x7638
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7638)))
                                                                     (x7635
                                                                      (letrec ((x7636
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7636))))
                                                              (append
                                                               x7637
                                                               x7635))))))
                                                g7632)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7639
                                                        (letrec ((x7640
                                                                  (letrec ((x7641
                                                                            (letrec ((x7642
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7642))))
                                                                    (car
                                                                     x7641))))
                                                          (car x7640))))
                                                g7639)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7643
                                                        (letrec ((x7644
                                                                  (letrec ((x7645
                                                                            (letrec ((x7646
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7646))))
                                                                    (cdr
                                                                     x7645))))
                                                          (cdr x7644))))
                                                g7643)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7647
                                                        (letrec ((x7649
                                                                  (number? x)))
                                                          (assert x7649)))
                                                       (g7648
                                                        (letrec ((x7650
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7650))))
                                                g7648)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7651
                                                        (letrec ((x7652
                                                                  (letrec ((x7653
                                                                            (letrec ((x7654
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7654))))
                                                                    (car
                                                                     x7653))))
                                                          (car x7652))))
                                                g7651)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7655
                                                        (letrec ((x7658
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7658)))
                                                       (g7656
                                                        (letrec ((x7659
                                                                  (list?
                                                                   args)))
                                                          (assert x7659)))
                                                       (g7657
                                                        (letrec ((x-cnd7660
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7660
                                                            (letrec ((g7661
                                                                      (proc)))
                                                              g7661)
                                                            (letrec ((x-cnd7662
                                                                      (letrec ((x7663
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7663))))
                                                              (if x-cnd7662
                                                                (letrec ((g7664
                                                                          (letrec ((x7665
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7665))))
                                                                  g7664)
                                                                (letrec ((x-cnd7666
                                                                          (letrec ((x7667
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7667))))
                                                                  (if x-cnd7666
                                                                    (letrec ((g7668
                                                                              (letrec ((x7670
                                                                                        (car
                                                                                         args))
                                                                                       (x7669
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7670
                                                                                 x7669))))
                                                                      g7668)
                                                                    (letrec ((x-cnd7671
                                                                              (letrec ((x7672
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7672))))
                                                                      (if x-cnd7671
                                                                        (letrec ((g7673
                                                                                  (letrec ((x7676
                                                                                            (car
                                                                                             args))
                                                                                           (x7675
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7674
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7676
                                                                                     x7675
                                                                                     x7674))))
                                                                          g7673)
                                                                        (letrec ((x-cnd7677
                                                                                  (letrec ((x7678
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7678))))
                                                                          (if x-cnd7677
                                                                            (letrec ((g7679
                                                                                      (letrec ((x7683
                                                                                                (car
                                                                                                 args))
                                                                                               (x7682
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7681
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7680
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7683
                                                                                         x7682
                                                                                         x7681
                                                                                         x7680))))
                                                                              g7679)
                                                                            (letrec ((x-cnd7684
                                                                                      (letrec ((x7685
                                                                                                (letrec ((x7686
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7686))))
                                                                                        (null?
                                                                                         x7685))))
                                                                              (if x-cnd7684
                                                                                (letrec ((g7687
                                                                                          (letrec ((x7693
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7692
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7691
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7690
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7688
                                                                                                    (letrec ((x7689
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7689))))
                                                                                            (proc
                                                                                             x7693
                                                                                             x7692
                                                                                             x7691
                                                                                             x7690
                                                                                             x7688))))
                                                                                  g7687)
                                                                                (letrec ((x-cnd7694
                                                                                          (letrec ((x7695
                                                                                                    (letrec ((x7696
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7696))))
                                                                                            (null?
                                                                                             x7695))))
                                                                                  (if x-cnd7694
                                                                                    (letrec ((g7697
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
                                                                                                           x7701)))
                                                                                                       (x7698
                                                                                                        (letrec ((x7699
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7699))))
                                                                                                (proc
                                                                                                 x7705
                                                                                                 x7704
                                                                                                 x7703
                                                                                                 x7702
                                                                                                 x7700
                                                                                                 x7698))))
                                                                                      g7697)
                                                                                    (letrec ((x-cnd7706
                                                                                              (letrec ((x7707
                                                                                                        (letrec ((x7708
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7708))))
                                                                                                (null?
                                                                                                 x7707))))
                                                                                      (if x-cnd7706
                                                                                        (letrec ((g7709
                                                                                                  (letrec ((x7719
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7718
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7717
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7716
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7714
                                                                                                            (letrec ((x7715
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7715)))
                                                                                                           (x7712
                                                                                                            (letrec ((x7713
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7713)))
                                                                                                           (x7710
                                                                                                            (letrec ((x7711
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7711))))
                                                                                                    (proc
                                                                                                     x7719
                                                                                                     x7718
                                                                                                     x7717
                                                                                                     x7716
                                                                                                     x7714
                                                                                                     x7712
                                                                                                     x7710))))
                                                                                          g7709)
                                                                                        (letrec ((g7720
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7720)))))))))))))))))))
                                                g7657)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7721
                                                        (letrec ((x7723
                                                                  (list? l)))
                                                          (assert x7723)))
                                                       (g7722
                                                        (letrec ((x-cnd7724
                                                                  (null? l)))
                                                          (if x-cnd7724
                                                            #f
                                                            (letrec ((x-cnd7725
                                                                      (letrec ((x7726
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7726
                                                                         e))))
                                                              (if x-cnd7725
                                                                l
                                                                (letrec ((x7727
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7727))))))))
                                                g7722)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7728
                                                        (letrec ((x7729
                                                                  (letrec ((x7730
                                                                            (letrec ((x7731
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7731))))
                                                                    (cdr
                                                                     x7730))))
                                                          (cdr x7729))))
                                                g7728)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7732
                                                        (letrec ((x7733
                                                                  (letrec ((x7734
                                                                            (letrec ((x7735
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7735))))
                                                                    (cdr
                                                                     x7734))))
                                                          (car x7733))))
                                                g7732)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7736 (random 42)))
                                                g7736)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7737
                                                        (letrec ((x7739
                                                                  (number? x)))
                                                          (assert x7739)))
                                                       (g7738 (= x 0)))
                                                g7738)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7740
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7741
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7741))))
                                                g7740)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7742
                                                        (letrec ((x7743
                                                                  (cdr x)))
                                                          (car x7743))))
                                                g7742)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7744
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd7745
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7745
                                                                      (letrec ((x7746
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7746))
                                                                      #f))))
                                                          (letrec ((g7747
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g7747))))
                                                g7744)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7748
                                                        (letrec ((x7749
                                                                  (letrec ((x7750
                                                                            (letrec ((x7751
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7751))))
                                                                    (cdr
                                                                     x7750))))
                                                          (cdr x7749))))
                                                g7748)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7752
                                                        (letrec ((x-cnd7753
                                                                  (letrec ((x7754
                                                                            #\0))
                                                                    (char<=?
                                                                     x7754
                                                                     c))))
                                                          (if x-cnd7753
                                                            (letrec ((x7755
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7755))
                                                            #f))))
                                                g7752)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7756
                                                        (letrec ((x7758
                                                                  (list? l)))
                                                          (assert x7758)))
                                                       (g7757
                                                        (letrec ((x-cnd7759
                                                                  (null? l)))
                                                          (if x-cnd7759
                                                            #f
                                                            (letrec ((x-cnd7760
                                                                      (letrec ((x7761
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7761
                                                                         k))))
                                                              (if x-cnd7760
                                                                (car l)
                                                                (letrec ((x7762
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7762))))))))
                                                g7757)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7763 (if x #f #t)))
                                                g7763)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7764 (append l1 l2)))
                                                g7764)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7765
                                                        (letrec ((x7767
                                                                  (list? l)))
                                                          (assert x7767)))
                                                       (g7766
                                                        (letrec ((x-cnd7768
                                                                  (null? l)))
                                                          (if x-cnd7768
                                                            #f
                                                            (letrec ((x-cnd7769
                                                                      (letrec ((x7770
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7770
                                                                         e))))
                                                              (if x-cnd7769
                                                                l
                                                                (letrec ((x7771
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7771))))))))
                                                g7766)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7772
                                                        (letrec ((x7773
                                                                  (letrec ((x7774
                                                                            (letrec ((x7775
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7775))))
                                                                    (cdr
                                                                     x7774))))
                                                          (car x7773))))
                                                g7772)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7776
                                                        (letrec ((x7778
                                                                  (list? l)))
                                                          (assert x7778)))
                                                       (g7777
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7779
                                                                              (letrec ((x-cnd7780
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7780
                                                                                  0
                                                                                  (letrec ((x7781
                                                                                            (letrec ((x7782
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7782))))
                                                                                    (+
                                                                                     1
                                                                                     x7781))))))
                                                                      g7779))))
                                                          (letrec ((g7783
                                                                    (rec l)))
                                                            g7783))))
                                                g7777)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7784
                                                        (letrec ((x7787
                                                                  (char? c1)))
                                                          (assert x7787)))
                                                       (g7785
                                                        (letrec ((x7788
                                                                  (char? c2)))
                                                          (assert x7788)))
                                                       (g7786
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7789
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7789))))
                                                g7786)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7790
                                                        (letrec ((x7791
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7791))))
                                                g7790)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7792
                                                        (letrec ((x7793
                                                                  (letrec ((x7794
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7794))))
                                                          (cdr x7793))))
                                                g7792)))
                                           (assoc
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
                                                                        (equal?
                                                                         x7800
                                                                         k))))
                                                              (if x-cnd7799
                                                                (car l)
                                                                (letrec ((x7801
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7801))))))))
                                                g7796)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7802
                                                        (letrec ((x7803
                                                                  (car x)))
                                                          (car x7803))))
                                                g7802)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7804
                                                        (letrec ((x7807
                                                                  (char? c1)))
                                                          (assert x7807)))
                                                       (g7805
                                                        (letrec ((x7808
                                                                  (char? c2)))
                                                          (assert x7808)))
                                                       (g7806
                                                        (letrec ((x7809
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7809))))
                                                g7806)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7810
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7811
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7811))))
                                                g7810)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7812
                                                        (letrec ((x7815
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7815)))
                                                       (g7813
                                                        (letrec ((x7816
                                                                  (list? l)))
                                                          (assert x7816)))
                                                       (g7814
                                                        (letrec ((x-cnd7817
                                                                  (null? l)))
                                                          (if x-cnd7817
                                                            #t
                                                            (letrec ((x-cnd7818
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7818
                                                                (letrec ((g7819
                                                                          (letrec ((x7821
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7821)))
                                                                         (g7820
                                                                          (letrec ((x7822
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7822))))
                                                                  g7820)
                                                                '()))))))
                                                g7814)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7823
                                                        (letrec ((x7825
                                                                  (number? x)))
                                                          (assert x7825)))
                                                       (g7824
                                                        (letrec ((x-cnd7826
                                                                  (< x 0)))
                                                          (if x-cnd7826
                                                            (- 0 x)
                                                            x))))
                                                g7824)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7827
                                                        (letrec ((x7830
                                                                  (char? c1)))
                                                          (assert x7830)))
                                                       (g7828
                                                        (letrec ((x7831
                                                                  (char? c2)))
                                                          (assert x7831)))
                                                       (g7829
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7832
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7832))))
                                                g7829)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7833
                                                        (letrec ((x7834
                                                                  (letrec ((x7835
                                                                            (letrec ((x7836
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7836))))
                                                                    (cdr
                                                                     x7835))))
                                                          (car x7834))))
                                                g7833)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7837 #f)) g7837)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7838
                                                        (letrec ((x7840
                                                                  (letrec ((x7841
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7841)))
                                                                 (x7839
                                                                  (gcd m n)))
                                                          (/ x7840 x7839))))
                                                g7838)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7842
                                                        (letrec ((x7844
                                                                  (number? x)))
                                                          (assert x7844)))
                                                       (g7843
                                                        (letrec ((x7845
                                                                  (<= x y)))
                                                          (not x7845))))
                                                g7843)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7846
                                                        (letrec ((x7850
                                                                  (list? l)))
                                                          (assert x7850)))
                                                       (g7847
                                                        (letrec ((x7851
                                                                  (number?
                                                                   index)))
                                                          (assert x7851)))
                                                       (g7848
                                                        (letrec ((x7852
                                                                  (letrec ((x7853
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7853))))
                                                          (assert x7852)))
                                                       (g7849
                                                        (letrec ((x-cnd7854
                                                                  (= index 0)))
                                                          (if x-cnd7854
                                                            (car l)
                                                            (letrec ((x7856
                                                                      (cdr l))
                                                                     (x7855
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7856
                                                               x7855))))))
                                                g7849)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7857
                                                        (letrec ((x-cnd7858
                                                                  (= b 0)))
                                                          (if x-cnd7858
                                                            a
                                                            (letrec ((x7859
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7859))))))
                                                g7857)))
                                           (sum
                                            (lambda (n)
                                              (letrec ((g7860
                                                        (letrec ((x-cnd7861
                                                                  (<= n 0)))
                                                          (if x-cnd7861
                                                            0
                                                            (letrec ((x7862
                                                                      (letrec ((x7863
                                                                                (-
                                                                                 n
                                                                                 1)))
                                                                        (sum
                                                                         x7863))))
                                                              (+ n x7862))))))
                                                g7860))))
                                    (letrec ((g7864
                                              ((lambda (j7332 k7333 f7334)
                                                 (letrec ((g7865
                                                           (lambda (g7331)
                                                             (letrec ((g7866
                                                                       (letrec ((x7335
                                                                                 (integer?/c
                                                                                  j7332
                                                                                  k7333
                                                                                  g7331)))
                                                                         (letrec ((g7867
                                                                                   (letrec ((x7869
                                                                                             ((lambda (n)
                                                                                                (letrec ((g7870
                                                                                                          (letrec ((x7871
                                                                                                                    (>=/c
                                                                                                                     n)))
                                                                                                            (and/c
                                                                                                             integer?/c
                                                                                                             x7871))))
                                                                                                  g7870))
                                                                                              x7335))
                                                                                            (x7868
                                                                                             (f7334
                                                                                              x7335)))
                                                                                     (x7869
                                                                                      j7332
                                                                                      k7333
                                                                                      x7868))))
                                                                           g7867))))
                                                               g7866))))
                                                   g7865))
                                               'module
                                               'importer
                                               sum)))
                                      g7864))))
                          g7349))))
              g7347)))
    g7346))
