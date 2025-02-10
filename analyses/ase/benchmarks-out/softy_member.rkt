(letrec ((any? (lambda (v) (letrec ((g7334 #t)) g7334)))
         (meta (lambda (v) (letrec ((g7335 v)) g7335)))
         (member
          (lambda (v lst)
            (letrec ((g7336
                      (letrec ((g7337
                                (letrec ((x-e7338 lst))
                                  (match
                                   x-e7338
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7339 (eq? v v1)))
                                       (if x-cnd7339 #t (member v vs)))))))))
                        g7337)))
              g7336)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7340 (lambda (v) (letrec ((g7341 v)) g7341)))) g7340)))
         (nonzero?
          (lambda (v)
            (letrec ((g7342 (letrec ((x7343 (= v 0))) (not x7343)))) g7342))))
  (letrec ((g7344
            (letrec ((g7345
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7346 '())
                                 (g7347
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7348
                                                        (lambda (k j lst)
                                                          (letrec ((g7349
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7350
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7350))
                                                                     lst)))
                                                            g7349))))
                                                g7348)))
                                           (real?/c
                                            (lambda (g7259 g7260 g7261)
                                              (letrec ((g7351
                                                        (letrec ((x-cnd7352
                                                                  (real?
                                                                   g7261)))
                                                          (if x-cnd7352
                                                            g7261
                                                            (blame
                                                             g7259
                                                             'real?)))))
                                                g7351)))
                                           (boolean?/c
                                            (lambda (g7262 g7263 g7264)
                                              (letrec ((g7353
                                                        (letrec ((x-cnd7354
                                                                  (boolean?
                                                                   g7264)))
                                                          (if x-cnd7354
                                                            g7264
                                                            (blame
                                                             g7262
                                                             'boolean?)))))
                                                g7353)))
                                           (number?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7355
                                                        (letrec ((x-cnd7356
                                                                  (number?
                                                                   g7267)))
                                                          (if x-cnd7356
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'number?)))))
                                                g7355)))
                                           (any/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7357
                                                        (letrec ((x-cnd7358
                                                                  ((lambda (v)
                                                                     (letrec ((g7359
                                                                               #t))
                                                                       g7359))
                                                                   g7270)))
                                                          (if x-cnd7358
                                                            g7270
                                                            (blame
                                                             g7268
                                                             '(lambda (v)
                                                                #t))))))
                                                g7357)))
                                           (any?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7360
                                                        (letrec ((x-cnd7361
                                                                  ((lambda (v)
                                                                     (letrec ((g7362
                                                                               #t))
                                                                       g7362))
                                                                   g7273)))
                                                          (if x-cnd7361
                                                            g7273
                                                            (blame
                                                             g7271
                                                             '(lambda (v)
                                                                #t))))))
                                                g7360)))
                                           (cons?/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7363
                                                        (letrec ((x-cnd7364
                                                                  (pair?
                                                                   g7276)))
                                                          (if x-cnd7364
                                                            g7276
                                                            (blame
                                                             g7274
                                                             'pair?)))))
                                                g7363)))
                                           (pair?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7365
                                                        (letrec ((x-cnd7366
                                                                  (pair?
                                                                   g7279)))
                                                          (if x-cnd7366
                                                            g7279
                                                            (blame
                                                             g7277
                                                             'pair?)))))
                                                g7365)))
                                           (integer?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7367
                                                        (letrec ((x-cnd7368
                                                                  (integer?
                                                                   g7282)))
                                                          (if x-cnd7368
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'integer?)))))
                                                g7367)))
                                           (symbol?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7369
                                                        (letrec ((x-cnd7370
                                                                  (symbol?
                                                                   g7285)))
                                                          (if x-cnd7370
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'symbol?)))))
                                                g7369)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7371
                                                        (lambda (k j v)
                                                          (letrec ((g7372
                                                                    (letrec ((x-cnd7373
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7373
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7372))))
                                                g7371)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7374
                                                        (lambda (k j v)
                                                          (letrec ((g7375
                                                                    (letrec ((x-cnd7376
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7376
                                                                        '()
                                                                        (letrec ((x7380
                                                                                  (letrec ((x7381
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7381)))
                                                                                 (x7377
                                                                                  (letrec ((x7379
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7378
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7379
                                                                                     k
                                                                                     j
                                                                                     x7378))))
                                                                          (orig-cons
                                                                           x7380
                                                                           x7377))))))
                                                            g7375))))
                                                g7374)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7382 #t)) g7382)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7383
                                                        (letrec ((x7384
                                                                  (= v 0)))
                                                          (not x7384))))
                                                g7383)))
                                           (nonzero?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7385
                                                        (letrec ((x-cnd7386
                                                                  ((lambda (v)
                                                                     (letrec ((g7387
                                                                               (letrec ((x7388
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7388))))
                                                                       g7387))
                                                                   g7288)))
                                                          (if x-cnd7386
                                                            g7288
                                                            (blame
                                                             g7286
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7385)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7389 v)) g7389)))
                                           (+
                                            ((lambda (j7291 k7292 f7293)
                                               (letrec ((g7391
                                                         (lambda (g7289 g7290)
                                                           (letrec ((g7392
                                                                     (letrec ((x7393
                                                                               (letrec ((x7395
                                                                                         (number?/c
                                                                                          j7291
                                                                                          k7292
                                                                                          g7289))
                                                                                        (x7394
                                                                                         (number?/c
                                                                                          j7291
                                                                                          k7292
                                                                                          g7290)))
                                                                                 (f7293
                                                                                  x7395
                                                                                  x7394))))
                                                                       (number?/c
                                                                        j7291
                                                                        k7292
                                                                        x7393))))
                                                             g7392))))
                                                 g7391))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7390 (orig-+ a b)))
                                                 g7390))))
                                           (-
                                            ((lambda (j7296 k7297 f7298)
                                               (letrec ((g7397
                                                         (lambda (g7294 g7295)
                                                           (letrec ((g7398
                                                                     (letrec ((x7399
                                                                               (letrec ((x7401
                                                                                         (number?/c
                                                                                          j7296
                                                                                          k7297
                                                                                          g7294))
                                                                                        (x7400
                                                                                         (number?/c
                                                                                          j7296
                                                                                          k7297
                                                                                          g7295)))
                                                                                 (f7298
                                                                                  x7401
                                                                                  x7400))))
                                                                       (number?/c
                                                                        j7296
                                                                        k7297
                                                                        x7399))))
                                                             g7398))))
                                                 g7397))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7396 (orig-- a b)))
                                                 g7396))))
                                           (*
                                            ((lambda (j7301 k7302 f7303)
                                               (letrec ((g7403
                                                         (lambda (g7299 g7300)
                                                           (letrec ((g7404
                                                                     (letrec ((x7405
                                                                               (letrec ((x7407
                                                                                         (number?/c
                                                                                          j7301
                                                                                          k7302
                                                                                          g7299))
                                                                                        (x7406
                                                                                         (number?/c
                                                                                          j7301
                                                                                          k7302
                                                                                          g7300)))
                                                                                 (f7303
                                                                                  x7407
                                                                                  x7406))))
                                                                       (number?/c
                                                                        j7301
                                                                        k7302
                                                                        x7405))))
                                                             g7404))))
                                                 g7403))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7402 (orig-* a b)))
                                                 g7402))))
                                           (/
                                            ((lambda (j7306 k7307 f7308)
                                               (letrec ((g7409
                                                         (lambda (g7304 g7305)
                                                           (letrec ((g7410
                                                                     (letrec ((x7411
                                                                               (letrec ((x7413
                                                                                         (number?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7304))
                                                                                        (x7412
                                                                                         (number?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7305)))
                                                                                 (f7308
                                                                                  x7413
                                                                                  x7412))))
                                                                       (number?/c
                                                                        j7306
                                                                        k7307
                                                                        x7411))))
                                                             g7410))))
                                                 g7409))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7408 (orig-/ a b)))
                                                 g7408))))
                                           (car
                                            ((lambda (j7310 k7311 f7312)
                                               (letrec ((g7415
                                                         (lambda (g7309)
                                                           (letrec ((g7416
                                                                     (letrec ((x7417
                                                                               (letrec ((x7418
                                                                                         (pair?/c
                                                                                          j7310
                                                                                          k7311
                                                                                          g7309)))
                                                                                 (f7312
                                                                                  x7418))))
                                                                       (any/c
                                                                        j7310
                                                                        k7311
                                                                        x7417))))
                                                             g7416))))
                                                 g7415))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7414 (orig-car p)))
                                                 g7414))))
                                           (cdr
                                            ((lambda (j7314 k7315 f7316)
                                               (letrec ((g7420
                                                         (lambda (g7313)
                                                           (letrec ((g7421
                                                                     (letrec ((x7422
                                                                               (letrec ((x7423
                                                                                         (pair?/c
                                                                                          j7314
                                                                                          k7315
                                                                                          g7313)))
                                                                                 (f7316
                                                                                  x7423))))
                                                                       (any/c
                                                                        j7314
                                                                        k7315
                                                                        x7422))))
                                                             g7421))))
                                                 g7420))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7419 (orig-cdr p)))
                                                 g7419))))
                                           (cons
                                            ((lambda (j7319 k7320 f7321)
                                               (letrec ((g7425
                                                         (lambda (g7317 g7318)
                                                           (letrec ((g7426
                                                                     (letrec ((x7427
                                                                               (letrec ((x7429
                                                                                         (any/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7317))
                                                                                        (x7428
                                                                                         (any/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7318)))
                                                                                 (f7321
                                                                                  x7429
                                                                                  x7428))))
                                                                       (pair?/c
                                                                        j7319
                                                                        k7320
                                                                        x7427))))
                                                             g7426))))
                                                 g7425))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7424
                                                         (orig-cons a b)))
                                                 g7424))))
                                           (vector-ref
                                            ((lambda (j7323 k7324 f7325)
                                               (letrec ((g7431
                                                         (lambda (g7322)
                                                           (letrec ((g7432
                                                                     (letrec ((x7433
                                                                               (letrec ((x7434
                                                                                         (vector?/c
                                                                                          j7323
                                                                                          k7324
                                                                                          g7322)))
                                                                                 (f7325
                                                                                  x7434))))
                                                                       (integer?/c
                                                                        j7323
                                                                        k7324
                                                                        x7433))))
                                                             g7432))))
                                                 g7431))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7430
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7430))))
                                           (vector-set!
                                            ((lambda (j7328 k7329 f7330)
                                               (letrec ((g7436
                                                         (lambda (g7326 g7327)
                                                           (letrec ((g7437
                                                                     (letrec ((x7438
                                                                               (letrec ((x7440
                                                                                         (vector?/c
                                                                                          j7328
                                                                                          k7329
                                                                                          g7326))
                                                                                        (x7439
                                                                                         (integer?/c
                                                                                          j7328
                                                                                          k7329
                                                                                          g7327)))
                                                                                 (f7330
                                                                                  x7440
                                                                                  x7439))))
                                                                       (any/c
                                                                        j7328
                                                                        k7329
                                                                        x7438))))
                                                             g7437))))
                                                 g7436))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7435
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7435))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7441
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7441)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7442
                                                        (letrec ((x7443
                                                                  (letrec ((x7444
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7444))))
                                                          (cdr x7443))))
                                                g7442)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7445
                                                        (letrec ((x7448
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7448)))
                                                       (g7446
                                                        (letrec ((x7449
                                                                  (list? l)))
                                                          (assert x7449)))
                                                       (g7447
                                                        (letrec ((x-cnd7450
                                                                  (null? l)))
                                                          (if x-cnd7450
                                                            '()
                                                            (letrec ((x7453
                                                                      (letrec ((x7454
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7454)))
                                                                     (x7451
                                                                      (letrec ((x7452
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7452))))
                                                              (cons
                                                               x7453
                                                               x7451))))))
                                                g7447)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7455
                                                        (letrec ((x7456
                                                                  (car x)))
                                                          (cdr x7456))))
                                                g7455)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7457
                                                        (letrec ((x7458
                                                                  (letrec ((x7459
                                                                            (letrec ((x7460
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7460))))
                                                                    (cdr
                                                                     x7459))))
                                                          (car x7458))))
                                                g7457)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7461
                                                        (letrec ((x7462
                                                                  (letrec ((x7463
                                                                            (letrec ((x7464
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7464))))
                                                                    (car
                                                                     x7463))))
                                                          (cdr x7462))))
                                                g7461)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7465
                                                        (letrec ((x7468
                                                                  (string?
                                                                   filename)))
                                                          (assert x7468)))
                                                       (g7466
                                                        (letrec ((x7469
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7469)))
                                                       (g7467
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7470
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7471 res))
                                                            g7471))))
                                                g7467)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7472
                                                        (letrec ((x7473
                                                                  (letrec ((x7474
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7474))))
                                                          (car x7473))))
                                                g7472)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7475
                                                        (letrec ((x7476
                                                                  (letrec ((x7477
                                                                            (letrec ((x7478
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7478))))
                                                                    (car
                                                                     x7477))))
                                                          (cdr x7476))))
                                                g7475)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7479
                                                        (letrec ((x7481
                                                                  (list? l)))
                                                          (assert x7481)))
                                                       (g7480
                                                        (letrec ((x-cnd7482
                                                                  (null? l)))
                                                          (if x-cnd7482
                                                            #f
                                                            (letrec ((x-cnd7483
                                                                      (letrec ((x7484
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7484
                                                                         k))))
                                                              (if x-cnd7483
                                                                (car l)
                                                                (letrec ((x7485
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7485))))))))
                                                g7480)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7486
                                                        (letrec ((x7487
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7487))))
                                                g7486)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7488
                                                        (letrec ((x7490
                                                                  (list? l)))
                                                          (assert x7490)))
                                                       (g7489
                                                        (letrec ((x-cnd7491
                                                                  (null? l)))
                                                          (if x-cnd7491
                                                            ""
                                                            (letrec ((x7494
                                                                      (letrec ((x7495
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7495)))
                                                                     (x7492
                                                                      (letrec ((x7493
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7493))))
                                                              (string-append
                                                               x7494
                                                               x7492))))))
                                                g7489)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7496
                                                        (letrec ((x7499
                                                                  (char? c1)))
                                                          (assert x7499)))
                                                       (g7497
                                                        (letrec ((x7500
                                                                  (char? c2)))
                                                          (assert x7500)))
                                                       (g7498
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7501
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7501))))
                                                g7498)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7502
                                                        (letrec ((x7503
                                                                  (letrec ((x7504
                                                                            (letrec ((x7505
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7505))))
                                                                    (cdr
                                                                     x7504))))
                                                          (cdr x7503))))
                                                g7502)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7506
                                                        (letrec ((x7509
                                                                  (list? l)))
                                                          (assert x7509)))
                                                       (g7507
                                                        (letrec ((x7510
                                                                  (number?)))
                                                          (assert x7510)))
                                                       (g7508
                                                        (letrec ((x-cnd7511
                                                                  (zero? k)))
                                                          (if x-cnd7511
                                                            x
                                                            (letrec ((x7513
                                                                      (cdr x))
                                                                     (x7512
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7513
                                                               x7512))))))
                                                g7508)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7514 '())) g7514)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7515
                                                        (letrec ((x-cnd7516
                                                                  (letrec ((x7517
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7517))))
                                                          (if x-cnd7516
                                                            (letrec ((x7518
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7518))
                                                            #f))))
                                                g7515)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7519
                                                        (letrec ((x7521
                                                                  (number? x)))
                                                          (assert x7521)))
                                                       (g7520
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7522
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7523
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7523)))))
                                                            g7522))))
                                                g7520)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7524
                                                        (letrec ((val7244
                                                                  (letrec ((x7525
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7525
                                                                     9))))
                                                          (letrec ((g7526
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7527
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7527
                                                                                   10))))
                                                                        (letrec ((g7528
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7529
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7529
                                                                                       32)))))
                                                                          g7528)))))
                                                            g7526))))
                                                g7524)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7530
                                                        (letrec ((x7531
                                                                  (letrec ((x7532
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7532))))
                                                          (cdr x7531))))
                                                g7530)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7533
                                                        (letrec ((x7535
                                                                  (number? x)))
                                                          (assert x7535)))
                                                       (g7534 (> x 0)))
                                                g7534)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7536 #f)) g7536)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7537
                                                        (letrec ((x7538
                                                                  (cdr x)))
                                                          (cdr x7538))))
                                                g7537)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7539
                                                        (letrec ((x7541
                                                                  (number? x)))
                                                          (assert x7541)))
                                                       (g7540
                                                        (letrec ((x-cnd7542
                                                                  (< x 0)))
                                                          (if x-cnd7542
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7540)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7543
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7544
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7545
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7545
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7546
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7547
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7547
                                                                                                  (letrec ((x-cnd7548
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7548
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7549
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7550
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7550
                                                                                                                (letrec ((x-cnd7551
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7551
                                                                                                                    (letrec ((x-cnd7552
                                                                                                                              (letrec ((x7554
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7553
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7554
                                                                                                                                 x7553))))
                                                                                                                      (if x-cnd7552
                                                                                                                        (letrec ((x7556
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7555
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7556
                                                                                                                           x7555))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7557
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7558
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7558
                                                                                                                    (letrec ((x-cnd7559
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7559
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7560
                                                                                                                                    (letrec ((x-cnd7561
                                                                                                                                              (letrec ((x7562
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7562
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7561
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7563
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7564
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7565
                                                                                                                                                                                      (letrec ((x7567
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7566
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7567
                                                                                                                                                                                         x7566))))
                                                                                                                                                                              (if x-cnd7565
                                                                                                                                                                                (letrec ((x7568
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7568))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7564))))
                                                                                                                                                      g7563))))
                                                                                                                                          (letrec ((g7569
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7569))
                                                                                                                                        #f))))
                                                                                                                            g7560))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7557)))))
                                                                                        g7549)))))
                                                                          g7546)))))
                                                            g7544))))
                                                g7543)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7570
                                                        (letrec ((x7571
                                                                  (letrec ((x7572
                                                                            (letrec ((x7573
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7573))))
                                                                    (car
                                                                     x7572))))
                                                          (cdr x7571))))
                                                g7570)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7574
                                                        (letrec ((x7575
                                                                  (letrec ((x7576
                                                                            (letrec ((x7577
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7577))))
                                                                    (car
                                                                     x7576))))
                                                          (car x7575))))
                                                g7574)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7578 (eq? x y)))
                                                g7578)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7579
                                                        (letrec ((x7581
                                                                  (number? x)))
                                                          (assert x7581)))
                                                       (g7580
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7582
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7583
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7583)))))
                                                            g7582))))
                                                g7580)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7584
                                                        (letrec ((x7587
                                                                  (string?
                                                                   filename)))
                                                          (assert x7587)))
                                                       (g7585
                                                        (letrec ((x7588
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7588)))
                                                       (g7586
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7589
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7590 res))
                                                            g7590))))
                                                g7586)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7591 (cons x '())))
                                                g7591)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7592
                                                        (letrec ((x7595
                                                                  (char? c1)))
                                                          (assert x7595)))
                                                       (g7593
                                                        (letrec ((x7596
                                                                  (char? c2)))
                                                          (assert x7596)))
                                                       (g7594
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7597
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7597))))
                                                g7594)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7598
                                                        (letrec ((x7599
                                                                  (letrec ((x7600
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7600))))
                                                          (cdr x7599))))
                                                g7598)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7601
                                                        (letrec ((x7602
                                                                  (letrec ((x7603
                                                                            (letrec ((x7604
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7604))))
                                                                    (car
                                                                     x7603))))
                                                          (cdr x7602))))
                                                g7601)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7605
                                                        (letrec ((x7606
                                                                  (letrec ((x7607
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7607))))
                                                          (car x7606))))
                                                g7605)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7608
                                                        (letrec ((x7609
                                                                  (letrec ((x7610
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7610))))
                                                          (car x7609))))
                                                g7608)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7611
                                                        (letrec ((x7614
                                                                  (char? c1)))
                                                          (assert x7614)))
                                                       (g7612
                                                        (letrec ((x7615
                                                                  (char? c2)))
                                                          (assert x7615)))
                                                       (g7613
                                                        (letrec ((x7616
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7616))))
                                                g7613)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7617
                                                        (letrec ((x7618
                                                                  (letrec ((x7619
                                                                            (letrec ((x7620
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7620))))
                                                                    (car
                                                                     x7619))))
                                                          (car x7618))))
                                                g7617)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7621
                                                        (letrec ((x7623
                                                                  (number? x)))
                                                          (assert x7623)))
                                                       (g7622 (< x 0)))
                                                g7622)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7624 (memq e l)))
                                                g7624)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7625
                                                        (letrec ((x7626
                                                                  (letrec ((x7627
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7627))))
                                                          (car x7626))))
                                                g7625)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7628 '())) g7628)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7629
                                                        (letrec ((x7631
                                                                  (list? l)))
                                                          (assert x7631)))
                                                       (g7630
                                                        (letrec ((x-cnd7632
                                                                  (null? l)))
                                                          (if x-cnd7632
                                                            '()
                                                            (letrec ((x7635
                                                                      (letrec ((x7636
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7636)))
                                                                     (x7633
                                                                      (letrec ((x7634
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7634))))
                                                              (append
                                                               x7635
                                                               x7633))))))
                                                g7630)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7637
                                                        (letrec ((x7638
                                                                  (letrec ((x7639
                                                                            (letrec ((x7640
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7640))))
                                                                    (car
                                                                     x7639))))
                                                          (car x7638))))
                                                g7637)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7641
                                                        (letrec ((x7642
                                                                  (letrec ((x7643
                                                                            (letrec ((x7644
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7644))))
                                                                    (cdr
                                                                     x7643))))
                                                          (cdr x7642))))
                                                g7641)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7645
                                                        (letrec ((x7647
                                                                  (number? x)))
                                                          (assert x7647)))
                                                       (g7646
                                                        (letrec ((x7648
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7648))))
                                                g7646)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7649
                                                        (letrec ((x7650
                                                                  (letrec ((x7651
                                                                            (letrec ((x7652
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7652))))
                                                                    (car
                                                                     x7651))))
                                                          (car x7650))))
                                                g7649)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7653
                                                        (letrec ((x7656
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7656)))
                                                       (g7654
                                                        (letrec ((x7657
                                                                  (list?
                                                                   args)))
                                                          (assert x7657)))
                                                       (g7655
                                                        (letrec ((x-cnd7658
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7658
                                                            (letrec ((g7659
                                                                      (proc)))
                                                              g7659)
                                                            (letrec ((x-cnd7660
                                                                      (letrec ((x7661
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7661))))
                                                              (if x-cnd7660
                                                                (letrec ((g7662
                                                                          (letrec ((x7663
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7663))))
                                                                  g7662)
                                                                (letrec ((x-cnd7664
                                                                          (letrec ((x7665
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7665))))
                                                                  (if x-cnd7664
                                                                    (letrec ((g7666
                                                                              (letrec ((x7668
                                                                                        (car
                                                                                         args))
                                                                                       (x7667
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7668
                                                                                 x7667))))
                                                                      g7666)
                                                                    (letrec ((x-cnd7669
                                                                              (letrec ((x7670
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7670))))
                                                                      (if x-cnd7669
                                                                        (letrec ((g7671
                                                                                  (letrec ((x7674
                                                                                            (car
                                                                                             args))
                                                                                           (x7673
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7672
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7674
                                                                                     x7673
                                                                                     x7672))))
                                                                          g7671)
                                                                        (letrec ((x-cnd7675
                                                                                  (letrec ((x7676
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7676))))
                                                                          (if x-cnd7675
                                                                            (letrec ((g7677
                                                                                      (letrec ((x7681
                                                                                                (car
                                                                                                 args))
                                                                                               (x7680
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7679
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7678
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7681
                                                                                         x7680
                                                                                         x7679
                                                                                         x7678))))
                                                                              g7677)
                                                                            (letrec ((x-cnd7682
                                                                                      (letrec ((x7683
                                                                                                (letrec ((x7684
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7684))))
                                                                                        (null?
                                                                                         x7683))))
                                                                              (if x-cnd7682
                                                                                (letrec ((g7685
                                                                                          (letrec ((x7691
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7690
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7689
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7688
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7686
                                                                                                    (letrec ((x7687
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7687))))
                                                                                            (proc
                                                                                             x7691
                                                                                             x7690
                                                                                             x7689
                                                                                             x7688
                                                                                             x7686))))
                                                                                  g7685)
                                                                                (letrec ((x-cnd7692
                                                                                          (letrec ((x7693
                                                                                                    (letrec ((x7694
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7694))))
                                                                                            (null?
                                                                                             x7693))))
                                                                                  (if x-cnd7692
                                                                                    (letrec ((g7695
                                                                                              (letrec ((x7703
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7702
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7701
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7700
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7698
                                                                                                        (letrec ((x7699
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7699)))
                                                                                                       (x7696
                                                                                                        (letrec ((x7697
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7697))))
                                                                                                (proc
                                                                                                 x7703
                                                                                                 x7702
                                                                                                 x7701
                                                                                                 x7700
                                                                                                 x7698
                                                                                                 x7696))))
                                                                                      g7695)
                                                                                    (letrec ((x-cnd7704
                                                                                              (letrec ((x7705
                                                                                                        (letrec ((x7706
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7706))))
                                                                                                (null?
                                                                                                 x7705))))
                                                                                      (if x-cnd7704
                                                                                        (letrec ((g7707
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
                                                                                                               x7711)))
                                                                                                           (x7708
                                                                                                            (letrec ((x7709
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7709))))
                                                                                                    (proc
                                                                                                     x7717
                                                                                                     x7716
                                                                                                     x7715
                                                                                                     x7714
                                                                                                     x7712
                                                                                                     x7710
                                                                                                     x7708))))
                                                                                          g7707)
                                                                                        (letrec ((g7718
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7718)))))))))))))))))))
                                                g7655)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7719
                                                        (letrec ((x7721
                                                                  (list? l)))
                                                          (assert x7721)))
                                                       (g7720
                                                        (letrec ((x-cnd7722
                                                                  (null? l)))
                                                          (if x-cnd7722
                                                            #f
                                                            (letrec ((x-cnd7723
                                                                      (letrec ((x7724
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7724
                                                                         e))))
                                                              (if x-cnd7723
                                                                l
                                                                (letrec ((x7725
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7725))))))))
                                                g7720)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7726
                                                        (letrec ((x7727
                                                                  (letrec ((x7728
                                                                            (letrec ((x7729
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7729))))
                                                                    (cdr
                                                                     x7728))))
                                                          (cdr x7727))))
                                                g7726)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7730
                                                        (letrec ((x7731
                                                                  (letrec ((x7732
                                                                            (letrec ((x7733
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7733))))
                                                                    (cdr
                                                                     x7732))))
                                                          (car x7731))))
                                                g7730)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7734 (random 42)))
                                                g7734)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7735
                                                        (letrec ((x7737
                                                                  (number? x)))
                                                          (assert x7737)))
                                                       (g7736 (= x 0)))
                                                g7736)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7738
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7739
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7739))))
                                                g7738)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7740
                                                        (letrec ((x7741
                                                                  (cdr x)))
                                                          (car x7741))))
                                                g7740)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7742
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd7743
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7743
                                                                      (letrec ((x7744
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7744))
                                                                      #f))))
                                                          (letrec ((g7745
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g7745))))
                                                g7742)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7746
                                                        (letrec ((x7747
                                                                  (letrec ((x7748
                                                                            (letrec ((x7749
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7749))))
                                                                    (cdr
                                                                     x7748))))
                                                          (cdr x7747))))
                                                g7746)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7750
                                                        (letrec ((x-cnd7751
                                                                  (letrec ((x7752
                                                                            #\0))
                                                                    (char<=?
                                                                     x7752
                                                                     c))))
                                                          (if x-cnd7751
                                                            (letrec ((x7753
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7753))
                                                            #f))))
                                                g7750)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
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
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7759
                                                                         k))))
                                                              (if x-cnd7758
                                                                (car l)
                                                                (letrec ((x7760
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7760))))))))
                                                g7755)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7761 (if x #f #t)))
                                                g7761)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7762 (append l1 l2)))
                                                g7762)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7763
                                                        (letrec ((x7765
                                                                  (list? l)))
                                                          (assert x7765)))
                                                       (g7764
                                                        (letrec ((x-cnd7766
                                                                  (null? l)))
                                                          (if x-cnd7766
                                                            #f
                                                            (letrec ((x-cnd7767
                                                                      (letrec ((x7768
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7768
                                                                         e))))
                                                              (if x-cnd7767
                                                                l
                                                                (letrec ((x7769
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7769))))))))
                                                g7764)))
                                           (cadaar
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
                                                          (car x7771))))
                                                g7770)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7774
                                                        (letrec ((x7776
                                                                  (list? l)))
                                                          (assert x7776)))
                                                       (g7775
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7777
                                                                              (letrec ((x-cnd7778
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7778
                                                                                  0
                                                                                  (letrec ((x7779
                                                                                            (letrec ((x7780
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7780))))
                                                                                    (+
                                                                                     1
                                                                                     x7779))))))
                                                                      g7777))))
                                                          (letrec ((g7781
                                                                    (rec l)))
                                                            g7781))))
                                                g7775)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7782
                                                        (letrec ((x7785
                                                                  (char? c1)))
                                                          (assert x7785)))
                                                       (g7783
                                                        (letrec ((x7786
                                                                  (char? c2)))
                                                          (assert x7786)))
                                                       (g7784
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7787
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7787))))
                                                g7784)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7788
                                                        (letrec ((x7789
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7789))))
                                                g7788)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7790
                                                        (letrec ((x7791
                                                                  (letrec ((x7792
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7792))))
                                                          (cdr x7791))))
                                                g7790)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7793
                                                        (letrec ((x7795
                                                                  (list? l)))
                                                          (assert x7795)))
                                                       (g7794
                                                        (letrec ((x-cnd7796
                                                                  (null? l)))
                                                          (if x-cnd7796
                                                            #f
                                                            (letrec ((x-cnd7797
                                                                      (letrec ((x7798
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7798
                                                                         k))))
                                                              (if x-cnd7797
                                                                (car l)
                                                                (letrec ((x7799
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7799))))))))
                                                g7794)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7800
                                                        (letrec ((x7801
                                                                  (car x)))
                                                          (car x7801))))
                                                g7800)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7802
                                                        (letrec ((x7805
                                                                  (char? c1)))
                                                          (assert x7805)))
                                                       (g7803
                                                        (letrec ((x7806
                                                                  (char? c2)))
                                                          (assert x7806)))
                                                       (g7804
                                                        (letrec ((x7807
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7807))))
                                                g7804)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7808
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7809
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7809))))
                                                g7808)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7810
                                                        (letrec ((x7813
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7813)))
                                                       (g7811
                                                        (letrec ((x7814
                                                                  (list? l)))
                                                          (assert x7814)))
                                                       (g7812
                                                        (letrec ((x-cnd7815
                                                                  (null? l)))
                                                          (if x-cnd7815
                                                            #t
                                                            (letrec ((x-cnd7816
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7816
                                                                (letrec ((g7817
                                                                          (letrec ((x7819
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7819)))
                                                                         (g7818
                                                                          (letrec ((x7820
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7820))))
                                                                  g7818)
                                                                '()))))))
                                                g7812)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7821
                                                        (letrec ((x7823
                                                                  (number? x)))
                                                          (assert x7823)))
                                                       (g7822
                                                        (letrec ((x-cnd7824
                                                                  (< x 0)))
                                                          (if x-cnd7824
                                                            (- 0 x)
                                                            x))))
                                                g7822)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7825
                                                        (letrec ((x7828
                                                                  (char? c1)))
                                                          (assert x7828)))
                                                       (g7826
                                                        (letrec ((x7829
                                                                  (char? c2)))
                                                          (assert x7829)))
                                                       (g7827
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7830
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7830))))
                                                g7827)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7831
                                                        (letrec ((x7832
                                                                  (letrec ((x7833
                                                                            (letrec ((x7834
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7834))))
                                                                    (cdr
                                                                     x7833))))
                                                          (car x7832))))
                                                g7831)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7835 #f)) g7835)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7836
                                                        (letrec ((x7838
                                                                  (letrec ((x7839
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7839)))
                                                                 (x7837
                                                                  (gcd m n)))
                                                          (/ x7838 x7837))))
                                                g7836)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7840
                                                        (letrec ((x7842
                                                                  (number? x)))
                                                          (assert x7842)))
                                                       (g7841
                                                        (letrec ((x7843
                                                                  (<= x y)))
                                                          (not x7843))))
                                                g7841)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7844
                                                        (letrec ((x7848
                                                                  (list? l)))
                                                          (assert x7848)))
                                                       (g7845
                                                        (letrec ((x7849
                                                                  (number?
                                                                   index)))
                                                          (assert x7849)))
                                                       (g7846
                                                        (letrec ((x7850
                                                                  (letrec ((x7851
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7851))))
                                                          (assert x7850)))
                                                       (g7847
                                                        (letrec ((x-cnd7852
                                                                  (= index 0)))
                                                          (if x-cnd7852
                                                            (car l)
                                                            (letrec ((x7854
                                                                      (cdr l))
                                                                     (x7853
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7854
                                                               x7853))))))
                                                g7847)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7855
                                                        (letrec ((x-cnd7856
                                                                  (= b 0)))
                                                          (if x-cnd7856
                                                            a
                                                            (letrec ((x7857
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7857))))))
                                                g7855)))
                                           (member
                                            (lambda (x l)
                                              (letrec ((g7858
                                                        (letrec ((x-cnd7859
                                                                  (empty? l)))
                                                          (if x-cnd7859
                                                            empty
                                                            (letrec ((x-cnd7860
                                                                      (letrec ((x7861
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x
                                                                         x7861))))
                                                              (if x-cnd7860
                                                                l
                                                                (letrec ((x7862
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   x
                                                                   x7862))))))))
                                                g7858))))
                                    (letrec ((g7863
                                              ((lambda (j7331 k7332 f7333)
                                                 (letrec ((g7864
                                                           (lambda ()
                                                             (letrec ((g7865
                                                                       (letrec ((x7867
                                                                                 (letrec ((x7869
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7868
                                                                                           (listof
                                                                                            any/c)))
                                                                                   (any/c
                                                                                    x7869
                                                                                    x7868)))
                                                                                (x7866
                                                                                 (f7333)))
                                                                         (x7867
                                                                          j7331
                                                                          k7332
                                                                          x7866))))
                                                               g7865))))
                                                   g7864))
                                               'module
                                               'importer
                                               member)))
                                      g7863))))
                          g7347))))
              g7345)))
    g7344))
