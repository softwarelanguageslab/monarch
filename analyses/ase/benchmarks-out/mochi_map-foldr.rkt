(letrec ((any? (lambda (v) (letrec ((g7351 #t)) g7351)))
         (meta (lambda (v) (letrec ((g7352 v)) g7352)))
         (member
          (lambda (v lst)
            (letrec ((g7353
                      (letrec ((g7354
                                (letrec ((x-e7355 lst))
                                  (match
                                   x-e7355
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7356 (eq? v v1)))
                                       (if x-cnd7356 #t (member v vs)))))))))
                        g7354)))
              g7353)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7357 (lambda (v) (letrec ((g7358 v)) g7358)))) g7357)))
         (nonzero?
          (lambda (v)
            (letrec ((g7359 (letrec ((x7360 (= v 0))) (not x7360)))) g7359))))
  (letrec ((g7361
            (letrec ((g7362
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7363 '())
                                 (g7364
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7365
                                                        (lambda (k j lst)
                                                          (letrec ((g7366
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7367
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7367))
                                                                     lst)))
                                                            g7366))))
                                                g7365)))
                                           (real?/c
                                            (lambda (g7259 g7260 g7261)
                                              (letrec ((g7368
                                                        (letrec ((x-cnd7369
                                                                  (real?
                                                                   g7261)))
                                                          (if x-cnd7369
                                                            g7261
                                                            (blame
                                                             g7259
                                                             'real?)))))
                                                g7368)))
                                           (boolean?/c
                                            (lambda (g7262 g7263 g7264)
                                              (letrec ((g7370
                                                        (letrec ((x-cnd7371
                                                                  (boolean?
                                                                   g7264)))
                                                          (if x-cnd7371
                                                            g7264
                                                            (blame
                                                             g7262
                                                             'boolean?)))))
                                                g7370)))
                                           (number?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7372
                                                        (letrec ((x-cnd7373
                                                                  (number?
                                                                   g7267)))
                                                          (if x-cnd7373
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'number?)))))
                                                g7372)))
                                           (any/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7374
                                                        (letrec ((x-cnd7375
                                                                  ((lambda (v)
                                                                     (letrec ((g7376
                                                                               #t))
                                                                       g7376))
                                                                   g7270)))
                                                          (if x-cnd7375
                                                            g7270
                                                            (blame
                                                             g7268
                                                             '(lambda (v)
                                                                #t))))))
                                                g7374)))
                                           (any?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7377
                                                        (letrec ((x-cnd7378
                                                                  ((lambda (v)
                                                                     (letrec ((g7379
                                                                               #t))
                                                                       g7379))
                                                                   g7273)))
                                                          (if x-cnd7378
                                                            g7273
                                                            (blame
                                                             g7271
                                                             '(lambda (v)
                                                                #t))))))
                                                g7377)))
                                           (cons?/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7380
                                                        (letrec ((x-cnd7381
                                                                  (pair?
                                                                   g7276)))
                                                          (if x-cnd7381
                                                            g7276
                                                            (blame
                                                             g7274
                                                             'pair?)))))
                                                g7380)))
                                           (pair?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7382
                                                        (letrec ((x-cnd7383
                                                                  (pair?
                                                                   g7279)))
                                                          (if x-cnd7383
                                                            g7279
                                                            (blame
                                                             g7277
                                                             'pair?)))))
                                                g7382)))
                                           (integer?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7384
                                                        (letrec ((x-cnd7385
                                                                  (integer?
                                                                   g7282)))
                                                          (if x-cnd7385
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'integer?)))))
                                                g7384)))
                                           (symbol?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7386
                                                        (letrec ((x-cnd7387
                                                                  (symbol?
                                                                   g7285)))
                                                          (if x-cnd7387
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'symbol?)))))
                                                g7386)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7388
                                                        (lambda (k j v)
                                                          (letrec ((g7389
                                                                    (letrec ((x-cnd7390
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7390
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7389))))
                                                g7388)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7391
                                                        (lambda (k j v)
                                                          (letrec ((g7392
                                                                    (letrec ((x-cnd7393
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7393
                                                                        '()
                                                                        (letrec ((x7397
                                                                                  (letrec ((x7398
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7398)))
                                                                                 (x7394
                                                                                  (letrec ((x7396
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7395
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7396
                                                                                     k
                                                                                     j
                                                                                     x7395))))
                                                                          (orig-cons
                                                                           x7397
                                                                           x7394))))))
                                                            g7392))))
                                                g7391)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7399 #t)) g7399)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7400
                                                        (letrec ((x7401
                                                                  (= v 0)))
                                                          (not x7401))))
                                                g7400)))
                                           (nonzero?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7402
                                                        (letrec ((x-cnd7403
                                                                  ((lambda (v)
                                                                     (letrec ((g7404
                                                                               (letrec ((x7405
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7405))))
                                                                       g7404))
                                                                   g7288)))
                                                          (if x-cnd7403
                                                            g7288
                                                            (blame
                                                             g7286
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7402)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7406 v)) g7406)))
                                           (+
                                            ((lambda (j7291 k7292 f7293)
                                               (letrec ((g7408
                                                         (lambda (g7289 g7290)
                                                           (letrec ((g7409
                                                                     (letrec ((x7410
                                                                               (letrec ((x7412
                                                                                         (number?/c
                                                                                          j7291
                                                                                          k7292
                                                                                          g7289))
                                                                                        (x7411
                                                                                         (number?/c
                                                                                          j7291
                                                                                          k7292
                                                                                          g7290)))
                                                                                 (f7293
                                                                                  x7412
                                                                                  x7411))))
                                                                       (number?/c
                                                                        j7291
                                                                        k7292
                                                                        x7410))))
                                                             g7409))))
                                                 g7408))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7407 (orig-+ a b)))
                                                 g7407))))
                                           (-
                                            ((lambda (j7296 k7297 f7298)
                                               (letrec ((g7414
                                                         (lambda (g7294 g7295)
                                                           (letrec ((g7415
                                                                     (letrec ((x7416
                                                                               (letrec ((x7418
                                                                                         (number?/c
                                                                                          j7296
                                                                                          k7297
                                                                                          g7294))
                                                                                        (x7417
                                                                                         (number?/c
                                                                                          j7296
                                                                                          k7297
                                                                                          g7295)))
                                                                                 (f7298
                                                                                  x7418
                                                                                  x7417))))
                                                                       (number?/c
                                                                        j7296
                                                                        k7297
                                                                        x7416))))
                                                             g7415))))
                                                 g7414))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7413 (orig-- a b)))
                                                 g7413))))
                                           (*
                                            ((lambda (j7301 k7302 f7303)
                                               (letrec ((g7420
                                                         (lambda (g7299 g7300)
                                                           (letrec ((g7421
                                                                     (letrec ((x7422
                                                                               (letrec ((x7424
                                                                                         (number?/c
                                                                                          j7301
                                                                                          k7302
                                                                                          g7299))
                                                                                        (x7423
                                                                                         (number?/c
                                                                                          j7301
                                                                                          k7302
                                                                                          g7300)))
                                                                                 (f7303
                                                                                  x7424
                                                                                  x7423))))
                                                                       (number?/c
                                                                        j7301
                                                                        k7302
                                                                        x7422))))
                                                             g7421))))
                                                 g7420))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7419 (orig-* a b)))
                                                 g7419))))
                                           (/
                                            ((lambda (j7306 k7307 f7308)
                                               (letrec ((g7426
                                                         (lambda (g7304 g7305)
                                                           (letrec ((g7427
                                                                     (letrec ((x7428
                                                                               (letrec ((x7430
                                                                                         (number?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7304))
                                                                                        (x7429
                                                                                         (number?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7305)))
                                                                                 (f7308
                                                                                  x7430
                                                                                  x7429))))
                                                                       (number?/c
                                                                        j7306
                                                                        k7307
                                                                        x7428))))
                                                             g7427))))
                                                 g7426))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7425 (orig-/ a b)))
                                                 g7425))))
                                           (car
                                            ((lambda (j7310 k7311 f7312)
                                               (letrec ((g7432
                                                         (lambda (g7309)
                                                           (letrec ((g7433
                                                                     (letrec ((x7434
                                                                               (letrec ((x7435
                                                                                         (pair?/c
                                                                                          j7310
                                                                                          k7311
                                                                                          g7309)))
                                                                                 (f7312
                                                                                  x7435))))
                                                                       (any/c
                                                                        j7310
                                                                        k7311
                                                                        x7434))))
                                                             g7433))))
                                                 g7432))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7431 (orig-car p)))
                                                 g7431))))
                                           (cdr
                                            ((lambda (j7314 k7315 f7316)
                                               (letrec ((g7437
                                                         (lambda (g7313)
                                                           (letrec ((g7438
                                                                     (letrec ((x7439
                                                                               (letrec ((x7440
                                                                                         (pair?/c
                                                                                          j7314
                                                                                          k7315
                                                                                          g7313)))
                                                                                 (f7316
                                                                                  x7440))))
                                                                       (any/c
                                                                        j7314
                                                                        k7315
                                                                        x7439))))
                                                             g7438))))
                                                 g7437))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7436 (orig-cdr p)))
                                                 g7436))))
                                           (cons
                                            ((lambda (j7319 k7320 f7321)
                                               (letrec ((g7442
                                                         (lambda (g7317 g7318)
                                                           (letrec ((g7443
                                                                     (letrec ((x7444
                                                                               (letrec ((x7446
                                                                                         (any/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7317))
                                                                                        (x7445
                                                                                         (any/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7318)))
                                                                                 (f7321
                                                                                  x7446
                                                                                  x7445))))
                                                                       (pair?/c
                                                                        j7319
                                                                        k7320
                                                                        x7444))))
                                                             g7443))))
                                                 g7442))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7441
                                                         (orig-cons a b)))
                                                 g7441))))
                                           (vector-ref
                                            ((lambda (j7323 k7324 f7325)
                                               (letrec ((g7448
                                                         (lambda (g7322)
                                                           (letrec ((g7449
                                                                     (letrec ((x7450
                                                                               (letrec ((x7451
                                                                                         (vector?/c
                                                                                          j7323
                                                                                          k7324
                                                                                          g7322)))
                                                                                 (f7325
                                                                                  x7451))))
                                                                       (integer?/c
                                                                        j7323
                                                                        k7324
                                                                        x7450))))
                                                             g7449))))
                                                 g7448))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7447
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7447))))
                                           (vector-set!
                                            ((lambda (j7328 k7329 f7330)
                                               (letrec ((g7453
                                                         (lambda (g7326 g7327)
                                                           (letrec ((g7454
                                                                     (letrec ((x7455
                                                                               (letrec ((x7457
                                                                                         (vector?/c
                                                                                          j7328
                                                                                          k7329
                                                                                          g7326))
                                                                                        (x7456
                                                                                         (integer?/c
                                                                                          j7328
                                                                                          k7329
                                                                                          g7327)))
                                                                                 (f7330
                                                                                  x7457
                                                                                  x7456))))
                                                                       (any/c
                                                                        j7328
                                                                        k7329
                                                                        x7455))))
                                                             g7454))))
                                                 g7453))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7452
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7452))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7458
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7458)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7459
                                                        (letrec ((x7460
                                                                  (letrec ((x7461
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7461))))
                                                          (cdr x7460))))
                                                g7459)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7462
                                                        (letrec ((x7465
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7465)))
                                                       (g7463
                                                        (letrec ((x7466
                                                                  (list? l)))
                                                          (assert x7466)))
                                                       (g7464
                                                        (letrec ((x-cnd7467
                                                                  (null? l)))
                                                          (if x-cnd7467
                                                            '()
                                                            (letrec ((x7470
                                                                      (letrec ((x7471
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7471)))
                                                                     (x7468
                                                                      (letrec ((x7469
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7469))))
                                                              (cons
                                                               x7470
                                                               x7468))))))
                                                g7464)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7472
                                                        (letrec ((x7473
                                                                  (car x)))
                                                          (cdr x7473))))
                                                g7472)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7474
                                                        (letrec ((x7475
                                                                  (letrec ((x7476
                                                                            (letrec ((x7477
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7477))))
                                                                    (cdr
                                                                     x7476))))
                                                          (car x7475))))
                                                g7474)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7478
                                                        (letrec ((x7479
                                                                  (letrec ((x7480
                                                                            (letrec ((x7481
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7481))))
                                                                    (car
                                                                     x7480))))
                                                          (cdr x7479))))
                                                g7478)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7482
                                                        (letrec ((x7485
                                                                  (string?
                                                                   filename)))
                                                          (assert x7485)))
                                                       (g7483
                                                        (letrec ((x7486
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7486)))
                                                       (g7484
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7487
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7488 res))
                                                            g7488))))
                                                g7484)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7489
                                                        (letrec ((x7490
                                                                  (letrec ((x7491
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7491))))
                                                          (car x7490))))
                                                g7489)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7492
                                                        (letrec ((x7493
                                                                  (letrec ((x7494
                                                                            (letrec ((x7495
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7495))))
                                                                    (car
                                                                     x7494))))
                                                          (cdr x7493))))
                                                g7492)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7496
                                                        (letrec ((x7498
                                                                  (list? l)))
                                                          (assert x7498)))
                                                       (g7497
                                                        (letrec ((x-cnd7499
                                                                  (null? l)))
                                                          (if x-cnd7499
                                                            #f
                                                            (letrec ((x-cnd7500
                                                                      (letrec ((x7501
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7501
                                                                         k))))
                                                              (if x-cnd7500
                                                                (car l)
                                                                (letrec ((x7502
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7502))))))))
                                                g7497)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7503
                                                        (letrec ((x7504
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7504))))
                                                g7503)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7505
                                                        (letrec ((x7507
                                                                  (list? l)))
                                                          (assert x7507)))
                                                       (g7506
                                                        (letrec ((x-cnd7508
                                                                  (null? l)))
                                                          (if x-cnd7508
                                                            ""
                                                            (letrec ((x7511
                                                                      (letrec ((x7512
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7512)))
                                                                     (x7509
                                                                      (letrec ((x7510
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7510))))
                                                              (string-append
                                                               x7511
                                                               x7509))))))
                                                g7506)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7513
                                                        (letrec ((x7516
                                                                  (char? c1)))
                                                          (assert x7516)))
                                                       (g7514
                                                        (letrec ((x7517
                                                                  (char? c2)))
                                                          (assert x7517)))
                                                       (g7515
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7518
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7518))))
                                                g7515)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7519
                                                        (letrec ((x7520
                                                                  (letrec ((x7521
                                                                            (letrec ((x7522
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7522))))
                                                                    (cdr
                                                                     x7521))))
                                                          (cdr x7520))))
                                                g7519)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7523
                                                        (letrec ((x7526
                                                                  (list? l)))
                                                          (assert x7526)))
                                                       (g7524
                                                        (letrec ((x7527
                                                                  (number?)))
                                                          (assert x7527)))
                                                       (g7525
                                                        (letrec ((x-cnd7528
                                                                  (zero? k)))
                                                          (if x-cnd7528
                                                            x
                                                            (letrec ((x7530
                                                                      (cdr x))
                                                                     (x7529
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7530
                                                               x7529))))))
                                                g7525)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7531 '())) g7531)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7532
                                                        (letrec ((x-cnd7533
                                                                  (letrec ((x7534
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7534))))
                                                          (if x-cnd7533
                                                            (letrec ((x7535
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7535))
                                                            #f))))
                                                g7532)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7536
                                                        (letrec ((x7538
                                                                  (number? x)))
                                                          (assert x7538)))
                                                       (g7537
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7539
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7540
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7540)))))
                                                            g7539))))
                                                g7537)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7541
                                                        (letrec ((val7244
                                                                  (letrec ((x7542
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7542
                                                                     9))))
                                                          (letrec ((g7543
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7544
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7544
                                                                                   10))))
                                                                        (letrec ((g7545
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7546
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7546
                                                                                       32)))))
                                                                          g7545)))))
                                                            g7543))))
                                                g7541)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7547
                                                        (letrec ((x7548
                                                                  (letrec ((x7549
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7549))))
                                                          (cdr x7548))))
                                                g7547)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7550
                                                        (letrec ((x7552
                                                                  (number? x)))
                                                          (assert x7552)))
                                                       (g7551 (> x 0)))
                                                g7551)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7553 #f)) g7553)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7554
                                                        (letrec ((x7555
                                                                  (cdr x)))
                                                          (cdr x7555))))
                                                g7554)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7556
                                                        (letrec ((x7558
                                                                  (number? x)))
                                                          (assert x7558)))
                                                       (g7557
                                                        (letrec ((x-cnd7559
                                                                  (< x 0)))
                                                          (if x-cnd7559
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7557)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7560
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7561
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7562
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7562
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7563
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7564
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7564
                                                                                                  (letrec ((x-cnd7565
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7565
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7566
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7567
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7567
                                                                                                                (letrec ((x-cnd7568
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7568
                                                                                                                    (letrec ((x-cnd7569
                                                                                                                              (letrec ((x7571
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7570
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7571
                                                                                                                                 x7570))))
                                                                                                                      (if x-cnd7569
                                                                                                                        (letrec ((x7573
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7572
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7573
                                                                                                                           x7572))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7574
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7575
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7575
                                                                                                                    (letrec ((x-cnd7576
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7576
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7577
                                                                                                                                    (letrec ((x-cnd7578
                                                                                                                                              (letrec ((x7579
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7579
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7578
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7580
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7581
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7582
                                                                                                                                                                                      (letrec ((x7584
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7583
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7584
                                                                                                                                                                                         x7583))))
                                                                                                                                                                              (if x-cnd7582
                                                                                                                                                                                (letrec ((x7585
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7585))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7581))))
                                                                                                                                                      g7580))))
                                                                                                                                          (letrec ((g7586
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7586))
                                                                                                                                        #f))))
                                                                                                                            g7577))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7574)))))
                                                                                        g7566)))))
                                                                          g7563)))))
                                                            g7561))))
                                                g7560)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7587
                                                        (letrec ((x7588
                                                                  (letrec ((x7589
                                                                            (letrec ((x7590
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7590))))
                                                                    (car
                                                                     x7589))))
                                                          (cdr x7588))))
                                                g7587)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7591
                                                        (letrec ((x7592
                                                                  (letrec ((x7593
                                                                            (letrec ((x7594
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7594))))
                                                                    (car
                                                                     x7593))))
                                                          (car x7592))))
                                                g7591)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7595 (eq? x y)))
                                                g7595)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7596
                                                        (letrec ((x7598
                                                                  (number? x)))
                                                          (assert x7598)))
                                                       (g7597
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7599
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7600
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7600)))))
                                                            g7599))))
                                                g7597)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7601
                                                        (letrec ((x7604
                                                                  (string?
                                                                   filename)))
                                                          (assert x7604)))
                                                       (g7602
                                                        (letrec ((x7605
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7605)))
                                                       (g7603
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7606
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7607 res))
                                                            g7607))))
                                                g7603)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7608 (cons x '())))
                                                g7608)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7609
                                                        (letrec ((x7612
                                                                  (char? c1)))
                                                          (assert x7612)))
                                                       (g7610
                                                        (letrec ((x7613
                                                                  (char? c2)))
                                                          (assert x7613)))
                                                       (g7611
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7614
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7614))))
                                                g7611)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7615
                                                        (letrec ((x7616
                                                                  (letrec ((x7617
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7617))))
                                                          (cdr x7616))))
                                                g7615)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7618
                                                        (letrec ((x7619
                                                                  (letrec ((x7620
                                                                            (letrec ((x7621
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7621))))
                                                                    (car
                                                                     x7620))))
                                                          (cdr x7619))))
                                                g7618)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7622
                                                        (letrec ((x7623
                                                                  (letrec ((x7624
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7624))))
                                                          (car x7623))))
                                                g7622)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7625
                                                        (letrec ((x7626
                                                                  (letrec ((x7627
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7627))))
                                                          (car x7626))))
                                                g7625)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7628
                                                        (letrec ((x7631
                                                                  (char? c1)))
                                                          (assert x7631)))
                                                       (g7629
                                                        (letrec ((x7632
                                                                  (char? c2)))
                                                          (assert x7632)))
                                                       (g7630
                                                        (letrec ((x7633
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7633))))
                                                g7630)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7634
                                                        (letrec ((x7635
                                                                  (letrec ((x7636
                                                                            (letrec ((x7637
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7637))))
                                                                    (car
                                                                     x7636))))
                                                          (car x7635))))
                                                g7634)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7638
                                                        (letrec ((x7640
                                                                  (number? x)))
                                                          (assert x7640)))
                                                       (g7639 (< x 0)))
                                                g7639)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7641 (memq e l)))
                                                g7641)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7642
                                                        (letrec ((x7643
                                                                  (letrec ((x7644
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7644))))
                                                          (car x7643))))
                                                g7642)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7645 '())) g7645)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7646
                                                        (letrec ((x7648
                                                                  (list? l)))
                                                          (assert x7648)))
                                                       (g7647
                                                        (letrec ((x-cnd7649
                                                                  (null? l)))
                                                          (if x-cnd7649
                                                            '()
                                                            (letrec ((x7652
                                                                      (letrec ((x7653
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7653)))
                                                                     (x7650
                                                                      (letrec ((x7651
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7651))))
                                                              (append
                                                               x7652
                                                               x7650))))))
                                                g7647)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7654
                                                        (letrec ((x7655
                                                                  (letrec ((x7656
                                                                            (letrec ((x7657
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7657))))
                                                                    (car
                                                                     x7656))))
                                                          (car x7655))))
                                                g7654)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7658
                                                        (letrec ((x7659
                                                                  (letrec ((x7660
                                                                            (letrec ((x7661
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7661))))
                                                                    (cdr
                                                                     x7660))))
                                                          (cdr x7659))))
                                                g7658)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7662
                                                        (letrec ((x7664
                                                                  (number? x)))
                                                          (assert x7664)))
                                                       (g7663
                                                        (letrec ((x7665
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7665))))
                                                g7663)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7666
                                                        (letrec ((x7667
                                                                  (letrec ((x7668
                                                                            (letrec ((x7669
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7669))))
                                                                    (car
                                                                     x7668))))
                                                          (car x7667))))
                                                g7666)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7670
                                                        (letrec ((x7673
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7673)))
                                                       (g7671
                                                        (letrec ((x7674
                                                                  (list?
                                                                   args)))
                                                          (assert x7674)))
                                                       (g7672
                                                        (letrec ((x-cnd7675
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7675
                                                            (letrec ((g7676
                                                                      (proc)))
                                                              g7676)
                                                            (letrec ((x-cnd7677
                                                                      (letrec ((x7678
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7678))))
                                                              (if x-cnd7677
                                                                (letrec ((g7679
                                                                          (letrec ((x7680
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7680))))
                                                                  g7679)
                                                                (letrec ((x-cnd7681
                                                                          (letrec ((x7682
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7682))))
                                                                  (if x-cnd7681
                                                                    (letrec ((g7683
                                                                              (letrec ((x7685
                                                                                        (car
                                                                                         args))
                                                                                       (x7684
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7685
                                                                                 x7684))))
                                                                      g7683)
                                                                    (letrec ((x-cnd7686
                                                                              (letrec ((x7687
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7687))))
                                                                      (if x-cnd7686
                                                                        (letrec ((g7688
                                                                                  (letrec ((x7691
                                                                                            (car
                                                                                             args))
                                                                                           (x7690
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7689
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7691
                                                                                     x7690
                                                                                     x7689))))
                                                                          g7688)
                                                                        (letrec ((x-cnd7692
                                                                                  (letrec ((x7693
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7693))))
                                                                          (if x-cnd7692
                                                                            (letrec ((g7694
                                                                                      (letrec ((x7698
                                                                                                (car
                                                                                                 args))
                                                                                               (x7697
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7696
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7695
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7698
                                                                                         x7697
                                                                                         x7696
                                                                                         x7695))))
                                                                              g7694)
                                                                            (letrec ((x-cnd7699
                                                                                      (letrec ((x7700
                                                                                                (letrec ((x7701
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7701))))
                                                                                        (null?
                                                                                         x7700))))
                                                                              (if x-cnd7699
                                                                                (letrec ((g7702
                                                                                          (letrec ((x7708
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7707
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7706
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7705
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7703
                                                                                                    (letrec ((x7704
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7704))))
                                                                                            (proc
                                                                                             x7708
                                                                                             x7707
                                                                                             x7706
                                                                                             x7705
                                                                                             x7703))))
                                                                                  g7702)
                                                                                (letrec ((x-cnd7709
                                                                                          (letrec ((x7710
                                                                                                    (letrec ((x7711
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7711))))
                                                                                            (null?
                                                                                             x7710))))
                                                                                  (if x-cnd7709
                                                                                    (letrec ((g7712
                                                                                              (letrec ((x7720
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7719
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7718
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7717
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7715
                                                                                                        (letrec ((x7716
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7716)))
                                                                                                       (x7713
                                                                                                        (letrec ((x7714
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7714))))
                                                                                                (proc
                                                                                                 x7720
                                                                                                 x7719
                                                                                                 x7718
                                                                                                 x7717
                                                                                                 x7715
                                                                                                 x7713))))
                                                                                      g7712)
                                                                                    (letrec ((x-cnd7721
                                                                                              (letrec ((x7722
                                                                                                        (letrec ((x7723
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7723))))
                                                                                                (null?
                                                                                                 x7722))))
                                                                                      (if x-cnd7721
                                                                                        (letrec ((g7724
                                                                                                  (letrec ((x7734
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7733
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7732
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7731
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7729
                                                                                                            (letrec ((x7730
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7730)))
                                                                                                           (x7727
                                                                                                            (letrec ((x7728
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7728)))
                                                                                                           (x7725
                                                                                                            (letrec ((x7726
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7726))))
                                                                                                    (proc
                                                                                                     x7734
                                                                                                     x7733
                                                                                                     x7732
                                                                                                     x7731
                                                                                                     x7729
                                                                                                     x7727
                                                                                                     x7725))))
                                                                                          g7724)
                                                                                        (letrec ((g7735
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7735)))))))))))))))))))
                                                g7672)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7736
                                                        (letrec ((x7738
                                                                  (list? l)))
                                                          (assert x7738)))
                                                       (g7737
                                                        (letrec ((x-cnd7739
                                                                  (null? l)))
                                                          (if x-cnd7739
                                                            #f
                                                            (letrec ((x-cnd7740
                                                                      (letrec ((x7741
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7741
                                                                         e))))
                                                              (if x-cnd7740
                                                                l
                                                                (letrec ((x7742
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7742))))))))
                                                g7737)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7743
                                                        (letrec ((x7744
                                                                  (letrec ((x7745
                                                                            (letrec ((x7746
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7746))))
                                                                    (cdr
                                                                     x7745))))
                                                          (cdr x7744))))
                                                g7743)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7747
                                                        (letrec ((x7748
                                                                  (letrec ((x7749
                                                                            (letrec ((x7750
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7750))))
                                                                    (cdr
                                                                     x7749))))
                                                          (car x7748))))
                                                g7747)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7751 (random 42)))
                                                g7751)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7752
                                                        (letrec ((x7754
                                                                  (number? x)))
                                                          (assert x7754)))
                                                       (g7753 (= x 0)))
                                                g7753)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7755
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7756
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7756))))
                                                g7755)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7757
                                                        (letrec ((x7758
                                                                  (cdr x)))
                                                          (car x7758))))
                                                g7757)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7759
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd7760
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7760
                                                                      (letrec ((x7761
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7761))
                                                                      #f))))
                                                          (letrec ((g7762
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g7762))))
                                                g7759)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7763
                                                        (letrec ((x7764
                                                                  (letrec ((x7765
                                                                            (letrec ((x7766
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7766))))
                                                                    (cdr
                                                                     x7765))))
                                                          (cdr x7764))))
                                                g7763)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7767
                                                        (letrec ((x-cnd7768
                                                                  (letrec ((x7769
                                                                            #\0))
                                                                    (char<=?
                                                                     x7769
                                                                     c))))
                                                          (if x-cnd7768
                                                            (letrec ((x7770
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7770))
                                                            #f))))
                                                g7767)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7771
                                                        (letrec ((x7773
                                                                  (list? l)))
                                                          (assert x7773)))
                                                       (g7772
                                                        (letrec ((x-cnd7774
                                                                  (null? l)))
                                                          (if x-cnd7774
                                                            #f
                                                            (letrec ((x-cnd7775
                                                                      (letrec ((x7776
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7776
                                                                         k))))
                                                              (if x-cnd7775
                                                                (car l)
                                                                (letrec ((x7777
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7777))))))))
                                                g7772)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7778 (if x #f #t)))
                                                g7778)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7779 (append l1 l2)))
                                                g7779)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7780
                                                        (letrec ((x7782
                                                                  (list? l)))
                                                          (assert x7782)))
                                                       (g7781
                                                        (letrec ((x-cnd7783
                                                                  (null? l)))
                                                          (if x-cnd7783
                                                            #f
                                                            (letrec ((x-cnd7784
                                                                      (letrec ((x7785
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7785
                                                                         e))))
                                                              (if x-cnd7784
                                                                l
                                                                (letrec ((x7786
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7786))))))))
                                                g7781)))
                                           (cadaar
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
                                                          (car x7788))))
                                                g7787)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7791
                                                        (letrec ((x7793
                                                                  (list? l)))
                                                          (assert x7793)))
                                                       (g7792
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7794
                                                                              (letrec ((x-cnd7795
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7795
                                                                                  0
                                                                                  (letrec ((x7796
                                                                                            (letrec ((x7797
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7797))))
                                                                                    (+
                                                                                     1
                                                                                     x7796))))))
                                                                      g7794))))
                                                          (letrec ((g7798
                                                                    (rec l)))
                                                            g7798))))
                                                g7792)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7799
                                                        (letrec ((x7802
                                                                  (char? c1)))
                                                          (assert x7802)))
                                                       (g7800
                                                        (letrec ((x7803
                                                                  (char? c2)))
                                                          (assert x7803)))
                                                       (g7801
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7804
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7804))))
                                                g7801)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7805
                                                        (letrec ((x7806
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7806))))
                                                g7805)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7807
                                                        (letrec ((x7808
                                                                  (letrec ((x7809
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7809))))
                                                          (cdr x7808))))
                                                g7807)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7810
                                                        (letrec ((x7812
                                                                  (list? l)))
                                                          (assert x7812)))
                                                       (g7811
                                                        (letrec ((x-cnd7813
                                                                  (null? l)))
                                                          (if x-cnd7813
                                                            #f
                                                            (letrec ((x-cnd7814
                                                                      (letrec ((x7815
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7815
                                                                         k))))
                                                              (if x-cnd7814
                                                                (car l)
                                                                (letrec ((x7816
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7816))))))))
                                                g7811)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7817
                                                        (letrec ((x7818
                                                                  (car x)))
                                                          (car x7818))))
                                                g7817)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7819
                                                        (letrec ((x7822
                                                                  (char? c1)))
                                                          (assert x7822)))
                                                       (g7820
                                                        (letrec ((x7823
                                                                  (char? c2)))
                                                          (assert x7823)))
                                                       (g7821
                                                        (letrec ((x7824
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7824))))
                                                g7821)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7825
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7826
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7826))))
                                                g7825)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7827
                                                        (letrec ((x7830
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7830)))
                                                       (g7828
                                                        (letrec ((x7831
                                                                  (list? l)))
                                                          (assert x7831)))
                                                       (g7829
                                                        (letrec ((x-cnd7832
                                                                  (null? l)))
                                                          (if x-cnd7832
                                                            #t
                                                            (letrec ((x-cnd7833
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7833
                                                                (letrec ((g7834
                                                                          (letrec ((x7836
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7836)))
                                                                         (g7835
                                                                          (letrec ((x7837
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7837))))
                                                                  g7835)
                                                                '()))))))
                                                g7829)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7838
                                                        (letrec ((x7840
                                                                  (number? x)))
                                                          (assert x7840)))
                                                       (g7839
                                                        (letrec ((x-cnd7841
                                                                  (< x 0)))
                                                          (if x-cnd7841
                                                            (- 0 x)
                                                            x))))
                                                g7839)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7842
                                                        (letrec ((x7845
                                                                  (char? c1)))
                                                          (assert x7845)))
                                                       (g7843
                                                        (letrec ((x7846
                                                                  (char? c2)))
                                                          (assert x7846)))
                                                       (g7844
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7847
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7847))))
                                                g7844)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7848
                                                        (letrec ((x7849
                                                                  (letrec ((x7850
                                                                            (letrec ((x7851
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7851))))
                                                                    (cdr
                                                                     x7850))))
                                                          (car x7849))))
                                                g7848)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7852 #f)) g7852)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7853
                                                        (letrec ((x7855
                                                                  (letrec ((x7856
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7856)))
                                                                 (x7854
                                                                  (gcd m n)))
                                                          (/ x7855 x7854))))
                                                g7853)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7857
                                                        (letrec ((x7859
                                                                  (number? x)))
                                                          (assert x7859)))
                                                       (g7858
                                                        (letrec ((x7860
                                                                  (<= x y)))
                                                          (not x7860))))
                                                g7858)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7861
                                                        (letrec ((x7865
                                                                  (list? l)))
                                                          (assert x7865)))
                                                       (g7862
                                                        (letrec ((x7866
                                                                  (number?
                                                                   index)))
                                                          (assert x7866)))
                                                       (g7863
                                                        (letrec ((x7867
                                                                  (letrec ((x7868
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7868))))
                                                          (assert x7867)))
                                                       (g7864
                                                        (letrec ((x-cnd7869
                                                                  (= index 0)))
                                                          (if x-cnd7869
                                                            (car l)
                                                            (letrec ((x7871
                                                                      (cdr l))
                                                                     (x7870
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7871
                                                               x7870))))))
                                                g7864)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7872
                                                        (letrec ((x-cnd7873
                                                                  (= b 0)))
                                                          (if x-cnd7873
                                                            a
                                                            (letrec ((x7874
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7874))))))
                                                g7872)))
                                           (foldr
                                            (lambda (f z xs)
                                              (letrec ((g7875
                                                        (letrec ((x-cnd7876
                                                                  (empty? xs)))
                                                          (if x-cnd7876
                                                            z
                                                            (letrec ((x7879
                                                                      (car xs))
                                                                     (x7877
                                                                      (letrec ((x7878
                                                                                (cdr
                                                                                 xs)))
                                                                        (foldr
                                                                         f
                                                                         z
                                                                         x7878))))
                                                              (f
                                                               x7879
                                                               x7877))))))
                                                g7875)))
                                           (map
                                            (lambda (f xs)
                                              (letrec ((g7880
                                                        (letrec ((x7881
                                                                  (letrec ((x7884
                                                                            (x
                                                                             ys))
                                                                           (x7882
                                                                            (letrec ((x7883
                                                                                      (f
                                                                                       x)))
                                                                              (cons
                                                                               x7883
                                                                               ys))))
                                                                    (λ x7884
                                                                      x7882))))
                                                          (foldr
                                                           x7881
                                                           empty
                                                           xs))))
                                                g7880))))
                                    (letrec ((g7885
                                              (letrec ((x7890
                                                        ((lambda (j7334
                                                                  k7335
                                                                  f7336)
                                                           (letrec ((g7891
                                                                     (lambda (g7331
                                                                              g7332
                                                                              g7333)
                                                                       (letrec ((g7892
                                                                                 (letrec ((x7893
                                                                                           (letrec ((x7897
                                                                                                     ((lambda (j7339
                                                                                                               k7340
                                                                                                               f7341)
                                                                                                        (letrec ((g7898
                                                                                                                  (lambda (g7337
                                                                                                                           g7338)
                                                                                                                    (letrec ((g7899
                                                                                                                              (letrec ((x7900
                                                                                                                                        (letrec ((x7902
                                                                                                                                                  (any/c
                                                                                                                                                   j7339
                                                                                                                                                   k7340
                                                                                                                                                   g7337))
                                                                                                                                                 (x7901
                                                                                                                                                  (any/c
                                                                                                                                                   j7339
                                                                                                                                                   k7340
                                                                                                                                                   g7338)))
                                                                                                                                          (f7341
                                                                                                                                           x7902
                                                                                                                                           x7901))))
                                                                                                                                (any/c
                                                                                                                                 j7339
                                                                                                                                 k7340
                                                                                                                                 x7900))))
                                                                                                                      g7899))))
                                                                                                          g7898))
                                                                                                      j7334
                                                                                                      k7335
                                                                                                      g7331))
                                                                                                    (x7896
                                                                                                     (any/c
                                                                                                      j7334
                                                                                                      k7335
                                                                                                      g7332))
                                                                                                    (x7894
                                                                                                     (letrec ((x7895
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7895
                                                                                                        j7334
                                                                                                        k7335
                                                                                                        g7333))))
                                                                                             (f7336
                                                                                              x7897
                                                                                              x7896
                                                                                              x7894))))
                                                                                   (any/c
                                                                                    j7334
                                                                                    k7335
                                                                                    x7893))))
                                                                         g7892))))
                                                             g7891))
                                                         'module
                                                         'importer
                                                         foldr))
                                                       (x7889 (input))
                                                       (x7888 (input))
                                                       (x7887 (input)))
                                                (x7890 x7889 x7888 x7887)))
                                             (g7886
                                              (letrec ((x7905
                                                        ((lambda (j7344
                                                                  k7345
                                                                  f7346)
                                                           (letrec ((g7906
                                                                     (lambda (g7342
                                                                              g7343)
                                                                       (letrec ((g7907
                                                                                 (letrec ((x7916
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7908
                                                                                           (letrec ((x7911
                                                                                                     ((lambda (j7348
                                                                                                               k7349
                                                                                                               f7350)
                                                                                                        (letrec ((g7912
                                                                                                                  (lambda (g7347)
                                                                                                                    (letrec ((g7913
                                                                                                                              (letrec ((x7914
                                                                                                                                        (letrec ((x7915
                                                                                                                                                  (any/c
                                                                                                                                                   j7348
                                                                                                                                                   k7349
                                                                                                                                                   g7347)))
                                                                                                                                          (f7350
                                                                                                                                           x7915))))
                                                                                                                                (any/c
                                                                                                                                 j7348
                                                                                                                                 k7349
                                                                                                                                 x7914))))
                                                                                                                      g7913))))
                                                                                                          g7912))
                                                                                                      j7344
                                                                                                      k7345
                                                                                                      g7342))
                                                                                                    (x7909
                                                                                                     (letrec ((x7910
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7910
                                                                                                        j7344
                                                                                                        k7345
                                                                                                        g7343))))
                                                                                             (f7346
                                                                                              x7911
                                                                                              x7909))))
                                                                                   (x7916
                                                                                    j7344
                                                                                    k7345
                                                                                    x7908))))
                                                                         g7907))))
                                                             g7906))
                                                         'module
                                                         'importer
                                                         map))
                                                       (x7904 (input))
                                                       (x7903 (input)))
                                                (x7905 x7904 x7903))))
                                      g7886))))
                          g7364))))
              g7362)))
    g7361))
