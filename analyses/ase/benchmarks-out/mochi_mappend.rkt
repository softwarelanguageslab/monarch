(letrec ((any? (lambda (v) (letrec ((g7345 #t)) g7345)))
         (meta (lambda (v) (letrec ((g7346 v)) g7346)))
         (member
          (lambda (v lst)
            (letrec ((g7347
                      (letrec ((g7348
                                (letrec ((x-e7349 lst))
                                  (match
                                   x-e7349
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7350 (eq? v v1)))
                                       (if x-cnd7350 #t (member v vs)))))))))
                        g7348)))
              g7347)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7351 (lambda (v) (letrec ((g7352 v)) g7352)))) g7351)))
         (nonzero?
          (lambda (v)
            (letrec ((g7353 (letrec ((x7354 (= v 0))) (not x7354)))) g7353))))
  (letrec ((g7355
            (letrec ((g7356
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7357 '())
                                 (g7358
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7359
                                                        (lambda (k j lst)
                                                          (letrec ((g7360
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7361
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7361))
                                                                     lst)))
                                                            g7360))))
                                                g7359)))
                                           (real?/c
                                            (lambda (g7259 g7260 g7261)
                                              (letrec ((g7362
                                                        (letrec ((x-cnd7363
                                                                  (real?
                                                                   g7261)))
                                                          (if x-cnd7363
                                                            g7261
                                                            (blame
                                                             g7259
                                                             'real?)))))
                                                g7362)))
                                           (boolean?/c
                                            (lambda (g7262 g7263 g7264)
                                              (letrec ((g7364
                                                        (letrec ((x-cnd7365
                                                                  (boolean?
                                                                   g7264)))
                                                          (if x-cnd7365
                                                            g7264
                                                            (blame
                                                             g7262
                                                             'boolean?)))))
                                                g7364)))
                                           (number?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7366
                                                        (letrec ((x-cnd7367
                                                                  (number?
                                                                   g7267)))
                                                          (if x-cnd7367
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'number?)))))
                                                g7366)))
                                           (any/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7368
                                                        (letrec ((x-cnd7369
                                                                  ((lambda (v)
                                                                     (letrec ((g7370
                                                                               #t))
                                                                       g7370))
                                                                   g7270)))
                                                          (if x-cnd7369
                                                            g7270
                                                            (blame
                                                             g7268
                                                             '(lambda (v)
                                                                #t))))))
                                                g7368)))
                                           (any?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7371
                                                        (letrec ((x-cnd7372
                                                                  ((lambda (v)
                                                                     (letrec ((g7373
                                                                               #t))
                                                                       g7373))
                                                                   g7273)))
                                                          (if x-cnd7372
                                                            g7273
                                                            (blame
                                                             g7271
                                                             '(lambda (v)
                                                                #t))))))
                                                g7371)))
                                           (cons?/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7374
                                                        (letrec ((x-cnd7375
                                                                  (pair?
                                                                   g7276)))
                                                          (if x-cnd7375
                                                            g7276
                                                            (blame
                                                             g7274
                                                             'pair?)))))
                                                g7374)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7376
                                                        (letrec ((x-cnd7377
                                                                  (pair?
                                                                   g7279)))
                                                          (if x-cnd7377
                                                            g7279
                                                            (blame
                                                             g7277
                                                             'pair?)))))
                                                g7376)))
                                           (integer?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7378
                                                        (letrec ((x-cnd7379
                                                                  (integer?
                                                                   g7282)))
                                                          (if x-cnd7379
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'integer?)))))
                                                g7378)))
                                           (symbol?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7380
                                                        (letrec ((x-cnd7381
                                                                  (symbol?
                                                                   g7285)))
                                                          (if x-cnd7381
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'symbol?)))))
                                                g7380)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7382
                                                        (lambda (k j v)
                                                          (letrec ((g7383
                                                                    (letrec ((x-cnd7384
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7384
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7383))))
                                                g7382)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7385
                                                        (lambda (k j v)
                                                          (letrec ((g7386
                                                                    (letrec ((x-cnd7387
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7387
                                                                        '()
                                                                        (letrec ((x7391
                                                                                  (letrec ((x7392
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7392)))
                                                                                 (x7388
                                                                                  (letrec ((x7390
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7389
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7390
                                                                                     k
                                                                                     j
                                                                                     x7389))))
                                                                          (orig-cons
                                                                           x7391
                                                                           x7388))))))
                                                            g7386))))
                                                g7385)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7393 #t)) g7393)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7394
                                                        (letrec ((x7395
                                                                  (= v 0)))
                                                          (not x7395))))
                                                g7394)))
                                           (nonzero?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7396
                                                        (letrec ((x-cnd7397
                                                                  ((lambda (v)
                                                                     (letrec ((g7398
                                                                               (letrec ((x7399
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7399))))
                                                                       g7398))
                                                                   g7288)))
                                                          (if x-cnd7397
                                                            g7288
                                                            (blame
                                                             g7286
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7396)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7400 v)) g7400)))
                                           (+
                                            ((lambda (j7291 k7292 f7293)
                                               (letrec ((g7402
                                                         (lambda (g7289 g7290)
                                                           (letrec ((g7403
                                                                     (letrec ((x7404
                                                                               (letrec ((x7406
                                                                                         (number?/c
                                                                                          j7291
                                                                                          k7292
                                                                                          g7289))
                                                                                        (x7405
                                                                                         (number?/c
                                                                                          j7291
                                                                                          k7292
                                                                                          g7290)))
                                                                                 (f7293
                                                                                  x7406
                                                                                  x7405))))
                                                                       (number?/c
                                                                        j7291
                                                                        k7292
                                                                        x7404))))
                                                             g7403))))
                                                 g7402))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7401 (orig-+ a b)))
                                                 g7401))))
                                           (-
                                            ((lambda (j7296 k7297 f7298)
                                               (letrec ((g7408
                                                         (lambda (g7294 g7295)
                                                           (letrec ((g7409
                                                                     (letrec ((x7410
                                                                               (letrec ((x7412
                                                                                         (number?/c
                                                                                          j7296
                                                                                          k7297
                                                                                          g7294))
                                                                                        (x7411
                                                                                         (number?/c
                                                                                          j7296
                                                                                          k7297
                                                                                          g7295)))
                                                                                 (f7298
                                                                                  x7412
                                                                                  x7411))))
                                                                       (number?/c
                                                                        j7296
                                                                        k7297
                                                                        x7410))))
                                                             g7409))))
                                                 g7408))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7407 (orig-- a b)))
                                                 g7407))))
                                           (*
                                            ((lambda (j7301 k7302 f7303)
                                               (letrec ((g7414
                                                         (lambda (g7299 g7300)
                                                           (letrec ((g7415
                                                                     (letrec ((x7416
                                                                               (letrec ((x7418
                                                                                         (number?/c
                                                                                          j7301
                                                                                          k7302
                                                                                          g7299))
                                                                                        (x7417
                                                                                         (number?/c
                                                                                          j7301
                                                                                          k7302
                                                                                          g7300)))
                                                                                 (f7303
                                                                                  x7418
                                                                                  x7417))))
                                                                       (number?/c
                                                                        j7301
                                                                        k7302
                                                                        x7416))))
                                                             g7415))))
                                                 g7414))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7413 (orig-* a b)))
                                                 g7413))))
                                           (/
                                            ((lambda (j7306 k7307 f7308)
                                               (letrec ((g7420
                                                         (lambda (g7304 g7305)
                                                           (letrec ((g7421
                                                                     (letrec ((x7422
                                                                               (letrec ((x7424
                                                                                         (number?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7304))
                                                                                        (x7423
                                                                                         (number?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7305)))
                                                                                 (f7308
                                                                                  x7424
                                                                                  x7423))))
                                                                       (number?/c
                                                                        j7306
                                                                        k7307
                                                                        x7422))))
                                                             g7421))))
                                                 g7420))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7419 (orig-/ a b)))
                                                 g7419))))
                                           (car
                                            ((lambda (j7310 k7311 f7312)
                                               (letrec ((g7426
                                                         (lambda (g7309)
                                                           (letrec ((g7427
                                                                     (letrec ((x7428
                                                                               (letrec ((x7429
                                                                                         (pair?/c
                                                                                          j7310
                                                                                          k7311
                                                                                          g7309)))
                                                                                 (f7312
                                                                                  x7429))))
                                                                       (any/c
                                                                        j7310
                                                                        k7311
                                                                        x7428))))
                                                             g7427))))
                                                 g7426))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7425 (orig-car p)))
                                                 g7425))))
                                           (cdr
                                            ((lambda (j7314 k7315 f7316)
                                               (letrec ((g7431
                                                         (lambda (g7313)
                                                           (letrec ((g7432
                                                                     (letrec ((x7433
                                                                               (letrec ((x7434
                                                                                         (pair?/c
                                                                                          j7314
                                                                                          k7315
                                                                                          g7313)))
                                                                                 (f7316
                                                                                  x7434))))
                                                                       (any/c
                                                                        j7314
                                                                        k7315
                                                                        x7433))))
                                                             g7432))))
                                                 g7431))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7430 (orig-cdr p)))
                                                 g7430))))
                                           (cons
                                            ((lambda (j7319 k7320 f7321)
                                               (letrec ((g7436
                                                         (lambda (g7317 g7318)
                                                           (letrec ((g7437
                                                                     (letrec ((x7438
                                                                               (letrec ((x7440
                                                                                         (any/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7317))
                                                                                        (x7439
                                                                                         (any/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7318)))
                                                                                 (f7321
                                                                                  x7440
                                                                                  x7439))))
                                                                       (pair?/c
                                                                        j7319
                                                                        k7320
                                                                        x7438))))
                                                             g7437))))
                                                 g7436))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7435
                                                         (orig-cons a b)))
                                                 g7435))))
                                           (vector-ref
                                            ((lambda (j7323 k7324 f7325)
                                               (letrec ((g7442
                                                         (lambda (g7322)
                                                           (letrec ((g7443
                                                                     (letrec ((x7444
                                                                               (letrec ((x7445
                                                                                         (vector?/c
                                                                                          j7323
                                                                                          k7324
                                                                                          g7322)))
                                                                                 (f7325
                                                                                  x7445))))
                                                                       (integer?/c
                                                                        j7323
                                                                        k7324
                                                                        x7444))))
                                                             g7443))))
                                                 g7442))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7441
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7441))))
                                           (vector-set!
                                            ((lambda (j7328 k7329 f7330)
                                               (letrec ((g7447
                                                         (lambda (g7326 g7327)
                                                           (letrec ((g7448
                                                                     (letrec ((x7449
                                                                               (letrec ((x7451
                                                                                         (vector?/c
                                                                                          j7328
                                                                                          k7329
                                                                                          g7326))
                                                                                        (x7450
                                                                                         (integer?/c
                                                                                          j7328
                                                                                          k7329
                                                                                          g7327)))
                                                                                 (f7330
                                                                                  x7451
                                                                                  x7450))))
                                                                       (any/c
                                                                        j7328
                                                                        k7329
                                                                        x7449))))
                                                             g7448))))
                                                 g7447))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7446
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7446))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7452
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7452)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7453
                                                        (letrec ((x7454
                                                                  (letrec ((x7455
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7455))))
                                                          (cdr x7454))))
                                                g7453)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7456
                                                        (letrec ((x7459
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7459)))
                                                       (g7457
                                                        (letrec ((x7460
                                                                  (list? l)))
                                                          (assert x7460)))
                                                       (g7458
                                                        (letrec ((x-cnd7461
                                                                  (null? l)))
                                                          (if x-cnd7461
                                                            '()
                                                            (letrec ((x7464
                                                                      (letrec ((x7465
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7465)))
                                                                     (x7462
                                                                      (letrec ((x7463
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7463))))
                                                              (cons
                                                               x7464
                                                               x7462))))))
                                                g7458)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7466
                                                        (letrec ((x7467
                                                                  (car x)))
                                                          (cdr x7467))))
                                                g7466)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7468
                                                        (letrec ((x7469
                                                                  (letrec ((x7470
                                                                            (letrec ((x7471
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7471))))
                                                                    (cdr
                                                                     x7470))))
                                                          (car x7469))))
                                                g7468)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7472
                                                        (letrec ((x7473
                                                                  (letrec ((x7474
                                                                            (letrec ((x7475
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7475))))
                                                                    (car
                                                                     x7474))))
                                                          (cdr x7473))))
                                                g7472)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7476
                                                        (letrec ((x7479
                                                                  (string?
                                                                   filename)))
                                                          (assert x7479)))
                                                       (g7477
                                                        (letrec ((x7480
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7480)))
                                                       (g7478
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7481
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7482 res))
                                                            g7482))))
                                                g7478)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7483
                                                        (letrec ((x7484
                                                                  (letrec ((x7485
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7485))))
                                                          (car x7484))))
                                                g7483)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7486
                                                        (letrec ((x7487
                                                                  (letrec ((x7488
                                                                            (letrec ((x7489
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7489))))
                                                                    (car
                                                                     x7488))))
                                                          (cdr x7487))))
                                                g7486)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7490
                                                        (letrec ((x7492
                                                                  (list? l)))
                                                          (assert x7492)))
                                                       (g7491
                                                        (letrec ((x-cnd7493
                                                                  (null? l)))
                                                          (if x-cnd7493
                                                            #f
                                                            (letrec ((x-cnd7494
                                                                      (letrec ((x7495
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7495
                                                                         k))))
                                                              (if x-cnd7494
                                                                (car l)
                                                                (letrec ((x7496
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7496))))))))
                                                g7491)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7497
                                                        (letrec ((x7498
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7498))))
                                                g7497)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7499
                                                        (letrec ((x7501
                                                                  (list? l)))
                                                          (assert x7501)))
                                                       (g7500
                                                        (letrec ((x-cnd7502
                                                                  (null? l)))
                                                          (if x-cnd7502
                                                            ""
                                                            (letrec ((x7505
                                                                      (letrec ((x7506
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7506)))
                                                                     (x7503
                                                                      (letrec ((x7504
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7504))))
                                                              (string-append
                                                               x7505
                                                               x7503))))))
                                                g7500)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7507
                                                        (letrec ((x7510
                                                                  (char? c1)))
                                                          (assert x7510)))
                                                       (g7508
                                                        (letrec ((x7511
                                                                  (char? c2)))
                                                          (assert x7511)))
                                                       (g7509
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7512
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7512))))
                                                g7509)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7513
                                                        (letrec ((x7514
                                                                  (letrec ((x7515
                                                                            (letrec ((x7516
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7516))))
                                                                    (cdr
                                                                     x7515))))
                                                          (cdr x7514))))
                                                g7513)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7517
                                                        (letrec ((x7520
                                                                  (list? l)))
                                                          (assert x7520)))
                                                       (g7518
                                                        (letrec ((x7521
                                                                  (number?)))
                                                          (assert x7521)))
                                                       (g7519
                                                        (letrec ((x-cnd7522
                                                                  (zero? k)))
                                                          (if x-cnd7522
                                                            x
                                                            (letrec ((x7524
                                                                      (cdr x))
                                                                     (x7523
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7524
                                                               x7523))))))
                                                g7519)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7525 '())) g7525)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7526
                                                        (letrec ((x-cnd7527
                                                                  (letrec ((x7528
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7528))))
                                                          (if x-cnd7527
                                                            (letrec ((x7529
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7529))
                                                            #f))))
                                                g7526)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7530
                                                        (letrec ((x7532
                                                                  (number? x)))
                                                          (assert x7532)))
                                                       (g7531
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7533
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7534
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7534)))))
                                                            g7533))))
                                                g7531)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7535
                                                        (letrec ((val7244
                                                                  (letrec ((x7536
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7536
                                                                     9))))
                                                          (letrec ((g7537
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7538
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7538
                                                                                   10))))
                                                                        (letrec ((g7539
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7540
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7540
                                                                                       32)))))
                                                                          g7539)))))
                                                            g7537))))
                                                g7535)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7541
                                                        (letrec ((x7542
                                                                  (letrec ((x7543
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7543))))
                                                          (cdr x7542))))
                                                g7541)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7544
                                                        (letrec ((x7546
                                                                  (number? x)))
                                                          (assert x7546)))
                                                       (g7545 (> x 0)))
                                                g7545)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7547 #f)) g7547)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7548
                                                        (letrec ((x7549
                                                                  (cdr x)))
                                                          (cdr x7549))))
                                                g7548)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7550
                                                        (letrec ((x7552
                                                                  (number? x)))
                                                          (assert x7552)))
                                                       (g7551
                                                        (letrec ((x-cnd7553
                                                                  (< x 0)))
                                                          (if x-cnd7553
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7551)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7554
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7555
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7556
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7556
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7557
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7558
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7558
                                                                                                  (letrec ((x-cnd7559
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7559
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7560
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7561
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7561
                                                                                                                (letrec ((x-cnd7562
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7562
                                                                                                                    (letrec ((x-cnd7563
                                                                                                                              (letrec ((x7565
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7564
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7565
                                                                                                                                 x7564))))
                                                                                                                      (if x-cnd7563
                                                                                                                        (letrec ((x7567
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7566
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7567
                                                                                                                           x7566))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7568
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7569
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7569
                                                                                                                    (letrec ((x-cnd7570
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7570
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7571
                                                                                                                                    (letrec ((x-cnd7572
                                                                                                                                              (letrec ((x7573
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7573
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7572
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7574
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7575
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7576
                                                                                                                                                                                      (letrec ((x7578
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7577
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7578
                                                                                                                                                                                         x7577))))
                                                                                                                                                                              (if x-cnd7576
                                                                                                                                                                                (letrec ((x7579
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7579))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7575))))
                                                                                                                                                      g7574))))
                                                                                                                                          (letrec ((g7580
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7580))
                                                                                                                                        #f))))
                                                                                                                            g7571))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7568)))))
                                                                                        g7560)))))
                                                                          g7557)))))
                                                            g7555))))
                                                g7554)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7581
                                                        (letrec ((x7582
                                                                  (letrec ((x7583
                                                                            (letrec ((x7584
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7584))))
                                                                    (car
                                                                     x7583))))
                                                          (cdr x7582))))
                                                g7581)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7585
                                                        (letrec ((x7586
                                                                  (letrec ((x7587
                                                                            (letrec ((x7588
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7588))))
                                                                    (car
                                                                     x7587))))
                                                          (car x7586))))
                                                g7585)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7589 (eq? x y)))
                                                g7589)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7590
                                                        (letrec ((x7592
                                                                  (number? x)))
                                                          (assert x7592)))
                                                       (g7591
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7593
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7594
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7594)))))
                                                            g7593))))
                                                g7591)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7595
                                                        (letrec ((x7598
                                                                  (string?
                                                                   filename)))
                                                          (assert x7598)))
                                                       (g7596
                                                        (letrec ((x7599
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7599)))
                                                       (g7597
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7600
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7601 res))
                                                            g7601))))
                                                g7597)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7602 (cons x '())))
                                                g7602)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7603
                                                        (letrec ((x7606
                                                                  (char? c1)))
                                                          (assert x7606)))
                                                       (g7604
                                                        (letrec ((x7607
                                                                  (char? c2)))
                                                          (assert x7607)))
                                                       (g7605
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7608
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7608))))
                                                g7605)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7609
                                                        (letrec ((x7610
                                                                  (letrec ((x7611
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7611))))
                                                          (cdr x7610))))
                                                g7609)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7612
                                                        (letrec ((x7613
                                                                  (letrec ((x7614
                                                                            (letrec ((x7615
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7615))))
                                                                    (car
                                                                     x7614))))
                                                          (cdr x7613))))
                                                g7612)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7616
                                                        (letrec ((x7617
                                                                  (letrec ((x7618
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7618))))
                                                          (car x7617))))
                                                g7616)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7619
                                                        (letrec ((x7620
                                                                  (letrec ((x7621
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7621))))
                                                          (car x7620))))
                                                g7619)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7622
                                                        (letrec ((x7625
                                                                  (char? c1)))
                                                          (assert x7625)))
                                                       (g7623
                                                        (letrec ((x7626
                                                                  (char? c2)))
                                                          (assert x7626)))
                                                       (g7624
                                                        (letrec ((x7627
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7627))))
                                                g7624)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7628
                                                        (letrec ((x7629
                                                                  (letrec ((x7630
                                                                            (letrec ((x7631
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7631))))
                                                                    (car
                                                                     x7630))))
                                                          (car x7629))))
                                                g7628)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7632
                                                        (letrec ((x7634
                                                                  (number? x)))
                                                          (assert x7634)))
                                                       (g7633 (< x 0)))
                                                g7633)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7635 (memq e l)))
                                                g7635)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7636
                                                        (letrec ((x7637
                                                                  (letrec ((x7638
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7638))))
                                                          (car x7637))))
                                                g7636)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7639 '())) g7639)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7640
                                                        (letrec ((x7642
                                                                  (list? l)))
                                                          (assert x7642)))
                                                       (g7641
                                                        (letrec ((x-cnd7643
                                                                  (null? l)))
                                                          (if x-cnd7643
                                                            '()
                                                            (letrec ((x7646
                                                                      (letrec ((x7647
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7647)))
                                                                     (x7644
                                                                      (letrec ((x7645
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7645))))
                                                              (append
                                                               x7646
                                                               x7644))))))
                                                g7641)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7648
                                                        (letrec ((x7649
                                                                  (letrec ((x7650
                                                                            (letrec ((x7651
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7651))))
                                                                    (car
                                                                     x7650))))
                                                          (car x7649))))
                                                g7648)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7652
                                                        (letrec ((x7653
                                                                  (letrec ((x7654
                                                                            (letrec ((x7655
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7655))))
                                                                    (cdr
                                                                     x7654))))
                                                          (cdr x7653))))
                                                g7652)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7656
                                                        (letrec ((x7658
                                                                  (number? x)))
                                                          (assert x7658)))
                                                       (g7657
                                                        (letrec ((x7659
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7659))))
                                                g7657)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7660
                                                        (letrec ((x7661
                                                                  (letrec ((x7662
                                                                            (letrec ((x7663
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7663))))
                                                                    (car
                                                                     x7662))))
                                                          (car x7661))))
                                                g7660)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7664
                                                        (letrec ((x7667
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7667)))
                                                       (g7665
                                                        (letrec ((x7668
                                                                  (list?
                                                                   args)))
                                                          (assert x7668)))
                                                       (g7666
                                                        (letrec ((x-cnd7669
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7669
                                                            (letrec ((g7670
                                                                      (proc)))
                                                              g7670)
                                                            (letrec ((x-cnd7671
                                                                      (letrec ((x7672
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7672))))
                                                              (if x-cnd7671
                                                                (letrec ((g7673
                                                                          (letrec ((x7674
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7674))))
                                                                  g7673)
                                                                (letrec ((x-cnd7675
                                                                          (letrec ((x7676
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7676))))
                                                                  (if x-cnd7675
                                                                    (letrec ((g7677
                                                                              (letrec ((x7679
                                                                                        (car
                                                                                         args))
                                                                                       (x7678
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7679
                                                                                 x7678))))
                                                                      g7677)
                                                                    (letrec ((x-cnd7680
                                                                              (letrec ((x7681
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7681))))
                                                                      (if x-cnd7680
                                                                        (letrec ((g7682
                                                                                  (letrec ((x7685
                                                                                            (car
                                                                                             args))
                                                                                           (x7684
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7683
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7685
                                                                                     x7684
                                                                                     x7683))))
                                                                          g7682)
                                                                        (letrec ((x-cnd7686
                                                                                  (letrec ((x7687
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7687))))
                                                                          (if x-cnd7686
                                                                            (letrec ((g7688
                                                                                      (letrec ((x7692
                                                                                                (car
                                                                                                 args))
                                                                                               (x7691
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7690
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7689
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7692
                                                                                         x7691
                                                                                         x7690
                                                                                         x7689))))
                                                                              g7688)
                                                                            (letrec ((x-cnd7693
                                                                                      (letrec ((x7694
                                                                                                (letrec ((x7695
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7695))))
                                                                                        (null?
                                                                                         x7694))))
                                                                              (if x-cnd7693
                                                                                (letrec ((g7696
                                                                                          (letrec ((x7702
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7701
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7700
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7699
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7697
                                                                                                    (letrec ((x7698
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7698))))
                                                                                            (proc
                                                                                             x7702
                                                                                             x7701
                                                                                             x7700
                                                                                             x7699
                                                                                             x7697))))
                                                                                  g7696)
                                                                                (letrec ((x-cnd7703
                                                                                          (letrec ((x7704
                                                                                                    (letrec ((x7705
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7705))))
                                                                                            (null?
                                                                                             x7704))))
                                                                                  (if x-cnd7703
                                                                                    (letrec ((g7706
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
                                                                                                         args))
                                                                                                       (x7709
                                                                                                        (letrec ((x7710
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7710)))
                                                                                                       (x7707
                                                                                                        (letrec ((x7708
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7708))))
                                                                                                (proc
                                                                                                 x7714
                                                                                                 x7713
                                                                                                 x7712
                                                                                                 x7711
                                                                                                 x7709
                                                                                                 x7707))))
                                                                                      g7706)
                                                                                    (letrec ((x-cnd7715
                                                                                              (letrec ((x7716
                                                                                                        (letrec ((x7717
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7717))))
                                                                                                (null?
                                                                                                 x7716))))
                                                                                      (if x-cnd7715
                                                                                        (letrec ((g7718
                                                                                                  (letrec ((x7728
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7727
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7726
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7725
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7723
                                                                                                            (letrec ((x7724
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7724)))
                                                                                                           (x7721
                                                                                                            (letrec ((x7722
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7722)))
                                                                                                           (x7719
                                                                                                            (letrec ((x7720
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7720))))
                                                                                                    (proc
                                                                                                     x7728
                                                                                                     x7727
                                                                                                     x7726
                                                                                                     x7725
                                                                                                     x7723
                                                                                                     x7721
                                                                                                     x7719))))
                                                                                          g7718)
                                                                                        (letrec ((g7729
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7729)))))))))))))))))))
                                                g7666)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7730
                                                        (letrec ((x7732
                                                                  (list? l)))
                                                          (assert x7732)))
                                                       (g7731
                                                        (letrec ((x-cnd7733
                                                                  (null? l)))
                                                          (if x-cnd7733
                                                            #f
                                                            (letrec ((x-cnd7734
                                                                      (letrec ((x7735
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7735
                                                                         e))))
                                                              (if x-cnd7734
                                                                l
                                                                (letrec ((x7736
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7736))))))))
                                                g7731)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7737
                                                        (letrec ((x7738
                                                                  (letrec ((x7739
                                                                            (letrec ((x7740
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7740))))
                                                                    (cdr
                                                                     x7739))))
                                                          (cdr x7738))))
                                                g7737)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7741
                                                        (letrec ((x7742
                                                                  (letrec ((x7743
                                                                            (letrec ((x7744
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7744))))
                                                                    (cdr
                                                                     x7743))))
                                                          (car x7742))))
                                                g7741)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7745 (random 42)))
                                                g7745)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7746
                                                        (letrec ((x7748
                                                                  (number? x)))
                                                          (assert x7748)))
                                                       (g7747 (= x 0)))
                                                g7747)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7749
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7750
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7750))))
                                                g7749)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7751
                                                        (letrec ((x7752
                                                                  (cdr x)))
                                                          (car x7752))))
                                                g7751)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7753
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd7754
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7754
                                                                      (letrec ((x7755
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7755))
                                                                      #f))))
                                                          (letrec ((g7756
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g7756))))
                                                g7753)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7757
                                                        (letrec ((x7758
                                                                  (letrec ((x7759
                                                                            (letrec ((x7760
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7760))))
                                                                    (cdr
                                                                     x7759))))
                                                          (cdr x7758))))
                                                g7757)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7761
                                                        (letrec ((x-cnd7762
                                                                  (letrec ((x7763
                                                                            #\0))
                                                                    (char<=?
                                                                     x7763
                                                                     c))))
                                                          (if x-cnd7762
                                                            (letrec ((x7764
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7764))
                                                            #f))))
                                                g7761)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
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
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7770
                                                                         k))))
                                                              (if x-cnd7769
                                                                (car l)
                                                                (letrec ((x7771
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7771))))))))
                                                g7766)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7772 (if x #f #t)))
                                                g7772)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7773 (append l1 l2)))
                                                g7773)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7774
                                                        (letrec ((x7776
                                                                  (list? l)))
                                                          (assert x7776)))
                                                       (g7775
                                                        (letrec ((x-cnd7777
                                                                  (null? l)))
                                                          (if x-cnd7777
                                                            #f
                                                            (letrec ((x-cnd7778
                                                                      (letrec ((x7779
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7779
                                                                         e))))
                                                              (if x-cnd7778
                                                                l
                                                                (letrec ((x7780
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7780))))))))
                                                g7775)))
                                           (cadaar
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
                                                          (car x7782))))
                                                g7781)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7785
                                                        (letrec ((x7787
                                                                  (list? l)))
                                                          (assert x7787)))
                                                       (g7786
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7788
                                                                              (letrec ((x-cnd7789
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7789
                                                                                  0
                                                                                  (letrec ((x7790
                                                                                            (letrec ((x7791
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7791))))
                                                                                    (+
                                                                                     1
                                                                                     x7790))))))
                                                                      g7788))))
                                                          (letrec ((g7792
                                                                    (rec l)))
                                                            g7792))))
                                                g7786)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7793
                                                        (letrec ((x7796
                                                                  (char? c1)))
                                                          (assert x7796)))
                                                       (g7794
                                                        (letrec ((x7797
                                                                  (char? c2)))
                                                          (assert x7797)))
                                                       (g7795
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7798
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7798))))
                                                g7795)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7799
                                                        (letrec ((x7800
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7800))))
                                                g7799)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7801
                                                        (letrec ((x7802
                                                                  (letrec ((x7803
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7803))))
                                                          (cdr x7802))))
                                                g7801)))
                                           (assoc
                                            (lambda (k l)
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
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7809
                                                                         k))))
                                                              (if x-cnd7808
                                                                (car l)
                                                                (letrec ((x7810
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7810))))))))
                                                g7805)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7811
                                                        (letrec ((x7812
                                                                  (car x)))
                                                          (car x7812))))
                                                g7811)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7813
                                                        (letrec ((x7816
                                                                  (char? c1)))
                                                          (assert x7816)))
                                                       (g7814
                                                        (letrec ((x7817
                                                                  (char? c2)))
                                                          (assert x7817)))
                                                       (g7815
                                                        (letrec ((x7818
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7818))))
                                                g7815)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7819
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7820
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7820))))
                                                g7819)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7821
                                                        (letrec ((x7824
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7824)))
                                                       (g7822
                                                        (letrec ((x7825
                                                                  (list? l)))
                                                          (assert x7825)))
                                                       (g7823
                                                        (letrec ((x-cnd7826
                                                                  (null? l)))
                                                          (if x-cnd7826
                                                            #t
                                                            (letrec ((x-cnd7827
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7827
                                                                (letrec ((g7828
                                                                          (letrec ((x7830
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7830)))
                                                                         (g7829
                                                                          (letrec ((x7831
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7831))))
                                                                  g7829)
                                                                '()))))))
                                                g7823)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7832
                                                        (letrec ((x7834
                                                                  (number? x)))
                                                          (assert x7834)))
                                                       (g7833
                                                        (letrec ((x-cnd7835
                                                                  (< x 0)))
                                                          (if x-cnd7835
                                                            (- 0 x)
                                                            x))))
                                                g7833)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7836
                                                        (letrec ((x7839
                                                                  (char? c1)))
                                                          (assert x7839)))
                                                       (g7837
                                                        (letrec ((x7840
                                                                  (char? c2)))
                                                          (assert x7840)))
                                                       (g7838
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7841
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7841))))
                                                g7838)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7842
                                                        (letrec ((x7843
                                                                  (letrec ((x7844
                                                                            (letrec ((x7845
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7845))))
                                                                    (cdr
                                                                     x7844))))
                                                          (car x7843))))
                                                g7842)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7846 #f)) g7846)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7847
                                                        (letrec ((x7849
                                                                  (letrec ((x7850
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7850)))
                                                                 (x7848
                                                                  (gcd m n)))
                                                          (/ x7849 x7848))))
                                                g7847)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7851
                                                        (letrec ((x7853
                                                                  (number? x)))
                                                          (assert x7853)))
                                                       (g7852
                                                        (letrec ((x7854
                                                                  (<= x y)))
                                                          (not x7854))))
                                                g7852)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7855
                                                        (letrec ((x7859
                                                                  (list? l)))
                                                          (assert x7859)))
                                                       (g7856
                                                        (letrec ((x7860
                                                                  (number?
                                                                   index)))
                                                          (assert x7860)))
                                                       (g7857
                                                        (letrec ((x7861
                                                                  (letrec ((x7862
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7862))))
                                                          (assert x7861)))
                                                       (g7858
                                                        (letrec ((x-cnd7863
                                                                  (= index 0)))
                                                          (if x-cnd7863
                                                            (car l)
                                                            (letrec ((x7865
                                                                      (cdr l))
                                                                     (x7864
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7865
                                                               x7864))))))
                                                g7858)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7866
                                                        (letrec ((x-cnd7867
                                                                  (= b 0)))
                                                          (if x-cnd7867
                                                            a
                                                            (letrec ((x7868
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7868))))))
                                                g7866)))
                                           (mappend
                                            (lambda (xs ys)
                                              (letrec ((g7869
                                                        (letrec ((x-cnd7870
                                                                  (empty? xs)))
                                                          (if x-cnd7870
                                                            ys
                                                            (letrec ((x7873
                                                                      (car xs))
                                                                     (x7871
                                                                      (letrec ((x7872
                                                                                (cdr
                                                                                 xs)))
                                                                        (mappend
                                                                         x7872
                                                                         ys))))
                                                              (cons
                                                               x7873
                                                               x7871))))))
                                                g7869)))
                                           (map-append
                                            (lambda (f xs)
                                              (letrec ((g7874
                                                        (letrec ((x-cnd7875
                                                                  (empty? xs)))
                                                          (if x-cnd7875
                                                            empty
                                                            (letrec ((x7878
                                                                      (letrec ((x7879
                                                                                (car
                                                                                 xs)))
                                                                        (f
                                                                         x7879)))
                                                                     (x7876
                                                                      (letrec ((x7877
                                                                                (cdr
                                                                                 xs)))
                                                                        (map-append
                                                                         f
                                                                         x7877))))
                                                              (mappend
                                                               x7878
                                                               x7876))))))
                                                g7874))))
                                    (letrec ((g7880
                                              (letrec ((x7884
                                                        ((lambda (j7333
                                                                  k7334
                                                                  f7335)
                                                           (letrec ((g7885
                                                                     (lambda (g7331
                                                                              g7332)
                                                                       (letrec ((g7886
                                                                                 (letrec ((x7896
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7887
                                                                                           (letrec ((x7890
                                                                                                     ((lambda (j7337
                                                                                                               k7338
                                                                                                               f7339)
                                                                                                        (letrec ((g7891
                                                                                                                  (lambda (g7336)
                                                                                                                    (letrec ((g7892
                                                                                                                              (letrec ((x7895
                                                                                                                                        (listof
                                                                                                                                         any/c))
                                                                                                                                       (x7893
                                                                                                                                        (letrec ((x7894
                                                                                                                                                  (any/c
                                                                                                                                                   j7337
                                                                                                                                                   k7338
                                                                                                                                                   g7336)))
                                                                                                                                          (f7339
                                                                                                                                           x7894))))
                                                                                                                                (x7895
                                                                                                                                 j7337
                                                                                                                                 k7338
                                                                                                                                 x7893))))
                                                                                                                      g7892))))
                                                                                                          g7891))
                                                                                                      j7333
                                                                                                      k7334
                                                                                                      g7331))
                                                                                                    (x7888
                                                                                                     (letrec ((x7889
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7889
                                                                                                        j7333
                                                                                                        k7334
                                                                                                        g7332))))
                                                                                             (f7335
                                                                                              x7890
                                                                                              x7888))))
                                                                                   (x7896
                                                                                    j7333
                                                                                    k7334
                                                                                    x7887))))
                                                                         g7886))))
                                                             g7885))
                                                         'module
                                                         'importer
                                                         map-append))
                                                       (x7883 (input))
                                                       (x7882 (input)))
                                                (x7884 x7883 x7882)))
                                             (g7881
                                              (letrec ((x7899
                                                        ((lambda (j7342
                                                                  k7343
                                                                  f7344)
                                                           (letrec ((g7900
                                                                     (lambda (g7340
                                                                              g7341)
                                                                       (letrec ((g7901
                                                                                 (letrec ((x7907
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7902
                                                                                           (letrec ((x7905
                                                                                                     (letrec ((x7906
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7906
                                                                                                        j7342
                                                                                                        k7343
                                                                                                        g7340)))
                                                                                                    (x7903
                                                                                                     (letrec ((x7904
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7904
                                                                                                        j7342
                                                                                                        k7343
                                                                                                        g7341))))
                                                                                             (f7344
                                                                                              x7905
                                                                                              x7903))))
                                                                                   (x7907
                                                                                    j7342
                                                                                    k7343
                                                                                    x7902))))
                                                                         g7901))))
                                                             g7900))
                                                         'module
                                                         'importer
                                                         mappend))
                                                       (x7898 (input))
                                                       (x7897 (input)))
                                                (x7899 x7898 x7897))))
                                      g7881))))
                          g7358))))
              g7356)))
    g7355))
