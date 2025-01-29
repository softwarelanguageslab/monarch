(letrec ((any? (lambda (v) (letrec ((g7341 #t)) g7341)))
         (meta (lambda (v) (letrec ((g7342 v)) g7342)))
         (member
          (lambda (v lst)
            (letrec ((g7343
                      (letrec ((g7344
                                (letrec ((x-e7345 lst))
                                  (match
                                   x-e7345
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7346 (eq? v v1)))
                                       (if x-cnd7346 #t (member v vs)))))))))
                        g7344)))
              g7343)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7347 (lambda (v) (letrec ((g7348 v)) g7348)))) g7347)))
         (nonzero?
          (lambda (v)
            (letrec ((g7349 (letrec ((x7350 (= v 0))) (not x7350)))) g7349))))
  (letrec ((g7351
            (letrec ((g7352
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7353 '())
                                 (g7354
                                  (letrec ((empty '())
                                           (real?/c
                                            (lambda (g7258 g7259 g7260)
                                              (letrec ((g7355
                                                        (letrec ((x-cnd7356
                                                                  (real?
                                                                   g7260)))
                                                          (if x-cnd7356
                                                            g7260
                                                            (blame
                                                             g7258
                                                             'real?)))))
                                                g7355)))
                                           (boolean?/c
                                            (lambda (g7261 g7262 g7263)
                                              (letrec ((g7357
                                                        (letrec ((x-cnd7358
                                                                  (boolean?
                                                                   g7263)))
                                                          (if x-cnd7358
                                                            g7263
                                                            (blame
                                                             g7261
                                                             'boolean?)))))
                                                g7357)))
                                           (number?/c
                                            (lambda (g7264 g7265 g7266)
                                              (letrec ((g7359
                                                        (letrec ((x-cnd7360
                                                                  (number?
                                                                   g7266)))
                                                          (if x-cnd7360
                                                            g7266
                                                            (blame
                                                             g7264
                                                             'number?)))))
                                                g7359)))
                                           (any/c
                                            (lambda (g7267 g7268 g7269)
                                              (letrec ((g7361
                                                        (letrec ((x-cnd7362
                                                                  ((lambda (v)
                                                                     (letrec ((g7363
                                                                               #t))
                                                                       g7363))
                                                                   g7269)))
                                                          (if x-cnd7362
                                                            g7269
                                                            (blame
                                                             g7267
                                                             '(lambda (v)
                                                                #t))))))
                                                g7361)))
                                           (any?/c
                                            (lambda (g7270 g7271 g7272)
                                              (letrec ((g7364
                                                        (letrec ((x-cnd7365
                                                                  ((lambda (v)
                                                                     (letrec ((g7366
                                                                               #t))
                                                                       g7366))
                                                                   g7272)))
                                                          (if x-cnd7365
                                                            g7272
                                                            (blame
                                                             g7270
                                                             '(lambda (v)
                                                                #t))))))
                                                g7364)))
                                           (cons?/c
                                            (lambda (g7273 g7274 g7275)
                                              (letrec ((g7367
                                                        (letrec ((x-cnd7368
                                                                  (pair?
                                                                   g7275)))
                                                          (if x-cnd7368
                                                            g7275
                                                            (blame
                                                             g7273
                                                             'pair?)))))
                                                g7367)))
                                           (pair?/c
                                            (lambda (g7276 g7277 g7278)
                                              (letrec ((g7369
                                                        (letrec ((x-cnd7370
                                                                  (pair?
                                                                   g7278)))
                                                          (if x-cnd7370
                                                            g7278
                                                            (blame
                                                             g7276
                                                             'pair?)))))
                                                g7369)))
                                           (integer?/c
                                            (lambda (g7279 g7280 g7281)
                                              (letrec ((g7371
                                                        (letrec ((x-cnd7372
                                                                  (integer?
                                                                   g7281)))
                                                          (if x-cnd7372
                                                            g7281
                                                            (blame
                                                             g7279
                                                             'integer?)))))
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
                                            (lambda (g7282 g7283 g7284)
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
                                                                   g7284)))
                                                          (if x-cnd7388
                                                            g7284
                                                            (blame
                                                             g7282
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7387)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7391 v)) g7391)))
                                           (+
                                            ((lambda (j7287 k7288 f7289)
                                               (letrec ((g7393
                                                         (lambda (g7285 g7286)
                                                           (letrec ((g7394
                                                                     (letrec ((x7395
                                                                               (letrec ((x7397
                                                                                         (number?/c
                                                                                          j7287
                                                                                          k7288
                                                                                          g7285))
                                                                                        (x7396
                                                                                         (number?/c
                                                                                          j7287
                                                                                          k7288
                                                                                          g7286)))
                                                                                 (f7289
                                                                                  x7397
                                                                                  x7396))))
                                                                       (number?/c
                                                                        j7287
                                                                        k7288
                                                                        x7395))))
                                                             g7394))))
                                                 g7393))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7392 (orig-+ a b)))
                                                 g7392))))
                                           (-
                                            ((lambda (j7292 k7293 f7294)
                                               (letrec ((g7399
                                                         (lambda (g7290 g7291)
                                                           (letrec ((g7400
                                                                     (letrec ((x7401
                                                                               (letrec ((x7403
                                                                                         (number?/c
                                                                                          j7292
                                                                                          k7293
                                                                                          g7290))
                                                                                        (x7402
                                                                                         (number?/c
                                                                                          j7292
                                                                                          k7293
                                                                                          g7291)))
                                                                                 (f7294
                                                                                  x7403
                                                                                  x7402))))
                                                                       (number?/c
                                                                        j7292
                                                                        k7293
                                                                        x7401))))
                                                             g7400))))
                                                 g7399))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7398 (orig-- a b)))
                                                 g7398))))
                                           (*
                                            ((lambda (j7297 k7298 f7299)
                                               (letrec ((g7405
                                                         (lambda (g7295 g7296)
                                                           (letrec ((g7406
                                                                     (letrec ((x7407
                                                                               (letrec ((x7409
                                                                                         (number?/c
                                                                                          j7297
                                                                                          k7298
                                                                                          g7295))
                                                                                        (x7408
                                                                                         (number?/c
                                                                                          j7297
                                                                                          k7298
                                                                                          g7296)))
                                                                                 (f7299
                                                                                  x7409
                                                                                  x7408))))
                                                                       (number?/c
                                                                        j7297
                                                                        k7298
                                                                        x7407))))
                                                             g7406))))
                                                 g7405))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7404 (orig-* a b)))
                                                 g7404))))
                                           (/
                                            ((lambda (j7302 k7303 f7304)
                                               (letrec ((g7411
                                                         (lambda (g7300 g7301)
                                                           (letrec ((g7412
                                                                     (letrec ((x7413
                                                                               (letrec ((x7415
                                                                                         (number?/c
                                                                                          j7302
                                                                                          k7303
                                                                                          g7300))
                                                                                        (x7414
                                                                                         (number?/c
                                                                                          j7302
                                                                                          k7303
                                                                                          g7301)))
                                                                                 (f7304
                                                                                  x7415
                                                                                  x7414))))
                                                                       (number?/c
                                                                        j7302
                                                                        k7303
                                                                        x7413))))
                                                             g7412))))
                                                 g7411))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7410 (orig-/ a b)))
                                                 g7410))))
                                           (car
                                            ((lambda (j7306 k7307 f7308)
                                               (letrec ((g7417
                                                         (lambda (g7305)
                                                           (letrec ((g7418
                                                                     (letrec ((x7419
                                                                               (letrec ((x7420
                                                                                         (pair?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7305)))
                                                                                 (f7308
                                                                                  x7420))))
                                                                       (any/c
                                                                        j7306
                                                                        k7307
                                                                        x7419))))
                                                             g7418))))
                                                 g7417))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7416 (orig-car p)))
                                                 g7416))))
                                           (cdr
                                            ((lambda (j7310 k7311 f7312)
                                               (letrec ((g7422
                                                         (lambda (g7309)
                                                           (letrec ((g7423
                                                                     (letrec ((x7424
                                                                               (letrec ((x7425
                                                                                         (pair?/c
                                                                                          j7310
                                                                                          k7311
                                                                                          g7309)))
                                                                                 (f7312
                                                                                  x7425))))
                                                                       (any/c
                                                                        j7310
                                                                        k7311
                                                                        x7424))))
                                                             g7423))))
                                                 g7422))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7421 (orig-cdr p)))
                                                 g7421))))
                                           (cons
                                            ((lambda (j7315 k7316 f7317)
                                               (letrec ((g7427
                                                         (lambda (g7313 g7314)
                                                           (letrec ((g7428
                                                                     (letrec ((x7429
                                                                               (letrec ((x7431
                                                                                         (any/c
                                                                                          j7315
                                                                                          k7316
                                                                                          g7313))
                                                                                        (x7430
                                                                                         (any/c
                                                                                          j7315
                                                                                          k7316
                                                                                          g7314)))
                                                                                 (f7317
                                                                                  x7431
                                                                                  x7430))))
                                                                       (pair?/c
                                                                        j7315
                                                                        k7316
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
                                            ((lambda (j7319 k7320 f7321)
                                               (letrec ((g7433
                                                         (lambda (g7318)
                                                           (letrec ((g7434
                                                                     (letrec ((x7435
                                                                               (letrec ((x7436
                                                                                         (vector?/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7318)))
                                                                                 (f7321
                                                                                  x7436))))
                                                                       (integer?/c
                                                                        j7319
                                                                        k7320
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
                                            ((lambda (j7324 k7325 f7326)
                                               (letrec ((g7438
                                                         (lambda (g7322 g7323)
                                                           (letrec ((g7439
                                                                     (letrec ((x7440
                                                                               (letrec ((x7442
                                                                                         (vector?/c
                                                                                          j7324
                                                                                          k7325
                                                                                          g7322))
                                                                                        (x7441
                                                                                         (integer?/c
                                                                                          j7324
                                                                                          k7325
                                                                                          g7323)))
                                                                                 (f7326
                                                                                  x7442
                                                                                  x7441))))
                                                                       (any/c
                                                                        j7324
                                                                        k7325
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
                                                                                (letrec ((x7548
                                                                                          (null?
                                                                                           a))
                                                                                         (x7547
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7548
                                                                                       x7547))))
                                                                        (letrec ((g7549
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x7552
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7551
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7550
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7552
                                                                                                     x7551
                                                                                                     x7550))))
                                                                                      (letrec ((g7553
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x7561
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7560
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7557
                                                                                                                      (letrec ((x7559
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7558
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7559
                                                                                                                         x7558)))
                                                                                                                     (x7554
                                                                                                                      (letrec ((x7556
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7555
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7556
                                                                                                                         x7555))))
                                                                                                              (and x7561
                                                                                                                   x7560
                                                                                                                   x7557
                                                                                                                   x7554))))
                                                                                                    (letrec ((g7562
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x7578
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7577
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7563
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7564
                                                                                                                                      (letrec ((x7575
                                                                                                                                                (letrec ((x7576
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7576
                                                                                                                                                   n)))
                                                                                                                                               (x7565
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7566
                                                                                                                                                                      (letrec ((x7573
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7567
                                                                                                                                                                                (letrec ((x7570
                                                                                                                                                                                          (letrec ((x7572
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7571
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7572
                                                                                                                                                                                             x7571)))
                                                                                                                                                                                         (x7568
                                                                                                                                                                                          (letrec ((x7569
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7569))))
                                                                                                                                                                                  (and x7570
                                                                                                                                                                                       x7568))))
                                                                                                                                                                        (or x7573
                                                                                                                                                                            x7567))))
                                                                                                                                                              g7566))))
                                                                                                                                                  (letrec ((g7574
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7574))))
                                                                                                                                        (and x7575
                                                                                                                                             x7565))))
                                                                                                                              g7564))))
                                                                                                                  (and x7578
                                                                                                                       x7577
                                                                                                                       x7563)))))
                                                                                                      g7562)))))
                                                                                        g7553)))))
                                                                          g7549)))))
                                                            g7546))))
                                                g7545)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7579
                                                        (letrec ((x7580
                                                                  (letrec ((x7581
                                                                            (letrec ((x7582
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7582))))
                                                                    (car
                                                                     x7581))))
                                                          (cdr x7580))))
                                                g7579)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7583
                                                        (letrec ((x7584
                                                                  (letrec ((x7585
                                                                            (letrec ((x7586
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7586))))
                                                                    (car
                                                                     x7585))))
                                                          (car x7584))))
                                                g7583)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7587 (eq? x y)))
                                                g7587)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7588
                                                        (letrec ((x7590
                                                                  (number? x)))
                                                          (assert x7590)))
                                                       (g7589
                                                        (letrec ((val7250
                                                                  (> x y)))
                                                          (letrec ((g7591
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7592
                                                                                  (if val7251
                                                                                    val7251
                                                                                    #f)))
                                                                          g7592)))))
                                                            g7591))))
                                                g7589)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7593
                                                        (letrec ((x7596
                                                                  (string?
                                                                   filename)))
                                                          (assert x7596)))
                                                       (g7594
                                                        (letrec ((x7597
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7597)))
                                                       (g7595
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7598
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7599 res))
                                                            g7599))))
                                                g7595)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7600 (cons x '())))
                                                g7600)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7601
                                                        (letrec ((x7604
                                                                  (char? c1)))
                                                          (assert x7604)))
                                                       (g7602
                                                        (letrec ((x7605
                                                                  (char? c2)))
                                                          (assert x7605)))
                                                       (g7603
                                                        (letrec ((val7252
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7606
                                                                    (if val7252
                                                                      val7252
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7606))))
                                                g7603)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7607
                                                        (letrec ((x7608
                                                                  (letrec ((x7609
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7609))))
                                                          (cdr x7608))))
                                                g7607)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7610
                                                        (letrec ((x7611
                                                                  (letrec ((x7612
                                                                            (letrec ((x7613
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7613))))
                                                                    (car
                                                                     x7612))))
                                                          (cdr x7611))))
                                                g7610)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7614
                                                        (letrec ((x7615
                                                                  (letrec ((x7616
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7616))))
                                                          (car x7615))))
                                                g7614)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7617
                                                        (letrec ((x7618
                                                                  (letrec ((x7619
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7619))))
                                                          (car x7618))))
                                                g7617)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7620
                                                        (letrec ((x7623
                                                                  (char? c1)))
                                                          (assert x7623)))
                                                       (g7621
                                                        (letrec ((x7624
                                                                  (char? c2)))
                                                          (assert x7624)))
                                                       (g7622
                                                        (letrec ((x7625
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7625))))
                                                g7622)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7626
                                                        (letrec ((x7627
                                                                  (letrec ((x7628
                                                                            (letrec ((x7629
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7629))))
                                                                    (car
                                                                     x7628))))
                                                          (car x7627))))
                                                g7626)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7630
                                                        (letrec ((x7632
                                                                  (number? x)))
                                                          (assert x7632)))
                                                       (g7631 (< x 0)))
                                                g7631)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7633 (memq e l)))
                                                g7633)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7634
                                                        (letrec ((x7635
                                                                  (letrec ((x7636
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7636))))
                                                          (car x7635))))
                                                g7634)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7637 '())) g7637)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7638
                                                        (letrec ((x7640
                                                                  (list? l)))
                                                          (assert x7640)))
                                                       (g7639
                                                        (letrec ((x-cnd7641
                                                                  (null? l)))
                                                          (if x-cnd7641
                                                            '()
                                                            (letrec ((x7644
                                                                      (letrec ((x7645
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7645)))
                                                                     (x7642
                                                                      (letrec ((x7643
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7643))))
                                                              (append
                                                               x7644
                                                               x7642))))))
                                                g7639)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7646
                                                        (letrec ((x7647
                                                                  (letrec ((x7648
                                                                            (letrec ((x7649
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7649))))
                                                                    (car
                                                                     x7648))))
                                                          (car x7647))))
                                                g7646)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7650
                                                        (letrec ((x7651
                                                                  (letrec ((x7652
                                                                            (letrec ((x7653
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7653))))
                                                                    (cdr
                                                                     x7652))))
                                                          (cdr x7651))))
                                                g7650)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7654
                                                        (letrec ((x7656
                                                                  (number? x)))
                                                          (assert x7656)))
                                                       (g7655
                                                        (letrec ((x7657
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7657))))
                                                g7655)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7658
                                                        (letrec ((x7659
                                                                  (letrec ((x7660
                                                                            (letrec ((x7661
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7661))))
                                                                    (car
                                                                     x7660))))
                                                          (car x7659))))
                                                g7658)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7662
                                                        (letrec ((x7665
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7665)))
                                                       (g7663
                                                        (letrec ((x7666
                                                                  (list?
                                                                   args)))
                                                          (assert x7666)))
                                                       (g7664
                                                        (if cnd
                                                          (letrec ((g7667
                                                                    (proc)))
                                                            g7667)
                                                          (if cnd
                                                            (letrec ((g7668
                                                                      (letrec ((x7669
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7669))))
                                                              g7668)
                                                            (if cnd
                                                              (letrec ((g7670
                                                                        (letrec ((x7672
                                                                                  (car
                                                                                   args))
                                                                                 (x7671
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7672
                                                                           x7671))))
                                                                g7670)
                                                              (if cnd
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
                                                                (if cnd
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
                                                                  (if cnd
                                                                    (letrec ((g7682
                                                                              (letrec ((x7688
                                                                                        (car
                                                                                         args))
                                                                                       (x7687
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7686
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7685
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7683
                                                                                        (letrec ((x7684
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7684))))
                                                                                (proc
                                                                                 x7688
                                                                                 x7687
                                                                                 x7686
                                                                                 x7685
                                                                                 x7683))))
                                                                      g7682)
                                                                    (if cnd
                                                                      (letrec ((g7689
                                                                                (letrec ((x7697
                                                                                          (car
                                                                                           args))
                                                                                         (x7696
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7695
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7694
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7692
                                                                                          (letrec ((x7693
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7693)))
                                                                                         (x7690
                                                                                          (letrec ((x7691
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7691))))
                                                                                  (proc
                                                                                   x7697
                                                                                   x7696
                                                                                   x7695
                                                                                   x7694
                                                                                   x7692
                                                                                   x7690))))
                                                                        g7689)
                                                                      (if cnd
                                                                        (letrec ((g7698
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
                                                                                               x7704)))
                                                                                           (x7701
                                                                                            (letrec ((x7702
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7702)))
                                                                                           (x7699
                                                                                            (letrec ((x7700
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7700))))
                                                                                    (proc
                                                                                     x7708
                                                                                     x7707
                                                                                     x7706
                                                                                     x7705
                                                                                     x7703
                                                                                     x7701
                                                                                     x7699))))
                                                                          g7698)
                                                                        (letrec ((g7709
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7709)))))))))))
                                                g7664)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7710
                                                        (letrec ((x7712
                                                                  (list? l)))
                                                          (assert x7712)))
                                                       (g7711
                                                        (letrec ((x-cnd7713
                                                                  (null? l)))
                                                          (if x-cnd7713
                                                            #f
                                                            (letrec ((x-cnd7714
                                                                      (letrec ((x7715
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7715
                                                                         e))))
                                                              (if x-cnd7714
                                                                l
                                                                (letrec ((x7716
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7716))))))))
                                                g7711)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7717
                                                        (letrec ((x7718
                                                                  (letrec ((x7719
                                                                            (letrec ((x7720
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7720))))
                                                                    (cdr
                                                                     x7719))))
                                                          (cdr x7718))))
                                                g7717)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7721
                                                        (letrec ((x7722
                                                                  (letrec ((x7723
                                                                            (letrec ((x7724
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7724))))
                                                                    (cdr
                                                                     x7723))))
                                                          (car x7722))))
                                                g7721)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7725 (random 42)))
                                                g7725)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7726
                                                        (letrec ((x7728
                                                                  (number? x)))
                                                          (assert x7728)))
                                                       (g7727 (= x 0)))
                                                g7727)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7729
                                                        (letrec ((val7253
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7730
                                                                    (if val7253
                                                                      val7253
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7730))))
                                                g7729)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7731
                                                        (letrec ((x7732
                                                                  (cdr x)))
                                                          (car x7732))))
                                                g7731)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7733
                                                        (letrec ((val7254
                                                                  (letrec ((x7736
                                                                            (pair?
                                                                             l))
                                                                           (x7734
                                                                            (letrec ((x7735
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7735))))
                                                                    (and x7736
                                                                         x7734))))
                                                          (letrec ((g7737
                                                                    (if val7254
                                                                      val7254
                                                                      (null?
                                                                       l))))
                                                            g7737))))
                                                g7733)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7738
                                                        (letrec ((x7739
                                                                  (letrec ((x7740
                                                                            (letrec ((x7741
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7741))))
                                                                    (cdr
                                                                     x7740))))
                                                          (cdr x7739))))
                                                g7738)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7742
                                                        (letrec ((x-cnd7743
                                                                  (letrec ((x7744
                                                                            #\0))
                                                                    (char<=?
                                                                     x7744
                                                                     c))))
                                                          (if x-cnd7743
                                                            (letrec ((x7745
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7745))
                                                            #f))))
                                                g7742)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7746
                                                        (letrec ((x7748
                                                                  (list? l)))
                                                          (assert x7748)))
                                                       (g7747
                                                        (letrec ((x-cnd7749
                                                                  (null? l)))
                                                          (if x-cnd7749
                                                            #f
                                                            (letrec ((x-cnd7750
                                                                      (letrec ((x7751
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7751
                                                                         k))))
                                                              (if x-cnd7750
                                                                (car l)
                                                                (letrec ((x7752
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7752))))))))
                                                g7747)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7753 (if x #f #t)))
                                                g7753)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7754 (append l1 l2)))
                                                g7754)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7755
                                                        (letrec ((x7757
                                                                  (list? l)))
                                                          (assert x7757)))
                                                       (g7756
                                                        (letrec ((x-cnd7758
                                                                  (null? l)))
                                                          (if x-cnd7758
                                                            #f
                                                            (letrec ((x-cnd7759
                                                                      (letrec ((x7760
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7760
                                                                         e))))
                                                              (if x-cnd7759
                                                                l
                                                                (letrec ((x7761
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7761))))))))
                                                g7756)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7762
                                                        (letrec ((x7763
                                                                  (letrec ((x7764
                                                                            (letrec ((x7765
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7765))))
                                                                    (cdr
                                                                     x7764))))
                                                          (car x7763))))
                                                g7762)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7766
                                                        (letrec ((x7768
                                                                  (list? l)))
                                                          (assert x7768)))
                                                       (g7767
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7769
                                                                              (letrec ((x-cnd7770
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7770
                                                                                  0
                                                                                  (letrec ((x7771
                                                                                            (letrec ((x7772
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7772))))
                                                                                    (+
                                                                                     1
                                                                                     x7771))))))
                                                                      g7769))))
                                                          (letrec ((g7773
                                                                    (rec l)))
                                                            g7773))))
                                                g7767)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7774
                                                        (letrec ((x7777
                                                                  (char? c1)))
                                                          (assert x7777)))
                                                       (g7775
                                                        (letrec ((x7778
                                                                  (char? c2)))
                                                          (assert x7778)))
                                                       (g7776
                                                        (letrec ((val7255
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7779
                                                                    (if val7255
                                                                      val7255
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7779))))
                                                g7776)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7780
                                                        (letrec ((x7781
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7781))))
                                                g7780)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7782
                                                        (letrec ((x7783
                                                                  (letrec ((x7784
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7784))))
                                                          (cdr x7783))))
                                                g7782)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7785
                                                        (letrec ((x7787
                                                                  (list? l)))
                                                          (assert x7787)))
                                                       (g7786
                                                        (letrec ((x-cnd7788
                                                                  (null? l)))
                                                          (if x-cnd7788
                                                            #f
                                                            (letrec ((x-cnd7789
                                                                      (letrec ((x7790
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7790
                                                                         k))))
                                                              (if x-cnd7789
                                                                (car l)
                                                                (letrec ((x7791
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7791))))))))
                                                g7786)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7792
                                                        (letrec ((x7793
                                                                  (car x)))
                                                          (car x7793))))
                                                g7792)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7794
                                                        (letrec ((x7797
                                                                  (char? c1)))
                                                          (assert x7797)))
                                                       (g7795
                                                        (letrec ((x7798
                                                                  (char? c2)))
                                                          (assert x7798)))
                                                       (g7796
                                                        (letrec ((x7799
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7799))))
                                                g7796)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7800
                                                        (letrec ((val7256
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7801
                                                                    (if val7256
                                                                      val7256
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7801))))
                                                g7800)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7802
                                                        (letrec ((x7805
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7805)))
                                                       (g7803
                                                        (letrec ((x7806
                                                                  (list? l)))
                                                          (assert x7806)))
                                                       (g7804
                                                        (letrec ((x-cnd7807
                                                                  (null? l)))
                                                          (if x-cnd7807
                                                            #t
                                                            (letrec ((x-cnd7808
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7808
                                                                (letrec ((g7809
                                                                          (letrec ((x7811
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7811)))
                                                                         (g7810
                                                                          (letrec ((x7812
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7812))))
                                                                  g7810)
                                                                '()))))))
                                                g7804)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7813
                                                        (letrec ((x7815
                                                                  (number? x)))
                                                          (assert x7815)))
                                                       (g7814
                                                        (letrec ((x-cnd7816
                                                                  (< x 0)))
                                                          (if x-cnd7816
                                                            (- 0 x)
                                                            x))))
                                                g7814)))
                                           (char-ci>=?
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
                                                        (letrec ((val7257
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7822
                                                                    (if val7257
                                                                      val7257
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7822))))
                                                g7819)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7823
                                                        (letrec ((x7824
                                                                  (letrec ((x7825
                                                                            (letrec ((x7826
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7826))))
                                                                    (cdr
                                                                     x7825))))
                                                          (car x7824))))
                                                g7823)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7827 #f)) g7827)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7828
                                                        (letrec ((x7830
                                                                  (letrec ((x7831
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7831)))
                                                                 (x7829
                                                                  (gcd m n)))
                                                          (/ x7830 x7829))))
                                                g7828)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7832
                                                        (letrec ((x7834
                                                                  (number? x)))
                                                          (assert x7834)))
                                                       (g7833
                                                        (letrec ((x7835
                                                                  (<= x y)))
                                                          (not x7835))))
                                                g7833)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7836
                                                        (letrec ((x7840
                                                                  (list? l)))
                                                          (assert x7840)))
                                                       (g7837
                                                        (letrec ((x7841
                                                                  (number?
                                                                   index)))
                                                          (assert x7841)))
                                                       (g7838
                                                        (letrec ((x7842
                                                                  (letrec ((x7843
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7843))))
                                                          (assert x7842)))
                                                       (g7839
                                                        (letrec ((x-cnd7844
                                                                  (= index 0)))
                                                          (if x-cnd7844
                                                            (car l)
                                                            (letrec ((x7846
                                                                      (cdr l))
                                                                     (x7845
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7846
                                                               x7845))))))
                                                g7839)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7847
                                                        (letrec ((x-cnd7848
                                                                  (= b 0)))
                                                          (if x-cnd7848
                                                            a
                                                            (letrec ((x7849
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7849))))))
                                                g7847)))
                                           (mappend
                                            (lambda (xs ys)
                                              (letrec ((g7850
                                                        (letrec ((x-cnd7851
                                                                  (empty? xs)))
                                                          (if x-cnd7851
                                                            ys
                                                            (letrec ((x7854
                                                                      (car xs))
                                                                     (x7852
                                                                      (letrec ((x7853
                                                                                (cdr
                                                                                 xs)))
                                                                        (mappend
                                                                         x7853
                                                                         ys))))
                                                              (cons
                                                               x7854
                                                               x7852))))))
                                                g7850)))
                                           (map-append
                                            (lambda (f xs)
                                              (letrec ((g7855
                                                        (letrec ((x-cnd7856
                                                                  (empty? xs)))
                                                          (if x-cnd7856
                                                            empty
                                                            (letrec ((x7859
                                                                      (letrec ((x7860
                                                                                (car
                                                                                 xs)))
                                                                        (f
                                                                         x7860)))
                                                                     (x7857
                                                                      (letrec ((x7858
                                                                                (cdr
                                                                                 xs)))
                                                                        (map-append
                                                                         f
                                                                         x7858))))
                                                              (mappend
                                                               x7859
                                                               x7857))))))
                                                g7855))))
                                    (letrec ((g7861
                                              (letrec ((x7865
                                                        ((lambda (j7329
                                                                  k7330
                                                                  f7331)
                                                           (letrec ((g7866
                                                                     (lambda (g7327
                                                                              g7328)
                                                                       (letrec ((g7867
                                                                                 (letrec ((x7877
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7868
                                                                                           (letrec ((x7871
                                                                                                     ((lambda (j7333
                                                                                                               k7334
                                                                                                               f7335)
                                                                                                        (letrec ((g7872
                                                                                                                  (lambda (g7332)
                                                                                                                    (letrec ((g7873
                                                                                                                              (letrec ((x7876
                                                                                                                                        (listof
                                                                                                                                         any/c))
                                                                                                                                       (x7874
                                                                                                                                        (letrec ((x7875
                                                                                                                                                  (any/c
                                                                                                                                                   j7333
                                                                                                                                                   k7334
                                                                                                                                                   g7332)))
                                                                                                                                          (f7335
                                                                                                                                           x7875))))
                                                                                                                                (x7876
                                                                                                                                 j7333
                                                                                                                                 k7334
                                                                                                                                 x7874))))
                                                                                                                      g7873))))
                                                                                                          g7872))
                                                                                                      j7329
                                                                                                      k7330
                                                                                                      g7327))
                                                                                                    (x7869
                                                                                                     (letrec ((x7870
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7870
                                                                                                        j7329
                                                                                                        k7330
                                                                                                        g7328))))
                                                                                             (f7331
                                                                                              x7871
                                                                                              x7869))))
                                                                                   (x7877
                                                                                    j7329
                                                                                    k7330
                                                                                    x7868))))
                                                                         g7867))))
                                                             g7866))
                                                         'module
                                                         'importer
                                                         map-append))
                                                       (x7864 (input))
                                                       (x7863 (input)))
                                                (x7865 x7864 x7863)))
                                             (g7862
                                              (letrec ((x7880
                                                        ((lambda (j7338
                                                                  k7339
                                                                  f7340)
                                                           (letrec ((g7881
                                                                     (lambda (g7336
                                                                              g7337)
                                                                       (letrec ((g7882
                                                                                 (letrec ((x7888
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7883
                                                                                           (letrec ((x7886
                                                                                                     (letrec ((x7887
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7887
                                                                                                        j7338
                                                                                                        k7339
                                                                                                        g7336)))
                                                                                                    (x7884
                                                                                                     (letrec ((x7885
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7885
                                                                                                        j7338
                                                                                                        k7339
                                                                                                        g7337))))
                                                                                             (f7340
                                                                                              x7886
                                                                                              x7884))))
                                                                                   (x7888
                                                                                    j7338
                                                                                    k7339
                                                                                    x7883))))
                                                                         g7882))))
                                                             g7881))
                                                         'module
                                                         'importer
                                                         mappend))
                                                       (x7879 (input))
                                                       (x7878 (input)))
                                                (x7880 x7879 x7878))))
                                      g7862))))
                          g7354))))
              g7352)))
    g7351))
