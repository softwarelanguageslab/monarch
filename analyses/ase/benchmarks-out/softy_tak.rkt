(letrec ((any? (lambda (v) (letrec ((g7337 #t)) g7337)))
         (meta (lambda (v) (letrec ((g7338 v)) g7338)))
         (member
          (lambda (v lst)
            (letrec ((g7339
                      (letrec ((g7340
                                (letrec ((x-e7341 lst))
                                  (match
                                   x-e7341
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7342 (eq? v v1)))
                                       (if x-cnd7342 #t (member v vs)))))))))
                        g7340)))
              g7339)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7343 (lambda (v) (letrec ((g7344 v)) g7344)))) g7343)))
         (nonzero?
          (lambda (v)
            (letrec ((g7345 (letrec ((x7346 (= v 0))) (not x7346)))) g7345))))
  (letrec ((g7347
            (letrec ((g7348
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7349 '())
                                 (g7350
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7351
                                                        (lambda (k j lst)
                                                          (letrec ((g7352
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7353
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7353))
                                                                     lst)))
                                                            g7352))))
                                                g7351)))
                                           (real?/c
                                            (lambda (g7259 g7260 g7261)
                                              (letrec ((g7354
                                                        (letrec ((x-cnd7355
                                                                  (real?
                                                                   g7261)))
                                                          (if x-cnd7355
                                                            g7261
                                                            (blame
                                                             g7259
                                                             'real?)))))
                                                g7354)))
                                           (boolean?/c
                                            (lambda (g7262 g7263 g7264)
                                              (letrec ((g7356
                                                        (letrec ((x-cnd7357
                                                                  (boolean?
                                                                   g7264)))
                                                          (if x-cnd7357
                                                            g7264
                                                            (blame
                                                             g7262
                                                             'boolean?)))))
                                                g7356)))
                                           (number?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7358
                                                        (letrec ((x-cnd7359
                                                                  (number?
                                                                   g7267)))
                                                          (if x-cnd7359
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'number?)))))
                                                g7358)))
                                           (any/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7360
                                                        (letrec ((x-cnd7361
                                                                  ((lambda (v)
                                                                     (letrec ((g7362
                                                                               #t))
                                                                       g7362))
                                                                   g7270)))
                                                          (if x-cnd7361
                                                            g7270
                                                            (blame
                                                             g7268
                                                             '(lambda (v)
                                                                #t))))))
                                                g7360)))
                                           (any?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7363
                                                        (letrec ((x-cnd7364
                                                                  ((lambda (v)
                                                                     (letrec ((g7365
                                                                               #t))
                                                                       g7365))
                                                                   g7273)))
                                                          (if x-cnd7364
                                                            g7273
                                                            (blame
                                                             g7271
                                                             '(lambda (v)
                                                                #t))))))
                                                g7363)))
                                           (cons?/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7366
                                                        (letrec ((x-cnd7367
                                                                  (pair?
                                                                   g7276)))
                                                          (if x-cnd7367
                                                            g7276
                                                            (blame
                                                             g7274
                                                             'pair?)))))
                                                g7366)))
                                           (pair?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7368
                                                        (letrec ((x-cnd7369
                                                                  (pair?
                                                                   g7279)))
                                                          (if x-cnd7369
                                                            g7279
                                                            (blame
                                                             g7277
                                                             'pair?)))))
                                                g7368)))
                                           (integer?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7370
                                                        (letrec ((x-cnd7371
                                                                  (integer?
                                                                   g7282)))
                                                          (if x-cnd7371
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'integer?)))))
                                                g7370)))
                                           (symbol?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7372
                                                        (letrec ((x-cnd7373
                                                                  (symbol?
                                                                   g7285)))
                                                          (if x-cnd7373
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'symbol?)))))
                                                g7372)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7374
                                                        (lambda (k j v)
                                                          (letrec ((g7375
                                                                    (letrec ((x-cnd7376
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7376
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7375))))
                                                g7374)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7377
                                                        (lambda (k j v)
                                                          (letrec ((g7378
                                                                    (letrec ((x-cnd7379
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7379
                                                                        '()
                                                                        (letrec ((x7383
                                                                                  (letrec ((x7384
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7384)))
                                                                                 (x7380
                                                                                  (letrec ((x7382
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7381
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7382
                                                                                     k
                                                                                     j
                                                                                     x7381))))
                                                                          (orig-cons
                                                                           x7383
                                                                           x7380))))))
                                                            g7378))))
                                                g7377)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7385 #t)) g7385)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7386
                                                        (letrec ((x7387
                                                                  (= v 0)))
                                                          (not x7387))))
                                                g7386)))
                                           (nonzero?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7388
                                                        (letrec ((x-cnd7389
                                                                  ((lambda (v)
                                                                     (letrec ((g7390
                                                                               (letrec ((x7391
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7391))))
                                                                       g7390))
                                                                   g7288)))
                                                          (if x-cnd7389
                                                            g7288
                                                            (blame
                                                             g7286
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7388)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7392 v)) g7392)))
                                           (+
                                            ((lambda (j7291 k7292 f7293)
                                               (letrec ((g7394
                                                         (lambda (g7289 g7290)
                                                           (letrec ((g7395
                                                                     (letrec ((x7396
                                                                               (letrec ((x7398
                                                                                         (number?/c
                                                                                          j7291
                                                                                          k7292
                                                                                          g7289))
                                                                                        (x7397
                                                                                         (number?/c
                                                                                          j7291
                                                                                          k7292
                                                                                          g7290)))
                                                                                 (f7293
                                                                                  x7398
                                                                                  x7397))))
                                                                       (number?/c
                                                                        j7291
                                                                        k7292
                                                                        x7396))))
                                                             g7395))))
                                                 g7394))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7393 (orig-+ a b)))
                                                 g7393))))
                                           (-
                                            ((lambda (j7296 k7297 f7298)
                                               (letrec ((g7400
                                                         (lambda (g7294 g7295)
                                                           (letrec ((g7401
                                                                     (letrec ((x7402
                                                                               (letrec ((x7404
                                                                                         (number?/c
                                                                                          j7296
                                                                                          k7297
                                                                                          g7294))
                                                                                        (x7403
                                                                                         (number?/c
                                                                                          j7296
                                                                                          k7297
                                                                                          g7295)))
                                                                                 (f7298
                                                                                  x7404
                                                                                  x7403))))
                                                                       (number?/c
                                                                        j7296
                                                                        k7297
                                                                        x7402))))
                                                             g7401))))
                                                 g7400))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7399 (orig-- a b)))
                                                 g7399))))
                                           (*
                                            ((lambda (j7301 k7302 f7303)
                                               (letrec ((g7406
                                                         (lambda (g7299 g7300)
                                                           (letrec ((g7407
                                                                     (letrec ((x7408
                                                                               (letrec ((x7410
                                                                                         (number?/c
                                                                                          j7301
                                                                                          k7302
                                                                                          g7299))
                                                                                        (x7409
                                                                                         (number?/c
                                                                                          j7301
                                                                                          k7302
                                                                                          g7300)))
                                                                                 (f7303
                                                                                  x7410
                                                                                  x7409))))
                                                                       (number?/c
                                                                        j7301
                                                                        k7302
                                                                        x7408))))
                                                             g7407))))
                                                 g7406))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7405 (orig-* a b)))
                                                 g7405))))
                                           (/
                                            ((lambda (j7306 k7307 f7308)
                                               (letrec ((g7412
                                                         (lambda (g7304 g7305)
                                                           (letrec ((g7413
                                                                     (letrec ((x7414
                                                                               (letrec ((x7416
                                                                                         (number?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7304))
                                                                                        (x7415
                                                                                         (number?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7305)))
                                                                                 (f7308
                                                                                  x7416
                                                                                  x7415))))
                                                                       (number?/c
                                                                        j7306
                                                                        k7307
                                                                        x7414))))
                                                             g7413))))
                                                 g7412))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7411 (orig-/ a b)))
                                                 g7411))))
                                           (car
                                            ((lambda (j7310 k7311 f7312)
                                               (letrec ((g7418
                                                         (lambda (g7309)
                                                           (letrec ((g7419
                                                                     (letrec ((x7420
                                                                               (letrec ((x7421
                                                                                         (pair?/c
                                                                                          j7310
                                                                                          k7311
                                                                                          g7309)))
                                                                                 (f7312
                                                                                  x7421))))
                                                                       (any/c
                                                                        j7310
                                                                        k7311
                                                                        x7420))))
                                                             g7419))))
                                                 g7418))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7417 (orig-car p)))
                                                 g7417))))
                                           (cdr
                                            ((lambda (j7314 k7315 f7316)
                                               (letrec ((g7423
                                                         (lambda (g7313)
                                                           (letrec ((g7424
                                                                     (letrec ((x7425
                                                                               (letrec ((x7426
                                                                                         (pair?/c
                                                                                          j7314
                                                                                          k7315
                                                                                          g7313)))
                                                                                 (f7316
                                                                                  x7426))))
                                                                       (any/c
                                                                        j7314
                                                                        k7315
                                                                        x7425))))
                                                             g7424))))
                                                 g7423))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7422 (orig-cdr p)))
                                                 g7422))))
                                           (cons
                                            ((lambda (j7319 k7320 f7321)
                                               (letrec ((g7428
                                                         (lambda (g7317 g7318)
                                                           (letrec ((g7429
                                                                     (letrec ((x7430
                                                                               (letrec ((x7432
                                                                                         (any/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7317))
                                                                                        (x7431
                                                                                         (any/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7318)))
                                                                                 (f7321
                                                                                  x7432
                                                                                  x7431))))
                                                                       (pair?/c
                                                                        j7319
                                                                        k7320
                                                                        x7430))))
                                                             g7429))))
                                                 g7428))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7427
                                                         (orig-cons a b)))
                                                 g7427))))
                                           (vector-ref
                                            ((lambda (j7323 k7324 f7325)
                                               (letrec ((g7434
                                                         (lambda (g7322)
                                                           (letrec ((g7435
                                                                     (letrec ((x7436
                                                                               (letrec ((x7437
                                                                                         (vector?/c
                                                                                          j7323
                                                                                          k7324
                                                                                          g7322)))
                                                                                 (f7325
                                                                                  x7437))))
                                                                       (integer?/c
                                                                        j7323
                                                                        k7324
                                                                        x7436))))
                                                             g7435))))
                                                 g7434))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7433
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7433))))
                                           (vector-set!
                                            ((lambda (j7328 k7329 f7330)
                                               (letrec ((g7439
                                                         (lambda (g7326 g7327)
                                                           (letrec ((g7440
                                                                     (letrec ((x7441
                                                                               (letrec ((x7443
                                                                                         (vector?/c
                                                                                          j7328
                                                                                          k7329
                                                                                          g7326))
                                                                                        (x7442
                                                                                         (integer?/c
                                                                                          j7328
                                                                                          k7329
                                                                                          g7327)))
                                                                                 (f7330
                                                                                  x7443
                                                                                  x7442))))
                                                                       (any/c
                                                                        j7328
                                                                        k7329
                                                                        x7441))))
                                                             g7440))))
                                                 g7439))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7438
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7438))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7444
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7444)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7445
                                                        (letrec ((x7446
                                                                  (letrec ((x7447
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7447))))
                                                          (cdr x7446))))
                                                g7445)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7448
                                                        (letrec ((x7451
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7451)))
                                                       (g7449
                                                        (letrec ((x7452
                                                                  (list? l)))
                                                          (assert x7452)))
                                                       (g7450
                                                        (letrec ((x-cnd7453
                                                                  (null? l)))
                                                          (if x-cnd7453
                                                            '()
                                                            (letrec ((x7456
                                                                      (letrec ((x7457
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7457)))
                                                                     (x7454
                                                                      (letrec ((x7455
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7455))))
                                                              (cons
                                                               x7456
                                                               x7454))))))
                                                g7450)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7458
                                                        (letrec ((x7459
                                                                  (car x)))
                                                          (cdr x7459))))
                                                g7458)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7460
                                                        (letrec ((x7461
                                                                  (letrec ((x7462
                                                                            (letrec ((x7463
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7463))))
                                                                    (cdr
                                                                     x7462))))
                                                          (car x7461))))
                                                g7460)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7464
                                                        (letrec ((x7465
                                                                  (letrec ((x7466
                                                                            (letrec ((x7467
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7467))))
                                                                    (car
                                                                     x7466))))
                                                          (cdr x7465))))
                                                g7464)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7468
                                                        (letrec ((x7471
                                                                  (string?
                                                                   filename)))
                                                          (assert x7471)))
                                                       (g7469
                                                        (letrec ((x7472
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7472)))
                                                       (g7470
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7473
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7474 res))
                                                            g7474))))
                                                g7470)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7475
                                                        (letrec ((x7476
                                                                  (letrec ((x7477
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7477))))
                                                          (car x7476))))
                                                g7475)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7478
                                                        (letrec ((x7479
                                                                  (letrec ((x7480
                                                                            (letrec ((x7481
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7481))))
                                                                    (car
                                                                     x7480))))
                                                          (cdr x7479))))
                                                g7478)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7482
                                                        (letrec ((x7484
                                                                  (list? l)))
                                                          (assert x7484)))
                                                       (g7483
                                                        (letrec ((x-cnd7485
                                                                  (null? l)))
                                                          (if x-cnd7485
                                                            #f
                                                            (letrec ((x-cnd7486
                                                                      (letrec ((x7487
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7487
                                                                         k))))
                                                              (if x-cnd7486
                                                                (car l)
                                                                (letrec ((x7488
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7488))))))))
                                                g7483)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7489
                                                        (letrec ((x7490
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7490))))
                                                g7489)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7491
                                                        (letrec ((x7493
                                                                  (list? l)))
                                                          (assert x7493)))
                                                       (g7492
                                                        (letrec ((x-cnd7494
                                                                  (null? l)))
                                                          (if x-cnd7494
                                                            ""
                                                            (letrec ((x7497
                                                                      (letrec ((x7498
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7498)))
                                                                     (x7495
                                                                      (letrec ((x7496
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7496))))
                                                              (string-append
                                                               x7497
                                                               x7495))))))
                                                g7492)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7499
                                                        (letrec ((x7502
                                                                  (char? c1)))
                                                          (assert x7502)))
                                                       (g7500
                                                        (letrec ((x7503
                                                                  (char? c2)))
                                                          (assert x7503)))
                                                       (g7501
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7504
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7504))))
                                                g7501)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7505
                                                        (letrec ((x7506
                                                                  (letrec ((x7507
                                                                            (letrec ((x7508
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7508))))
                                                                    (cdr
                                                                     x7507))))
                                                          (cdr x7506))))
                                                g7505)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7509
                                                        (letrec ((x7512
                                                                  (list? l)))
                                                          (assert x7512)))
                                                       (g7510
                                                        (letrec ((x7513
                                                                  (number?)))
                                                          (assert x7513)))
                                                       (g7511
                                                        (letrec ((x-cnd7514
                                                                  (zero? k)))
                                                          (if x-cnd7514
                                                            x
                                                            (letrec ((x7516
                                                                      (cdr x))
                                                                     (x7515
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7516
                                                               x7515))))))
                                                g7511)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7517 '())) g7517)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7518
                                                        (letrec ((x-cnd7519
                                                                  (letrec ((x7520
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7520))))
                                                          (if x-cnd7519
                                                            (letrec ((x7521
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7521))
                                                            #f))))
                                                g7518)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7522
                                                        (letrec ((x7524
                                                                  (number? x)))
                                                          (assert x7524)))
                                                       (g7523
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7525
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7526
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7526)))))
                                                            g7525))))
                                                g7523)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7527
                                                        (letrec ((val7244
                                                                  (letrec ((x7528
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7528
                                                                     9))))
                                                          (letrec ((g7529
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7530
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7530
                                                                                   10))))
                                                                        (letrec ((g7531
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7532
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7532
                                                                                       32)))))
                                                                          g7531)))))
                                                            g7529))))
                                                g7527)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7533
                                                        (letrec ((x7534
                                                                  (letrec ((x7535
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7535))))
                                                          (cdr x7534))))
                                                g7533)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7536
                                                        (letrec ((x7538
                                                                  (number? x)))
                                                          (assert x7538)))
                                                       (g7537 (> x 0)))
                                                g7537)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7539 #f)) g7539)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7540
                                                        (letrec ((x7541
                                                                  (cdr x)))
                                                          (cdr x7541))))
                                                g7540)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7542
                                                        (letrec ((x7544
                                                                  (number? x)))
                                                          (assert x7544)))
                                                       (g7543
                                                        (letrec ((x-cnd7545
                                                                  (< x 0)))
                                                          (if x-cnd7545
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7543)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7546
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7547
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7548
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7548
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7549
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7550
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7550
                                                                                                  (letrec ((x-cnd7551
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7551
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7552
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7553
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7553
                                                                                                                (letrec ((x-cnd7554
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7554
                                                                                                                    (letrec ((x-cnd7555
                                                                                                                              (letrec ((x7557
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7556
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7557
                                                                                                                                 x7556))))
                                                                                                                      (if x-cnd7555
                                                                                                                        (letrec ((x7559
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7558
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7559
                                                                                                                           x7558))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7560
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7561
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7561
                                                                                                                    (letrec ((x-cnd7562
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7562
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7563
                                                                                                                                    (letrec ((x-cnd7564
                                                                                                                                              (letrec ((x7565
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7565
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7564
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7566
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7567
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7568
                                                                                                                                                                                      (letrec ((x7570
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7569
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7570
                                                                                                                                                                                         x7569))))
                                                                                                                                                                              (if x-cnd7568
                                                                                                                                                                                (letrec ((x7571
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7571))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7567))))
                                                                                                                                                      g7566))))
                                                                                                                                          (letrec ((g7572
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7572))
                                                                                                                                        #f))))
                                                                                                                            g7563))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7560)))))
                                                                                        g7552)))))
                                                                          g7549)))))
                                                            g7547))))
                                                g7546)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7573
                                                        (letrec ((x7574
                                                                  (letrec ((x7575
                                                                            (letrec ((x7576
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7576))))
                                                                    (car
                                                                     x7575))))
                                                          (cdr x7574))))
                                                g7573)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7577
                                                        (letrec ((x7578
                                                                  (letrec ((x7579
                                                                            (letrec ((x7580
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7580))))
                                                                    (car
                                                                     x7579))))
                                                          (car x7578))))
                                                g7577)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7581 (eq? x y)))
                                                g7581)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7582
                                                        (letrec ((x7584
                                                                  (number? x)))
                                                          (assert x7584)))
                                                       (g7583
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7585
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7586
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7586)))))
                                                            g7585))))
                                                g7583)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7587
                                                        (letrec ((x7590
                                                                  (string?
                                                                   filename)))
                                                          (assert x7590)))
                                                       (g7588
                                                        (letrec ((x7591
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7591)))
                                                       (g7589
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7592
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7593 res))
                                                            g7593))))
                                                g7589)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7594 (cons x '())))
                                                g7594)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7595
                                                        (letrec ((x7598
                                                                  (char? c1)))
                                                          (assert x7598)))
                                                       (g7596
                                                        (letrec ((x7599
                                                                  (char? c2)))
                                                          (assert x7599)))
                                                       (g7597
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7600
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7600))))
                                                g7597)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7601
                                                        (letrec ((x7602
                                                                  (letrec ((x7603
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7603))))
                                                          (cdr x7602))))
                                                g7601)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7604
                                                        (letrec ((x7605
                                                                  (letrec ((x7606
                                                                            (letrec ((x7607
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7607))))
                                                                    (car
                                                                     x7606))))
                                                          (cdr x7605))))
                                                g7604)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7608
                                                        (letrec ((x7609
                                                                  (letrec ((x7610
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7610))))
                                                          (car x7609))))
                                                g7608)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7611
                                                        (letrec ((x7612
                                                                  (letrec ((x7613
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7613))))
                                                          (car x7612))))
                                                g7611)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7614
                                                        (letrec ((x7617
                                                                  (char? c1)))
                                                          (assert x7617)))
                                                       (g7615
                                                        (letrec ((x7618
                                                                  (char? c2)))
                                                          (assert x7618)))
                                                       (g7616
                                                        (letrec ((x7619
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7619))))
                                                g7616)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7620
                                                        (letrec ((x7621
                                                                  (letrec ((x7622
                                                                            (letrec ((x7623
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7623))))
                                                                    (car
                                                                     x7622))))
                                                          (car x7621))))
                                                g7620)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7624
                                                        (letrec ((x7626
                                                                  (number? x)))
                                                          (assert x7626)))
                                                       (g7625 (< x 0)))
                                                g7625)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7627 (memq e l)))
                                                g7627)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7628
                                                        (letrec ((x7629
                                                                  (letrec ((x7630
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7630))))
                                                          (car x7629))))
                                                g7628)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7631 '())) g7631)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7632
                                                        (letrec ((x7634
                                                                  (list? l)))
                                                          (assert x7634)))
                                                       (g7633
                                                        (letrec ((x-cnd7635
                                                                  (null? l)))
                                                          (if x-cnd7635
                                                            '()
                                                            (letrec ((x7638
                                                                      (letrec ((x7639
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7639)))
                                                                     (x7636
                                                                      (letrec ((x7637
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7637))))
                                                              (append
                                                               x7638
                                                               x7636))))))
                                                g7633)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7640
                                                        (letrec ((x7641
                                                                  (letrec ((x7642
                                                                            (letrec ((x7643
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7643))))
                                                                    (car
                                                                     x7642))))
                                                          (car x7641))))
                                                g7640)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7644
                                                        (letrec ((x7645
                                                                  (letrec ((x7646
                                                                            (letrec ((x7647
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7647))))
                                                                    (cdr
                                                                     x7646))))
                                                          (cdr x7645))))
                                                g7644)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7648
                                                        (letrec ((x7650
                                                                  (number? x)))
                                                          (assert x7650)))
                                                       (g7649
                                                        (letrec ((x7651
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7651))))
                                                g7649)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7652
                                                        (letrec ((x7653
                                                                  (letrec ((x7654
                                                                            (letrec ((x7655
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7655))))
                                                                    (car
                                                                     x7654))))
                                                          (car x7653))))
                                                g7652)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7656
                                                        (letrec ((x7659
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7659)))
                                                       (g7657
                                                        (letrec ((x7660
                                                                  (list?
                                                                   args)))
                                                          (assert x7660)))
                                                       (g7658
                                                        (letrec ((x-cnd7661
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7661
                                                            (letrec ((g7662
                                                                      (proc)))
                                                              g7662)
                                                            (letrec ((x-cnd7663
                                                                      (letrec ((x7664
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7664))))
                                                              (if x-cnd7663
                                                                (letrec ((g7665
                                                                          (letrec ((x7666
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7666))))
                                                                  g7665)
                                                                (letrec ((x-cnd7667
                                                                          (letrec ((x7668
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7668))))
                                                                  (if x-cnd7667
                                                                    (letrec ((g7669
                                                                              (letrec ((x7671
                                                                                        (car
                                                                                         args))
                                                                                       (x7670
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7671
                                                                                 x7670))))
                                                                      g7669)
                                                                    (letrec ((x-cnd7672
                                                                              (letrec ((x7673
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7673))))
                                                                      (if x-cnd7672
                                                                        (letrec ((g7674
                                                                                  (letrec ((x7677
                                                                                            (car
                                                                                             args))
                                                                                           (x7676
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7675
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7677
                                                                                     x7676
                                                                                     x7675))))
                                                                          g7674)
                                                                        (letrec ((x-cnd7678
                                                                                  (letrec ((x7679
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7679))))
                                                                          (if x-cnd7678
                                                                            (letrec ((g7680
                                                                                      (letrec ((x7684
                                                                                                (car
                                                                                                 args))
                                                                                               (x7683
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7682
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7681
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7684
                                                                                         x7683
                                                                                         x7682
                                                                                         x7681))))
                                                                              g7680)
                                                                            (letrec ((x-cnd7685
                                                                                      (letrec ((x7686
                                                                                                (letrec ((x7687
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7687))))
                                                                                        (null?
                                                                                         x7686))))
                                                                              (if x-cnd7685
                                                                                (letrec ((g7688
                                                                                          (letrec ((x7694
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7693
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7692
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7691
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7689
                                                                                                    (letrec ((x7690
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7690))))
                                                                                            (proc
                                                                                             x7694
                                                                                             x7693
                                                                                             x7692
                                                                                             x7691
                                                                                             x7689))))
                                                                                  g7688)
                                                                                (letrec ((x-cnd7695
                                                                                          (letrec ((x7696
                                                                                                    (letrec ((x7697
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7697))))
                                                                                            (null?
                                                                                             x7696))))
                                                                                  (if x-cnd7695
                                                                                    (letrec ((g7698
                                                                                              (letrec ((x7706
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7705
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7704
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7703
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7701
                                                                                                        (letrec ((x7702
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7702)))
                                                                                                       (x7699
                                                                                                        (letrec ((x7700
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7700))))
                                                                                                (proc
                                                                                                 x7706
                                                                                                 x7705
                                                                                                 x7704
                                                                                                 x7703
                                                                                                 x7701
                                                                                                 x7699))))
                                                                                      g7698)
                                                                                    (letrec ((x-cnd7707
                                                                                              (letrec ((x7708
                                                                                                        (letrec ((x7709
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7709))))
                                                                                                (null?
                                                                                                 x7708))))
                                                                                      (if x-cnd7707
                                                                                        (letrec ((g7710
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
                                                                                                               x7714)))
                                                                                                           (x7711
                                                                                                            (letrec ((x7712
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7712))))
                                                                                                    (proc
                                                                                                     x7720
                                                                                                     x7719
                                                                                                     x7718
                                                                                                     x7717
                                                                                                     x7715
                                                                                                     x7713
                                                                                                     x7711))))
                                                                                          g7710)
                                                                                        (letrec ((g7721
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7721)))))))))))))))))))
                                                g7658)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7722
                                                        (letrec ((x7724
                                                                  (list? l)))
                                                          (assert x7724)))
                                                       (g7723
                                                        (letrec ((x-cnd7725
                                                                  (null? l)))
                                                          (if x-cnd7725
                                                            #f
                                                            (letrec ((x-cnd7726
                                                                      (letrec ((x7727
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7727
                                                                         e))))
                                                              (if x-cnd7726
                                                                l
                                                                (letrec ((x7728
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7728))))))))
                                                g7723)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7729
                                                        (letrec ((x7730
                                                                  (letrec ((x7731
                                                                            (letrec ((x7732
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7732))))
                                                                    (cdr
                                                                     x7731))))
                                                          (cdr x7730))))
                                                g7729)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7733
                                                        (letrec ((x7734
                                                                  (letrec ((x7735
                                                                            (letrec ((x7736
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7736))))
                                                                    (cdr
                                                                     x7735))))
                                                          (car x7734))))
                                                g7733)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7737 (random 42)))
                                                g7737)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7738
                                                        (letrec ((x7740
                                                                  (number? x)))
                                                          (assert x7740)))
                                                       (g7739 (= x 0)))
                                                g7739)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7741
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7742
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7742))))
                                                g7741)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7743
                                                        (letrec ((x7744
                                                                  (cdr x)))
                                                          (car x7744))))
                                                g7743)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7745
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd7746
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7746
                                                                      (letrec ((x7747
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7747))
                                                                      #f))))
                                                          (letrec ((g7748
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g7748))))
                                                g7745)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7749
                                                        (letrec ((x7750
                                                                  (letrec ((x7751
                                                                            (letrec ((x7752
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7752))))
                                                                    (cdr
                                                                     x7751))))
                                                          (cdr x7750))))
                                                g7749)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7753
                                                        (letrec ((x-cnd7754
                                                                  (letrec ((x7755
                                                                            #\0))
                                                                    (char<=?
                                                                     x7755
                                                                     c))))
                                                          (if x-cnd7754
                                                            (letrec ((x7756
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7756))
                                                            #f))))
                                                g7753)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7757
                                                        (letrec ((x7759
                                                                  (list? l)))
                                                          (assert x7759)))
                                                       (g7758
                                                        (letrec ((x-cnd7760
                                                                  (null? l)))
                                                          (if x-cnd7760
                                                            #f
                                                            (letrec ((x-cnd7761
                                                                      (letrec ((x7762
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7762
                                                                         k))))
                                                              (if x-cnd7761
                                                                (car l)
                                                                (letrec ((x7763
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7763))))))))
                                                g7758)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7764 (if x #f #t)))
                                                g7764)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7765 (append l1 l2)))
                                                g7765)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7766
                                                        (letrec ((x7768
                                                                  (list? l)))
                                                          (assert x7768)))
                                                       (g7767
                                                        (letrec ((x-cnd7769
                                                                  (null? l)))
                                                          (if x-cnd7769
                                                            #f
                                                            (letrec ((x-cnd7770
                                                                      (letrec ((x7771
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7771
                                                                         e))))
                                                              (if x-cnd7770
                                                                l
                                                                (letrec ((x7772
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7772))))))))
                                                g7767)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7773
                                                        (letrec ((x7774
                                                                  (letrec ((x7775
                                                                            (letrec ((x7776
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7776))))
                                                                    (cdr
                                                                     x7775))))
                                                          (car x7774))))
                                                g7773)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7777
                                                        (letrec ((x7779
                                                                  (list? l)))
                                                          (assert x7779)))
                                                       (g7778
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7780
                                                                              (letrec ((x-cnd7781
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7781
                                                                                  0
                                                                                  (letrec ((x7782
                                                                                            (letrec ((x7783
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7783))))
                                                                                    (+
                                                                                     1
                                                                                     x7782))))))
                                                                      g7780))))
                                                          (letrec ((g7784
                                                                    (rec l)))
                                                            g7784))))
                                                g7778)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7785
                                                        (letrec ((x7788
                                                                  (char? c1)))
                                                          (assert x7788)))
                                                       (g7786
                                                        (letrec ((x7789
                                                                  (char? c2)))
                                                          (assert x7789)))
                                                       (g7787
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7790
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7790))))
                                                g7787)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7791
                                                        (letrec ((x7792
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7792))))
                                                g7791)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7793
                                                        (letrec ((x7794
                                                                  (letrec ((x7795
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7795))))
                                                          (cdr x7794))))
                                                g7793)))
                                           (assoc
                                            (lambda (k l)
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
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7801
                                                                         k))))
                                                              (if x-cnd7800
                                                                (car l)
                                                                (letrec ((x7802
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7802))))))))
                                                g7797)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7803
                                                        (letrec ((x7804
                                                                  (car x)))
                                                          (car x7804))))
                                                g7803)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7805
                                                        (letrec ((x7808
                                                                  (char? c1)))
                                                          (assert x7808)))
                                                       (g7806
                                                        (letrec ((x7809
                                                                  (char? c2)))
                                                          (assert x7809)))
                                                       (g7807
                                                        (letrec ((x7810
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7810))))
                                                g7807)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7811
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7812
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7812))))
                                                g7811)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7813
                                                        (letrec ((x7816
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7816)))
                                                       (g7814
                                                        (letrec ((x7817
                                                                  (list? l)))
                                                          (assert x7817)))
                                                       (g7815
                                                        (letrec ((x-cnd7818
                                                                  (null? l)))
                                                          (if x-cnd7818
                                                            #t
                                                            (letrec ((x-cnd7819
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7819
                                                                (letrec ((g7820
                                                                          (letrec ((x7822
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7822)))
                                                                         (g7821
                                                                          (letrec ((x7823
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7823))))
                                                                  g7821)
                                                                '()))))))
                                                g7815)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7824
                                                        (letrec ((x7826
                                                                  (number? x)))
                                                          (assert x7826)))
                                                       (g7825
                                                        (letrec ((x-cnd7827
                                                                  (< x 0)))
                                                          (if x-cnd7827
                                                            (- 0 x)
                                                            x))))
                                                g7825)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7828
                                                        (letrec ((x7831
                                                                  (char? c1)))
                                                          (assert x7831)))
                                                       (g7829
                                                        (letrec ((x7832
                                                                  (char? c2)))
                                                          (assert x7832)))
                                                       (g7830
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7833
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7833))))
                                                g7830)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7834
                                                        (letrec ((x7835
                                                                  (letrec ((x7836
                                                                            (letrec ((x7837
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7837))))
                                                                    (cdr
                                                                     x7836))))
                                                          (car x7835))))
                                                g7834)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7838 #f)) g7838)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7839
                                                        (letrec ((x7841
                                                                  (letrec ((x7842
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7842)))
                                                                 (x7840
                                                                  (gcd m n)))
                                                          (/ x7841 x7840))))
                                                g7839)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7843
                                                        (letrec ((x7845
                                                                  (number? x)))
                                                          (assert x7845)))
                                                       (g7844
                                                        (letrec ((x7846
                                                                  (<= x y)))
                                                          (not x7846))))
                                                g7844)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7847
                                                        (letrec ((x7851
                                                                  (list? l)))
                                                          (assert x7851)))
                                                       (g7848
                                                        (letrec ((x7852
                                                                  (number?
                                                                   index)))
                                                          (assert x7852)))
                                                       (g7849
                                                        (letrec ((x7853
                                                                  (letrec ((x7854
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7854))))
                                                          (assert x7853)))
                                                       (g7850
                                                        (letrec ((x-cnd7855
                                                                  (= index 0)))
                                                          (if x-cnd7855
                                                            (car l)
                                                            (letrec ((x7857
                                                                      (cdr l))
                                                                     (x7856
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7857
                                                               x7856))))))
                                                g7850)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7858
                                                        (letrec ((x-cnd7859
                                                                  (= b 0)))
                                                          (if x-cnd7859
                                                            a
                                                            (letrec ((x7860
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7860))))))
                                                g7858)))
                                           (tak
                                            (lambda (x y z)
                                              (letrec ((g7861
                                                        (letrec ((x-cnd7862
                                                                  (< y x)))
                                                          (if x-cnd7862
                                                            (letrec ((x7867
                                                                      (letrec ((x7868
                                                                                (-
                                                                                 x
                                                                                 1)))
                                                                        (tak
                                                                         x7868
                                                                         y
                                                                         z)))
                                                                     (x7865
                                                                      (letrec ((x7866
                                                                                (-
                                                                                 y
                                                                                 1)))
                                                                        (tak
                                                                         x7866
                                                                         z
                                                                         x)))
                                                                     (x7863
                                                                      (letrec ((x7864
                                                                                (-
                                                                                 z
                                                                                 1)))
                                                                        (tak
                                                                         x7864
                                                                         x
                                                                         y))))
                                                              (tak
                                                               x7867
                                                               x7865
                                                               x7863))
                                                            z))))
                                                g7861))))
                                    (letrec ((g7869
                                              (letrec ((x7873
                                                        ((lambda (j7334
                                                                  k7335
                                                                  f7336)
                                                           (letrec ((g7874
                                                                     (lambda (g7331
                                                                              g7332
                                                                              g7333)
                                                                       (letrec ((g7875
                                                                                 (letrec ((x7876
                                                                                           (letrec ((x7879
                                                                                                     (number?/c
                                                                                                      j7334
                                                                                                      k7335
                                                                                                      g7331))
                                                                                                    (x7878
                                                                                                     (number?/c
                                                                                                      j7334
                                                                                                      k7335
                                                                                                      g7332))
                                                                                                    (x7877
                                                                                                     (number?/c
                                                                                                      j7334
                                                                                                      k7335
                                                                                                      g7333)))
                                                                                             (f7336
                                                                                              x7879
                                                                                              x7878
                                                                                              x7877))))
                                                                                   (number?/c
                                                                                    j7334
                                                                                    k7335
                                                                                    x7876))))
                                                                         g7875))))
                                                             g7874))
                                                         'module
                                                         'importer
                                                         tak))
                                                       (x7872 (input))
                                                       (x7871 (input))
                                                       (x7870 (input)))
                                                (x7873 x7872 x7871 x7870))))
                                      g7869))))
                          g7350))))
              g7348)))
    g7347))
