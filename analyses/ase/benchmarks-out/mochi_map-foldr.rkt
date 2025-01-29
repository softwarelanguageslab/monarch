(letrec ((any? (lambda (v) (letrec ((g7347 #t)) g7347)))
         (meta (lambda (v) (letrec ((g7348 v)) g7348)))
         (member
          (lambda (v lst)
            (letrec ((g7349
                      (letrec ((g7350
                                (letrec ((x-e7351 lst))
                                  (match
                                   x-e7351
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7352 (eq? v v1)))
                                       (if x-cnd7352 #t (member v vs)))))))))
                        g7350)))
              g7349)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7353 (lambda (v) (letrec ((g7354 v)) g7354)))) g7353)))
         (nonzero?
          (lambda (v)
            (letrec ((g7355 (letrec ((x7356 (= v 0))) (not x7356)))) g7355))))
  (letrec ((g7357
            (letrec ((g7358
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7359 '())
                                 (g7360
                                  (letrec ((empty '())
                                           (real?/c
                                            (lambda (g7258 g7259 g7260)
                                              (letrec ((g7361
                                                        (letrec ((x-cnd7362
                                                                  (real?
                                                                   g7260)))
                                                          (if x-cnd7362
                                                            g7260
                                                            (blame
                                                             g7258
                                                             'real?)))))
                                                g7361)))
                                           (boolean?/c
                                            (lambda (g7261 g7262 g7263)
                                              (letrec ((g7363
                                                        (letrec ((x-cnd7364
                                                                  (boolean?
                                                                   g7263)))
                                                          (if x-cnd7364
                                                            g7263
                                                            (blame
                                                             g7261
                                                             'boolean?)))))
                                                g7363)))
                                           (number?/c
                                            (lambda (g7264 g7265 g7266)
                                              (letrec ((g7365
                                                        (letrec ((x-cnd7366
                                                                  (number?
                                                                   g7266)))
                                                          (if x-cnd7366
                                                            g7266
                                                            (blame
                                                             g7264
                                                             'number?)))))
                                                g7365)))
                                           (any/c
                                            (lambda (g7267 g7268 g7269)
                                              (letrec ((g7367
                                                        (letrec ((x-cnd7368
                                                                  ((lambda (v)
                                                                     (letrec ((g7369
                                                                               #t))
                                                                       g7369))
                                                                   g7269)))
                                                          (if x-cnd7368
                                                            g7269
                                                            (blame
                                                             g7267
                                                             '(lambda (v)
                                                                #t))))))
                                                g7367)))
                                           (any?/c
                                            (lambda (g7270 g7271 g7272)
                                              (letrec ((g7370
                                                        (letrec ((x-cnd7371
                                                                  ((lambda (v)
                                                                     (letrec ((g7372
                                                                               #t))
                                                                       g7372))
                                                                   g7272)))
                                                          (if x-cnd7371
                                                            g7272
                                                            (blame
                                                             g7270
                                                             '(lambda (v)
                                                                #t))))))
                                                g7370)))
                                           (cons?/c
                                            (lambda (g7273 g7274 g7275)
                                              (letrec ((g7373
                                                        (letrec ((x-cnd7374
                                                                  (pair?
                                                                   g7275)))
                                                          (if x-cnd7374
                                                            g7275
                                                            (blame
                                                             g7273
                                                             'pair?)))))
                                                g7373)))
                                           (pair?/c
                                            (lambda (g7276 g7277 g7278)
                                              (letrec ((g7375
                                                        (letrec ((x-cnd7376
                                                                  (pair?
                                                                   g7278)))
                                                          (if x-cnd7376
                                                            g7278
                                                            (blame
                                                             g7276
                                                             'pair?)))))
                                                g7375)))
                                           (integer?/c
                                            (lambda (g7279 g7280 g7281)
                                              (letrec ((g7377
                                                        (letrec ((x-cnd7378
                                                                  (integer?
                                                                   g7281)))
                                                          (if x-cnd7378
                                                            g7281
                                                            (blame
                                                             g7279
                                                             'integer?)))))
                                                g7377)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7379
                                                        (lambda (k j v)
                                                          (letrec ((g7380
                                                                    (letrec ((x-cnd7381
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7381
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7380))))
                                                g7379)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7382
                                                        (lambda (k j v)
                                                          (letrec ((g7383
                                                                    (letrec ((x-cnd7384
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7384
                                                                        '()
                                                                        (letrec ((x7388
                                                                                  (letrec ((x7389
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7389)))
                                                                                 (x7385
                                                                                  (letrec ((x7387
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7386
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7387
                                                                                     k
                                                                                     j
                                                                                     x7386))))
                                                                          (orig-cons
                                                                           x7388
                                                                           x7385))))))
                                                            g7383))))
                                                g7382)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7390 #t)) g7390)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7391
                                                        (letrec ((x7392
                                                                  (= v 0)))
                                                          (not x7392))))
                                                g7391)))
                                           (nonzero?/c
                                            (lambda (g7282 g7283 g7284)
                                              (letrec ((g7393
                                                        (letrec ((x-cnd7394
                                                                  ((lambda (v)
                                                                     (letrec ((g7395
                                                                               (letrec ((x7396
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7396))))
                                                                       g7395))
                                                                   g7284)))
                                                          (if x-cnd7394
                                                            g7284
                                                            (blame
                                                             g7282
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7393)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7397 v)) g7397)))
                                           (+
                                            ((lambda (j7287 k7288 f7289)
                                               (letrec ((g7399
                                                         (lambda (g7285 g7286)
                                                           (letrec ((g7400
                                                                     (letrec ((x7401
                                                                               (letrec ((x7403
                                                                                         (number?/c
                                                                                          j7287
                                                                                          k7288
                                                                                          g7285))
                                                                                        (x7402
                                                                                         (number?/c
                                                                                          j7287
                                                                                          k7288
                                                                                          g7286)))
                                                                                 (f7289
                                                                                  x7403
                                                                                  x7402))))
                                                                       (number?/c
                                                                        j7287
                                                                        k7288
                                                                        x7401))))
                                                             g7400))))
                                                 g7399))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7398 (orig-+ a b)))
                                                 g7398))))
                                           (-
                                            ((lambda (j7292 k7293 f7294)
                                               (letrec ((g7405
                                                         (lambda (g7290 g7291)
                                                           (letrec ((g7406
                                                                     (letrec ((x7407
                                                                               (letrec ((x7409
                                                                                         (number?/c
                                                                                          j7292
                                                                                          k7293
                                                                                          g7290))
                                                                                        (x7408
                                                                                         (number?/c
                                                                                          j7292
                                                                                          k7293
                                                                                          g7291)))
                                                                                 (f7294
                                                                                  x7409
                                                                                  x7408))))
                                                                       (number?/c
                                                                        j7292
                                                                        k7293
                                                                        x7407))))
                                                             g7406))))
                                                 g7405))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7404 (orig-- a b)))
                                                 g7404))))
                                           (*
                                            ((lambda (j7297 k7298 f7299)
                                               (letrec ((g7411
                                                         (lambda (g7295 g7296)
                                                           (letrec ((g7412
                                                                     (letrec ((x7413
                                                                               (letrec ((x7415
                                                                                         (number?/c
                                                                                          j7297
                                                                                          k7298
                                                                                          g7295))
                                                                                        (x7414
                                                                                         (number?/c
                                                                                          j7297
                                                                                          k7298
                                                                                          g7296)))
                                                                                 (f7299
                                                                                  x7415
                                                                                  x7414))))
                                                                       (number?/c
                                                                        j7297
                                                                        k7298
                                                                        x7413))))
                                                             g7412))))
                                                 g7411))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7410 (orig-* a b)))
                                                 g7410))))
                                           (/
                                            ((lambda (j7302 k7303 f7304)
                                               (letrec ((g7417
                                                         (lambda (g7300 g7301)
                                                           (letrec ((g7418
                                                                     (letrec ((x7419
                                                                               (letrec ((x7421
                                                                                         (number?/c
                                                                                          j7302
                                                                                          k7303
                                                                                          g7300))
                                                                                        (x7420
                                                                                         (number?/c
                                                                                          j7302
                                                                                          k7303
                                                                                          g7301)))
                                                                                 (f7304
                                                                                  x7421
                                                                                  x7420))))
                                                                       (number?/c
                                                                        j7302
                                                                        k7303
                                                                        x7419))))
                                                             g7418))))
                                                 g7417))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7416 (orig-/ a b)))
                                                 g7416))))
                                           (car
                                            ((lambda (j7306 k7307 f7308)
                                               (letrec ((g7423
                                                         (lambda (g7305)
                                                           (letrec ((g7424
                                                                     (letrec ((x7425
                                                                               (letrec ((x7426
                                                                                         (pair?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7305)))
                                                                                 (f7308
                                                                                  x7426))))
                                                                       (any/c
                                                                        j7306
                                                                        k7307
                                                                        x7425))))
                                                             g7424))))
                                                 g7423))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7422 (orig-car p)))
                                                 g7422))))
                                           (cdr
                                            ((lambda (j7310 k7311 f7312)
                                               (letrec ((g7428
                                                         (lambda (g7309)
                                                           (letrec ((g7429
                                                                     (letrec ((x7430
                                                                               (letrec ((x7431
                                                                                         (pair?/c
                                                                                          j7310
                                                                                          k7311
                                                                                          g7309)))
                                                                                 (f7312
                                                                                  x7431))))
                                                                       (any/c
                                                                        j7310
                                                                        k7311
                                                                        x7430))))
                                                             g7429))))
                                                 g7428))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7427 (orig-cdr p)))
                                                 g7427))))
                                           (cons
                                            ((lambda (j7315 k7316 f7317)
                                               (letrec ((g7433
                                                         (lambda (g7313 g7314)
                                                           (letrec ((g7434
                                                                     (letrec ((x7435
                                                                               (letrec ((x7437
                                                                                         (any/c
                                                                                          j7315
                                                                                          k7316
                                                                                          g7313))
                                                                                        (x7436
                                                                                         (any/c
                                                                                          j7315
                                                                                          k7316
                                                                                          g7314)))
                                                                                 (f7317
                                                                                  x7437
                                                                                  x7436))))
                                                                       (pair?/c
                                                                        j7315
                                                                        k7316
                                                                        x7435))))
                                                             g7434))))
                                                 g7433))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7432
                                                         (orig-cons a b)))
                                                 g7432))))
                                           (vector-ref
                                            ((lambda (j7319 k7320 f7321)
                                               (letrec ((g7439
                                                         (lambda (g7318)
                                                           (letrec ((g7440
                                                                     (letrec ((x7441
                                                                               (letrec ((x7442
                                                                                         (vector?/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7318)))
                                                                                 (f7321
                                                                                  x7442))))
                                                                       (integer?/c
                                                                        j7319
                                                                        k7320
                                                                        x7441))))
                                                             g7440))))
                                                 g7439))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7438
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7438))))
                                           (vector-set!
                                            ((lambda (j7324 k7325 f7326)
                                               (letrec ((g7444
                                                         (lambda (g7322 g7323)
                                                           (letrec ((g7445
                                                                     (letrec ((x7446
                                                                               (letrec ((x7448
                                                                                         (vector?/c
                                                                                          j7324
                                                                                          k7325
                                                                                          g7322))
                                                                                        (x7447
                                                                                         (integer?/c
                                                                                          j7324
                                                                                          k7325
                                                                                          g7323)))
                                                                                 (f7326
                                                                                  x7448
                                                                                  x7447))))
                                                                       (any/c
                                                                        j7324
                                                                        k7325
                                                                        x7446))))
                                                             g7445))))
                                                 g7444))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7443
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7443))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7449
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7449)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7450
                                                        (letrec ((x7451
                                                                  (letrec ((x7452
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7452))))
                                                          (cdr x7451))))
                                                g7450)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7453
                                                        (letrec ((x7456
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7456)))
                                                       (g7454
                                                        (letrec ((x7457
                                                                  (list? l)))
                                                          (assert x7457)))
                                                       (g7455
                                                        (letrec ((x-cnd7458
                                                                  (null? l)))
                                                          (if x-cnd7458
                                                            '()
                                                            (letrec ((x7461
                                                                      (letrec ((x7462
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7462)))
                                                                     (x7459
                                                                      (letrec ((x7460
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7460))))
                                                              (cons
                                                               x7461
                                                               x7459))))))
                                                g7455)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7463
                                                        (letrec ((x7464
                                                                  (car x)))
                                                          (cdr x7464))))
                                                g7463)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7465
                                                        (letrec ((x7466
                                                                  (letrec ((x7467
                                                                            (letrec ((x7468
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7468))))
                                                                    (cdr
                                                                     x7467))))
                                                          (car x7466))))
                                                g7465)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7469
                                                        (letrec ((x7470
                                                                  (letrec ((x7471
                                                                            (letrec ((x7472
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7472))))
                                                                    (car
                                                                     x7471))))
                                                          (cdr x7470))))
                                                g7469)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7473
                                                        (letrec ((x7476
                                                                  (string?
                                                                   filename)))
                                                          (assert x7476)))
                                                       (g7474
                                                        (letrec ((x7477
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7477)))
                                                       (g7475
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7478
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7479 res))
                                                            g7479))))
                                                g7475)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7480
                                                        (letrec ((x7481
                                                                  (letrec ((x7482
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7482))))
                                                          (car x7481))))
                                                g7480)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7483
                                                        (letrec ((x7484
                                                                  (letrec ((x7485
                                                                            (letrec ((x7486
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7486))))
                                                                    (car
                                                                     x7485))))
                                                          (cdr x7484))))
                                                g7483)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7487
                                                        (letrec ((x7489
                                                                  (list? l)))
                                                          (assert x7489)))
                                                       (g7488
                                                        (letrec ((x-cnd7490
                                                                  (null? l)))
                                                          (if x-cnd7490
                                                            #f
                                                            (letrec ((x-cnd7491
                                                                      (letrec ((x7492
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7492
                                                                         k))))
                                                              (if x-cnd7491
                                                                (car l)
                                                                (letrec ((x7493
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7493))))))))
                                                g7488)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7494
                                                        (letrec ((x7495
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7495))))
                                                g7494)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7496
                                                        (letrec ((x7498
                                                                  (list? l)))
                                                          (assert x7498)))
                                                       (g7497
                                                        (letrec ((x-cnd7499
                                                                  (null? l)))
                                                          (if x-cnd7499
                                                            ""
                                                            (letrec ((x7502
                                                                      (letrec ((x7503
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7503)))
                                                                     (x7500
                                                                      (letrec ((x7501
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7501))))
                                                              (string-append
                                                               x7502
                                                               x7500))))))
                                                g7497)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7504
                                                        (letrec ((x7507
                                                                  (char? c1)))
                                                          (assert x7507)))
                                                       (g7505
                                                        (letrec ((x7508
                                                                  (char? c2)))
                                                          (assert x7508)))
                                                       (g7506
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7509
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7509))))
                                                g7506)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7510
                                                        (letrec ((x7511
                                                                  (letrec ((x7512
                                                                            (letrec ((x7513
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7513))))
                                                                    (cdr
                                                                     x7512))))
                                                          (cdr x7511))))
                                                g7510)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7514
                                                        (letrec ((x7517
                                                                  (list? l)))
                                                          (assert x7517)))
                                                       (g7515
                                                        (letrec ((x7518
                                                                  (number?)))
                                                          (assert x7518)))
                                                       (g7516
                                                        (letrec ((x-cnd7519
                                                                  (zero? k)))
                                                          (if x-cnd7519
                                                            x
                                                            (letrec ((x7521
                                                                      (cdr x))
                                                                     (x7520
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7521
                                                               x7520))))))
                                                g7516)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7522 '())) g7522)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7523
                                                        (letrec ((x-cnd7524
                                                                  (letrec ((x7525
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7525))))
                                                          (if x-cnd7524
                                                            (letrec ((x7526
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7526))
                                                            #f))))
                                                g7523)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7527
                                                        (letrec ((x7529
                                                                  (number? x)))
                                                          (assert x7529)))
                                                       (g7528
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7530
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7531
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7531)))))
                                                            g7530))))
                                                g7528)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7532
                                                        (letrec ((val7244
                                                                  (letrec ((x7533
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7533
                                                                     9))))
                                                          (letrec ((g7534
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7535
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7535
                                                                                   10))))
                                                                        (letrec ((g7536
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7537
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7537
                                                                                       32)))))
                                                                          g7536)))))
                                                            g7534))))
                                                g7532)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7538
                                                        (letrec ((x7539
                                                                  (letrec ((x7540
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7540))))
                                                          (cdr x7539))))
                                                g7538)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7541
                                                        (letrec ((x7543
                                                                  (number? x)))
                                                          (assert x7543)))
                                                       (g7542 (> x 0)))
                                                g7542)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7544 #f)) g7544)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7545
                                                        (letrec ((x7546
                                                                  (cdr x)))
                                                          (cdr x7546))))
                                                g7545)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7547
                                                        (letrec ((x7549
                                                                  (number? x)))
                                                          (assert x7549)))
                                                       (g7548
                                                        (letrec ((x-cnd7550
                                                                  (< x 0)))
                                                          (if x-cnd7550
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7548)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7551
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7552
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x7554
                                                                                          (null?
                                                                                           a))
                                                                                         (x7553
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7554
                                                                                       x7553))))
                                                                        (letrec ((g7555
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x7558
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7557
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7556
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7558
                                                                                                     x7557
                                                                                                     x7556))))
                                                                                      (letrec ((g7559
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x7567
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7566
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7563
                                                                                                                      (letrec ((x7565
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7564
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7565
                                                                                                                         x7564)))
                                                                                                                     (x7560
                                                                                                                      (letrec ((x7562
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7561
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7562
                                                                                                                         x7561))))
                                                                                                              (and x7567
                                                                                                                   x7566
                                                                                                                   x7563
                                                                                                                   x7560))))
                                                                                                    (letrec ((g7568
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x7584
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7583
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7569
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7570
                                                                                                                                      (letrec ((x7581
                                                                                                                                                (letrec ((x7582
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7582
                                                                                                                                                   n)))
                                                                                                                                               (x7571
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7572
                                                                                                                                                                      (letrec ((x7579
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7573
                                                                                                                                                                                (letrec ((x7576
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
                                                                                                                                                                                             x7577)))
                                                                                                                                                                                         (x7574
                                                                                                                                                                                          (letrec ((x7575
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7575))))
                                                                                                                                                                                  (and x7576
                                                                                                                                                                                       x7574))))
                                                                                                                                                                        (or x7579
                                                                                                                                                                            x7573))))
                                                                                                                                                              g7572))))
                                                                                                                                                  (letrec ((g7580
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7580))))
                                                                                                                                        (and x7581
                                                                                                                                             x7571))))
                                                                                                                              g7570))))
                                                                                                                  (and x7584
                                                                                                                       x7583
                                                                                                                       x7569)))))
                                                                                                      g7568)))))
                                                                                        g7559)))))
                                                                          g7555)))))
                                                            g7552))))
                                                g7551)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7585
                                                        (letrec ((x7586
                                                                  (letrec ((x7587
                                                                            (letrec ((x7588
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7588))))
                                                                    (car
                                                                     x7587))))
                                                          (cdr x7586))))
                                                g7585)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7589
                                                        (letrec ((x7590
                                                                  (letrec ((x7591
                                                                            (letrec ((x7592
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7592))))
                                                                    (car
                                                                     x7591))))
                                                          (car x7590))))
                                                g7589)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7593 (eq? x y)))
                                                g7593)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7594
                                                        (letrec ((x7596
                                                                  (number? x)))
                                                          (assert x7596)))
                                                       (g7595
                                                        (letrec ((val7250
                                                                  (> x y)))
                                                          (letrec ((g7597
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7598
                                                                                  (if val7251
                                                                                    val7251
                                                                                    #f)))
                                                                          g7598)))))
                                                            g7597))))
                                                g7595)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7599
                                                        (letrec ((x7602
                                                                  (string?
                                                                   filename)))
                                                          (assert x7602)))
                                                       (g7600
                                                        (letrec ((x7603
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7603)))
                                                       (g7601
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7604
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7605 res))
                                                            g7605))))
                                                g7601)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7606 (cons x '())))
                                                g7606)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7607
                                                        (letrec ((x7610
                                                                  (char? c1)))
                                                          (assert x7610)))
                                                       (g7608
                                                        (letrec ((x7611
                                                                  (char? c2)))
                                                          (assert x7611)))
                                                       (g7609
                                                        (letrec ((val7252
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7612
                                                                    (if val7252
                                                                      val7252
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7612))))
                                                g7609)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7613
                                                        (letrec ((x7614
                                                                  (letrec ((x7615
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7615))))
                                                          (cdr x7614))))
                                                g7613)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7616
                                                        (letrec ((x7617
                                                                  (letrec ((x7618
                                                                            (letrec ((x7619
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7619))))
                                                                    (car
                                                                     x7618))))
                                                          (cdr x7617))))
                                                g7616)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7620
                                                        (letrec ((x7621
                                                                  (letrec ((x7622
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7622))))
                                                          (car x7621))))
                                                g7620)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7623
                                                        (letrec ((x7624
                                                                  (letrec ((x7625
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7625))))
                                                          (car x7624))))
                                                g7623)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7626
                                                        (letrec ((x7629
                                                                  (char? c1)))
                                                          (assert x7629)))
                                                       (g7627
                                                        (letrec ((x7630
                                                                  (char? c2)))
                                                          (assert x7630)))
                                                       (g7628
                                                        (letrec ((x7631
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7631))))
                                                g7628)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7632
                                                        (letrec ((x7633
                                                                  (letrec ((x7634
                                                                            (letrec ((x7635
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7635))))
                                                                    (car
                                                                     x7634))))
                                                          (car x7633))))
                                                g7632)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7636
                                                        (letrec ((x7638
                                                                  (number? x)))
                                                          (assert x7638)))
                                                       (g7637 (< x 0)))
                                                g7637)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7639 (memq e l)))
                                                g7639)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7640
                                                        (letrec ((x7641
                                                                  (letrec ((x7642
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7642))))
                                                          (car x7641))))
                                                g7640)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7643 '())) g7643)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7644
                                                        (letrec ((x7646
                                                                  (list? l)))
                                                          (assert x7646)))
                                                       (g7645
                                                        (letrec ((x-cnd7647
                                                                  (null? l)))
                                                          (if x-cnd7647
                                                            '()
                                                            (letrec ((x7650
                                                                      (letrec ((x7651
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7651)))
                                                                     (x7648
                                                                      (letrec ((x7649
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7649))))
                                                              (append
                                                               x7650
                                                               x7648))))))
                                                g7645)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7652
                                                        (letrec ((x7653
                                                                  (letrec ((x7654
                                                                            (letrec ((x7655
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7655))))
                                                                    (car
                                                                     x7654))))
                                                          (car x7653))))
                                                g7652)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7656
                                                        (letrec ((x7657
                                                                  (letrec ((x7658
                                                                            (letrec ((x7659
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7659))))
                                                                    (cdr
                                                                     x7658))))
                                                          (cdr x7657))))
                                                g7656)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7660
                                                        (letrec ((x7662
                                                                  (number? x)))
                                                          (assert x7662)))
                                                       (g7661
                                                        (letrec ((x7663
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7663))))
                                                g7661)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7664
                                                        (letrec ((x7665
                                                                  (letrec ((x7666
                                                                            (letrec ((x7667
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7667))))
                                                                    (car
                                                                     x7666))))
                                                          (car x7665))))
                                                g7664)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7668
                                                        (letrec ((x7671
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7671)))
                                                       (g7669
                                                        (letrec ((x7672
                                                                  (list?
                                                                   args)))
                                                          (assert x7672)))
                                                       (g7670
                                                        (if cnd
                                                          (letrec ((g7673
                                                                    (proc)))
                                                            g7673)
                                                          (if cnd
                                                            (letrec ((g7674
                                                                      (letrec ((x7675
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7675))))
                                                              g7674)
                                                            (if cnd
                                                              (letrec ((g7676
                                                                        (letrec ((x7678
                                                                                  (car
                                                                                   args))
                                                                                 (x7677
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7678
                                                                           x7677))))
                                                                g7676)
                                                              (if cnd
                                                                (letrec ((g7679
                                                                          (letrec ((x7682
                                                                                    (car
                                                                                     args))
                                                                                   (x7681
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7680
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7682
                                                                             x7681
                                                                             x7680))))
                                                                  g7679)
                                                                (if cnd
                                                                  (letrec ((g7683
                                                                            (letrec ((x7687
                                                                                      (car
                                                                                       args))
                                                                                     (x7686
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7685
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7684
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7687
                                                                               x7686
                                                                               x7685
                                                                               x7684))))
                                                                    g7683)
                                                                  (if cnd
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
                                                                    (if cnd
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
                                                                      (if cnd
                                                                        (letrec ((g7704
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
                                                                                               x7708)))
                                                                                           (x7705
                                                                                            (letrec ((x7706
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7706))))
                                                                                    (proc
                                                                                     x7714
                                                                                     x7713
                                                                                     x7712
                                                                                     x7711
                                                                                     x7709
                                                                                     x7707
                                                                                     x7705))))
                                                                          g7704)
                                                                        (letrec ((g7715
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7715)))))))))))
                                                g7670)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7716
                                                        (letrec ((x7718
                                                                  (list? l)))
                                                          (assert x7718)))
                                                       (g7717
                                                        (letrec ((x-cnd7719
                                                                  (null? l)))
                                                          (if x-cnd7719
                                                            #f
                                                            (letrec ((x-cnd7720
                                                                      (letrec ((x7721
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7721
                                                                         e))))
                                                              (if x-cnd7720
                                                                l
                                                                (letrec ((x7722
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7722))))))))
                                                g7717)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7723
                                                        (letrec ((x7724
                                                                  (letrec ((x7725
                                                                            (letrec ((x7726
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7726))))
                                                                    (cdr
                                                                     x7725))))
                                                          (cdr x7724))))
                                                g7723)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7727
                                                        (letrec ((x7728
                                                                  (letrec ((x7729
                                                                            (letrec ((x7730
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7730))))
                                                                    (cdr
                                                                     x7729))))
                                                          (car x7728))))
                                                g7727)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7731 (random 42)))
                                                g7731)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7732
                                                        (letrec ((x7734
                                                                  (number? x)))
                                                          (assert x7734)))
                                                       (g7733 (= x 0)))
                                                g7733)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7735
                                                        (letrec ((val7253
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7736
                                                                    (if val7253
                                                                      val7253
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7736))))
                                                g7735)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7737
                                                        (letrec ((x7738
                                                                  (cdr x)))
                                                          (car x7738))))
                                                g7737)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7739
                                                        (letrec ((val7254
                                                                  (letrec ((x7742
                                                                            (pair?
                                                                             l))
                                                                           (x7740
                                                                            (letrec ((x7741
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7741))))
                                                                    (and x7742
                                                                         x7740))))
                                                          (letrec ((g7743
                                                                    (if val7254
                                                                      val7254
                                                                      (null?
                                                                       l))))
                                                            g7743))))
                                                g7739)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7744
                                                        (letrec ((x7745
                                                                  (letrec ((x7746
                                                                            (letrec ((x7747
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7747))))
                                                                    (cdr
                                                                     x7746))))
                                                          (cdr x7745))))
                                                g7744)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7748
                                                        (letrec ((x-cnd7749
                                                                  (letrec ((x7750
                                                                            #\0))
                                                                    (char<=?
                                                                     x7750
                                                                     c))))
                                                          (if x-cnd7749
                                                            (letrec ((x7751
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7751))
                                                            #f))))
                                                g7748)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7752
                                                        (letrec ((x7754
                                                                  (list? l)))
                                                          (assert x7754)))
                                                       (g7753
                                                        (letrec ((x-cnd7755
                                                                  (null? l)))
                                                          (if x-cnd7755
                                                            #f
                                                            (letrec ((x-cnd7756
                                                                      (letrec ((x7757
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7757
                                                                         k))))
                                                              (if x-cnd7756
                                                                (car l)
                                                                (letrec ((x7758
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7758))))))))
                                                g7753)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7759 (if x #f #t)))
                                                g7759)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7760 (append l1 l2)))
                                                g7760)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7761
                                                        (letrec ((x7763
                                                                  (list? l)))
                                                          (assert x7763)))
                                                       (g7762
                                                        (letrec ((x-cnd7764
                                                                  (null? l)))
                                                          (if x-cnd7764
                                                            #f
                                                            (letrec ((x-cnd7765
                                                                      (letrec ((x7766
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7766
                                                                         e))))
                                                              (if x-cnd7765
                                                                l
                                                                (letrec ((x7767
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7767))))))))
                                                g7762)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7768
                                                        (letrec ((x7769
                                                                  (letrec ((x7770
                                                                            (letrec ((x7771
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7771))))
                                                                    (cdr
                                                                     x7770))))
                                                          (car x7769))))
                                                g7768)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7772
                                                        (letrec ((x7774
                                                                  (list? l)))
                                                          (assert x7774)))
                                                       (g7773
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7775
                                                                              (letrec ((x-cnd7776
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7776
                                                                                  0
                                                                                  (letrec ((x7777
                                                                                            (letrec ((x7778
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7778))))
                                                                                    (+
                                                                                     1
                                                                                     x7777))))))
                                                                      g7775))))
                                                          (letrec ((g7779
                                                                    (rec l)))
                                                            g7779))))
                                                g7773)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7780
                                                        (letrec ((x7783
                                                                  (char? c1)))
                                                          (assert x7783)))
                                                       (g7781
                                                        (letrec ((x7784
                                                                  (char? c2)))
                                                          (assert x7784)))
                                                       (g7782
                                                        (letrec ((val7255
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7785
                                                                    (if val7255
                                                                      val7255
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7785))))
                                                g7782)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7786
                                                        (letrec ((x7787
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7787))))
                                                g7786)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7788
                                                        (letrec ((x7789
                                                                  (letrec ((x7790
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7790))))
                                                          (cdr x7789))))
                                                g7788)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7791
                                                        (letrec ((x7793
                                                                  (list? l)))
                                                          (assert x7793)))
                                                       (g7792
                                                        (letrec ((x-cnd7794
                                                                  (null? l)))
                                                          (if x-cnd7794
                                                            #f
                                                            (letrec ((x-cnd7795
                                                                      (letrec ((x7796
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7796
                                                                         k))))
                                                              (if x-cnd7795
                                                                (car l)
                                                                (letrec ((x7797
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7797))))))))
                                                g7792)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7798
                                                        (letrec ((x7799
                                                                  (car x)))
                                                          (car x7799))))
                                                g7798)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7800
                                                        (letrec ((x7803
                                                                  (char? c1)))
                                                          (assert x7803)))
                                                       (g7801
                                                        (letrec ((x7804
                                                                  (char? c2)))
                                                          (assert x7804)))
                                                       (g7802
                                                        (letrec ((x7805
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7805))))
                                                g7802)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7806
                                                        (letrec ((val7256
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7807
                                                                    (if val7256
                                                                      val7256
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7807))))
                                                g7806)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7808
                                                        (letrec ((x7811
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7811)))
                                                       (g7809
                                                        (letrec ((x7812
                                                                  (list? l)))
                                                          (assert x7812)))
                                                       (g7810
                                                        (letrec ((x-cnd7813
                                                                  (null? l)))
                                                          (if x-cnd7813
                                                            #t
                                                            (letrec ((x-cnd7814
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7814
                                                                (letrec ((g7815
                                                                          (letrec ((x7817
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7817)))
                                                                         (g7816
                                                                          (letrec ((x7818
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7818))))
                                                                  g7816)
                                                                '()))))))
                                                g7810)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7819
                                                        (letrec ((x7821
                                                                  (number? x)))
                                                          (assert x7821)))
                                                       (g7820
                                                        (letrec ((x-cnd7822
                                                                  (< x 0)))
                                                          (if x-cnd7822
                                                            (- 0 x)
                                                            x))))
                                                g7820)))
                                           (char-ci>=?
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
                                                        (letrec ((val7257
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7828
                                                                    (if val7257
                                                                      val7257
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7828))))
                                                g7825)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7829
                                                        (letrec ((x7830
                                                                  (letrec ((x7831
                                                                            (letrec ((x7832
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7832))))
                                                                    (cdr
                                                                     x7831))))
                                                          (car x7830))))
                                                g7829)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7833 #f)) g7833)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7834
                                                        (letrec ((x7836
                                                                  (letrec ((x7837
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7837)))
                                                                 (x7835
                                                                  (gcd m n)))
                                                          (/ x7836 x7835))))
                                                g7834)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7838
                                                        (letrec ((x7840
                                                                  (number? x)))
                                                          (assert x7840)))
                                                       (g7839
                                                        (letrec ((x7841
                                                                  (<= x y)))
                                                          (not x7841))))
                                                g7839)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7842
                                                        (letrec ((x7846
                                                                  (list? l)))
                                                          (assert x7846)))
                                                       (g7843
                                                        (letrec ((x7847
                                                                  (number?
                                                                   index)))
                                                          (assert x7847)))
                                                       (g7844
                                                        (letrec ((x7848
                                                                  (letrec ((x7849
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7849))))
                                                          (assert x7848)))
                                                       (g7845
                                                        (letrec ((x-cnd7850
                                                                  (= index 0)))
                                                          (if x-cnd7850
                                                            (car l)
                                                            (letrec ((x7852
                                                                      (cdr l))
                                                                     (x7851
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7852
                                                               x7851))))))
                                                g7845)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7853
                                                        (letrec ((x-cnd7854
                                                                  (= b 0)))
                                                          (if x-cnd7854
                                                            a
                                                            (letrec ((x7855
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7855))))))
                                                g7853)))
                                           (foldr
                                            (lambda (f z xs)
                                              (letrec ((g7856
                                                        (letrec ((x-cnd7857
                                                                  (empty? xs)))
                                                          (if x-cnd7857
                                                            z
                                                            (letrec ((x7860
                                                                      (car xs))
                                                                     (x7858
                                                                      (letrec ((x7859
                                                                                (cdr
                                                                                 xs)))
                                                                        (foldr
                                                                         f
                                                                         z
                                                                         x7859))))
                                                              (f
                                                               x7860
                                                               x7858))))))
                                                g7856)))
                                           (map
                                            (lambda (f xs)
                                              (letrec ((g7861
                                                        (letrec ((x7862
                                                                  (letrec ((x7865
                                                                            (x
                                                                             ys))
                                                                           (x7863
                                                                            (letrec ((x7864
                                                                                      (f
                                                                                       x)))
                                                                              (cons
                                                                               x7864
                                                                               ys))))
                                                                    (λ x7865
                                                                      x7863))))
                                                          (foldr
                                                           x7862
                                                           empty
                                                           xs))))
                                                g7861))))
                                    (letrec ((g7866
                                              (letrec ((x7871
                                                        ((lambda (j7330
                                                                  k7331
                                                                  f7332)
                                                           (letrec ((g7872
                                                                     (lambda (g7327
                                                                              g7328
                                                                              g7329)
                                                                       (letrec ((g7873
                                                                                 (letrec ((x7874
                                                                                           (letrec ((x7878
                                                                                                     ((lambda (j7335
                                                                                                               k7336
                                                                                                               f7337)
                                                                                                        (letrec ((g7879
                                                                                                                  (lambda (g7333
                                                                                                                           g7334)
                                                                                                                    (letrec ((g7880
                                                                                                                              (letrec ((x7881
                                                                                                                                        (letrec ((x7883
                                                                                                                                                  (any/c
                                                                                                                                                   j7335
                                                                                                                                                   k7336
                                                                                                                                                   g7333))
                                                                                                                                                 (x7882
                                                                                                                                                  (any/c
                                                                                                                                                   j7335
                                                                                                                                                   k7336
                                                                                                                                                   g7334)))
                                                                                                                                          (f7337
                                                                                                                                           x7883
                                                                                                                                           x7882))))
                                                                                                                                (any/c
                                                                                                                                 j7335
                                                                                                                                 k7336
                                                                                                                                 x7881))))
                                                                                                                      g7880))))
                                                                                                          g7879))
                                                                                                      j7330
                                                                                                      k7331
                                                                                                      g7327))
                                                                                                    (x7877
                                                                                                     (any/c
                                                                                                      j7330
                                                                                                      k7331
                                                                                                      g7328))
                                                                                                    (x7875
                                                                                                     (letrec ((x7876
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7876
                                                                                                        j7330
                                                                                                        k7331
                                                                                                        g7329))))
                                                                                             (f7332
                                                                                              x7878
                                                                                              x7877
                                                                                              x7875))))
                                                                                   (any/c
                                                                                    j7330
                                                                                    k7331
                                                                                    x7874))))
                                                                         g7873))))
                                                             g7872))
                                                         'module
                                                         'importer
                                                         foldr))
                                                       (x7870 (input))
                                                       (x7869 (input))
                                                       (x7868 (input)))
                                                (x7871 x7870 x7869 x7868)))
                                             (g7867
                                              (letrec ((x7886
                                                        ((lambda (j7340
                                                                  k7341
                                                                  f7342)
                                                           (letrec ((g7887
                                                                     (lambda (g7338
                                                                              g7339)
                                                                       (letrec ((g7888
                                                                                 (letrec ((x7897
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7889
                                                                                           (letrec ((x7892
                                                                                                     ((lambda (j7344
                                                                                                               k7345
                                                                                                               f7346)
                                                                                                        (letrec ((g7893
                                                                                                                  (lambda (g7343)
                                                                                                                    (letrec ((g7894
                                                                                                                              (letrec ((x7895
                                                                                                                                        (letrec ((x7896
                                                                                                                                                  (any/c
                                                                                                                                                   j7344
                                                                                                                                                   k7345
                                                                                                                                                   g7343)))
                                                                                                                                          (f7346
                                                                                                                                           x7896))))
                                                                                                                                (any/c
                                                                                                                                 j7344
                                                                                                                                 k7345
                                                                                                                                 x7895))))
                                                                                                                      g7894))))
                                                                                                          g7893))
                                                                                                      j7340
                                                                                                      k7341
                                                                                                      g7338))
                                                                                                    (x7890
                                                                                                     (letrec ((x7891
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7891
                                                                                                        j7340
                                                                                                        k7341
                                                                                                        g7339))))
                                                                                             (f7342
                                                                                              x7892
                                                                                              x7890))))
                                                                                   (x7897
                                                                                    j7340
                                                                                    k7341
                                                                                    x7889))))
                                                                         g7888))))
                                                             g7887))
                                                         'module
                                                         'importer
                                                         map))
                                                       (x7885 (input))
                                                       (x7884 (input)))
                                                (x7886 x7885 x7884))))
                                      g7867))))
                          g7360))))
              g7358)))
    g7357))
