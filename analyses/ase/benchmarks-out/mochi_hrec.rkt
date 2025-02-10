(letrec ((any? (lambda (v) (letrec ((g7340 #t)) g7340)))
         (meta (lambda (v) (letrec ((g7341 v)) g7341)))
         (member
          (lambda (v lst)
            (letrec ((g7342
                      (letrec ((g7343
                                (letrec ((x-e7344 lst))
                                  (match
                                   x-e7344
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7345 (eq? v v1)))
                                       (if x-cnd7345 #t (member v vs)))))))))
                        g7343)))
              g7342)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7346 (lambda (v) (letrec ((g7347 v)) g7347)))) g7346)))
         (nonzero?
          (lambda (v)
            (letrec ((g7348 (letrec ((x7349 (= v 0))) (not x7349)))) g7348))))
  (letrec ((g7350
            (letrec ((g7351
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7352 '())
                                 (g7353
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7354
                                                        (lambda (k j lst)
                                                          (letrec ((g7355
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7356
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7356))
                                                                     lst)))
                                                            g7355))))
                                                g7354)))
                                           (real?/c
                                            (lambda (g7258 g7259 g7260)
                                              (letrec ((g7357
                                                        (letrec ((x-cnd7358
                                                                  (real?
                                                                   g7260)))
                                                          (if x-cnd7358
                                                            g7260
                                                            (blame
                                                             g7258
                                                             'real?)))))
                                                g7357)))
                                           (boolean?/c
                                            (lambda (g7261 g7262 g7263)
                                              (letrec ((g7359
                                                        (letrec ((x-cnd7360
                                                                  (boolean?
                                                                   g7263)))
                                                          (if x-cnd7360
                                                            g7263
                                                            (blame
                                                             g7261
                                                             'boolean?)))))
                                                g7359)))
                                           (number?/c
                                            (lambda (g7264 g7265 g7266)
                                              (letrec ((g7361
                                                        (letrec ((x-cnd7362
                                                                  (number?
                                                                   g7266)))
                                                          (if x-cnd7362
                                                            g7266
                                                            (blame
                                                             g7264
                                                             'number?)))))
                                                g7361)))
                                           (any/c
                                            (lambda (g7267 g7268 g7269)
                                              (letrec ((g7363
                                                        (letrec ((x-cnd7364
                                                                  ((lambda (v)
                                                                     (letrec ((g7365
                                                                               #t))
                                                                       g7365))
                                                                   g7269)))
                                                          (if x-cnd7364
                                                            g7269
                                                            (blame
                                                             g7267
                                                             '(lambda (v)
                                                                #t))))))
                                                g7363)))
                                           (any?/c
                                            (lambda (g7270 g7271 g7272)
                                              (letrec ((g7366
                                                        (letrec ((x-cnd7367
                                                                  ((lambda (v)
                                                                     (letrec ((g7368
                                                                               #t))
                                                                       g7368))
                                                                   g7272)))
                                                          (if x-cnd7367
                                                            g7272
                                                            (blame
                                                             g7270
                                                             '(lambda (v)
                                                                #t))))))
                                                g7366)))
                                           (cons?/c
                                            (lambda (g7273 g7274 g7275)
                                              (letrec ((g7369
                                                        (letrec ((x-cnd7370
                                                                  (pair?
                                                                   g7275)))
                                                          (if x-cnd7370
                                                            g7275
                                                            (blame
                                                             g7273
                                                             'pair?)))))
                                                g7369)))
                                           (pair?/c
                                            (lambda (g7276 g7277 g7278)
                                              (letrec ((g7371
                                                        (letrec ((x-cnd7372
                                                                  (pair?
                                                                   g7278)))
                                                          (if x-cnd7372
                                                            g7278
                                                            (blame
                                                             g7276
                                                             'pair?)))))
                                                g7371)))
                                           (integer?/c
                                            (lambda (g7279 g7280 g7281)
                                              (letrec ((g7373
                                                        (letrec ((x-cnd7374
                                                                  (integer?
                                                                   g7281)))
                                                          (if x-cnd7374
                                                            g7281
                                                            (blame
                                                             g7279
                                                             'integer?)))))
                                                g7373)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7375
                                                        (lambda (k j v)
                                                          (letrec ((g7376
                                                                    (letrec ((x-cnd7377
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7377
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7376))))
                                                g7375)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7378
                                                        (lambda (k j v)
                                                          (letrec ((g7379
                                                                    (letrec ((x-cnd7380
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7380
                                                                        '()
                                                                        (letrec ((x7384
                                                                                  (letrec ((x7385
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7385)))
                                                                                 (x7381
                                                                                  (letrec ((x7383
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7382
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7383
                                                                                     k
                                                                                     j
                                                                                     x7382))))
                                                                          (orig-cons
                                                                           x7384
                                                                           x7381))))))
                                                            g7379))))
                                                g7378)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7386 #t)) g7386)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7387
                                                        (letrec ((x7388
                                                                  (= v 0)))
                                                          (not x7388))))
                                                g7387)))
                                           (nonzero?/c
                                            (lambda (g7282 g7283 g7284)
                                              (letrec ((g7389
                                                        (letrec ((x-cnd7390
                                                                  ((lambda (v)
                                                                     (letrec ((g7391
                                                                               (letrec ((x7392
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7392))))
                                                                       g7391))
                                                                   g7284)))
                                                          (if x-cnd7390
                                                            g7284
                                                            (blame
                                                             g7282
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7389)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7393 v)) g7393)))
                                           (+
                                            ((lambda (j7287 k7288 f7289)
                                               (letrec ((g7395
                                                         (lambda (g7285 g7286)
                                                           (letrec ((g7396
                                                                     (letrec ((x7397
                                                                               (letrec ((x7399
                                                                                         (number?/c
                                                                                          j7287
                                                                                          k7288
                                                                                          g7285))
                                                                                        (x7398
                                                                                         (number?/c
                                                                                          j7287
                                                                                          k7288
                                                                                          g7286)))
                                                                                 (f7289
                                                                                  x7399
                                                                                  x7398))))
                                                                       (number?/c
                                                                        j7287
                                                                        k7288
                                                                        x7397))))
                                                             g7396))))
                                                 g7395))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7394 (orig-+ a b)))
                                                 g7394))))
                                           (-
                                            ((lambda (j7292 k7293 f7294)
                                               (letrec ((g7401
                                                         (lambda (g7290 g7291)
                                                           (letrec ((g7402
                                                                     (letrec ((x7403
                                                                               (letrec ((x7405
                                                                                         (number?/c
                                                                                          j7292
                                                                                          k7293
                                                                                          g7290))
                                                                                        (x7404
                                                                                         (number?/c
                                                                                          j7292
                                                                                          k7293
                                                                                          g7291)))
                                                                                 (f7294
                                                                                  x7405
                                                                                  x7404))))
                                                                       (number?/c
                                                                        j7292
                                                                        k7293
                                                                        x7403))))
                                                             g7402))))
                                                 g7401))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7400 (orig-- a b)))
                                                 g7400))))
                                           (*
                                            ((lambda (j7297 k7298 f7299)
                                               (letrec ((g7407
                                                         (lambda (g7295 g7296)
                                                           (letrec ((g7408
                                                                     (letrec ((x7409
                                                                               (letrec ((x7411
                                                                                         (number?/c
                                                                                          j7297
                                                                                          k7298
                                                                                          g7295))
                                                                                        (x7410
                                                                                         (number?/c
                                                                                          j7297
                                                                                          k7298
                                                                                          g7296)))
                                                                                 (f7299
                                                                                  x7411
                                                                                  x7410))))
                                                                       (number?/c
                                                                        j7297
                                                                        k7298
                                                                        x7409))))
                                                             g7408))))
                                                 g7407))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7406 (orig-* a b)))
                                                 g7406))))
                                           (/
                                            ((lambda (j7302 k7303 f7304)
                                               (letrec ((g7413
                                                         (lambda (g7300 g7301)
                                                           (letrec ((g7414
                                                                     (letrec ((x7415
                                                                               (letrec ((x7417
                                                                                         (number?/c
                                                                                          j7302
                                                                                          k7303
                                                                                          g7300))
                                                                                        (x7416
                                                                                         (number?/c
                                                                                          j7302
                                                                                          k7303
                                                                                          g7301)))
                                                                                 (f7304
                                                                                  x7417
                                                                                  x7416))))
                                                                       (number?/c
                                                                        j7302
                                                                        k7303
                                                                        x7415))))
                                                             g7414))))
                                                 g7413))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7412 (orig-/ a b)))
                                                 g7412))))
                                           (car
                                            ((lambda (j7306 k7307 f7308)
                                               (letrec ((g7419
                                                         (lambda (g7305)
                                                           (letrec ((g7420
                                                                     (letrec ((x7421
                                                                               (letrec ((x7422
                                                                                         (pair?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7305)))
                                                                                 (f7308
                                                                                  x7422))))
                                                                       (any/c
                                                                        j7306
                                                                        k7307
                                                                        x7421))))
                                                             g7420))))
                                                 g7419))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7418 (orig-car p)))
                                                 g7418))))
                                           (cdr
                                            ((lambda (j7310 k7311 f7312)
                                               (letrec ((g7424
                                                         (lambda (g7309)
                                                           (letrec ((g7425
                                                                     (letrec ((x7426
                                                                               (letrec ((x7427
                                                                                         (pair?/c
                                                                                          j7310
                                                                                          k7311
                                                                                          g7309)))
                                                                                 (f7312
                                                                                  x7427))))
                                                                       (any/c
                                                                        j7310
                                                                        k7311
                                                                        x7426))))
                                                             g7425))))
                                                 g7424))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7423 (orig-cdr p)))
                                                 g7423))))
                                           (cons
                                            ((lambda (j7315 k7316 f7317)
                                               (letrec ((g7429
                                                         (lambda (g7313 g7314)
                                                           (letrec ((g7430
                                                                     (letrec ((x7431
                                                                               (letrec ((x7433
                                                                                         (any/c
                                                                                          j7315
                                                                                          k7316
                                                                                          g7313))
                                                                                        (x7432
                                                                                         (any/c
                                                                                          j7315
                                                                                          k7316
                                                                                          g7314)))
                                                                                 (f7317
                                                                                  x7433
                                                                                  x7432))))
                                                                       (pair?/c
                                                                        j7315
                                                                        k7316
                                                                        x7431))))
                                                             g7430))))
                                                 g7429))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7428
                                                         (orig-cons a b)))
                                                 g7428))))
                                           (vector-ref
                                            ((lambda (j7319 k7320 f7321)
                                               (letrec ((g7435
                                                         (lambda (g7318)
                                                           (letrec ((g7436
                                                                     (letrec ((x7437
                                                                               (letrec ((x7438
                                                                                         (vector?/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7318)))
                                                                                 (f7321
                                                                                  x7438))))
                                                                       (integer?/c
                                                                        j7319
                                                                        k7320
                                                                        x7437))))
                                                             g7436))))
                                                 g7435))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7434
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7434))))
                                           (vector-set!
                                            ((lambda (j7324 k7325 f7326)
                                               (letrec ((g7440
                                                         (lambda (g7322 g7323)
                                                           (letrec ((g7441
                                                                     (letrec ((x7442
                                                                               (letrec ((x7444
                                                                                         (vector?/c
                                                                                          j7324
                                                                                          k7325
                                                                                          g7322))
                                                                                        (x7443
                                                                                         (integer?/c
                                                                                          j7324
                                                                                          k7325
                                                                                          g7323)))
                                                                                 (f7326
                                                                                  x7444
                                                                                  x7443))))
                                                                       (any/c
                                                                        j7324
                                                                        k7325
                                                                        x7442))))
                                                             g7441))))
                                                 g7440))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7439
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7439))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7445
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7445)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7446
                                                        (letrec ((x7447
                                                                  (letrec ((x7448
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7448))))
                                                          (cdr x7447))))
                                                g7446)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7449
                                                        (letrec ((x7452
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7452)))
                                                       (g7450
                                                        (letrec ((x7453
                                                                  (list? l)))
                                                          (assert x7453)))
                                                       (g7451
                                                        (letrec ((x-cnd7454
                                                                  (null? l)))
                                                          (if x-cnd7454
                                                            '()
                                                            (letrec ((x7457
                                                                      (letrec ((x7458
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7458)))
                                                                     (x7455
                                                                      (letrec ((x7456
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7456))))
                                                              (cons
                                                               x7457
                                                               x7455))))))
                                                g7451)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7459
                                                        (letrec ((x7460
                                                                  (car x)))
                                                          (cdr x7460))))
                                                g7459)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7461
                                                        (letrec ((x7462
                                                                  (letrec ((x7463
                                                                            (letrec ((x7464
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7464))))
                                                                    (cdr
                                                                     x7463))))
                                                          (car x7462))))
                                                g7461)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7465
                                                        (letrec ((x7466
                                                                  (letrec ((x7467
                                                                            (letrec ((x7468
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7468))))
                                                                    (car
                                                                     x7467))))
                                                          (cdr x7466))))
                                                g7465)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7469
                                                        (letrec ((x7472
                                                                  (string?
                                                                   filename)))
                                                          (assert x7472)))
                                                       (g7470
                                                        (letrec ((x7473
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7473)))
                                                       (g7471
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7474
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7475 res))
                                                            g7475))))
                                                g7471)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7476
                                                        (letrec ((x7477
                                                                  (letrec ((x7478
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7478))))
                                                          (car x7477))))
                                                g7476)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7479
                                                        (letrec ((x7480
                                                                  (letrec ((x7481
                                                                            (letrec ((x7482
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7482))))
                                                                    (car
                                                                     x7481))))
                                                          (cdr x7480))))
                                                g7479)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7483
                                                        (letrec ((x7485
                                                                  (list? l)))
                                                          (assert x7485)))
                                                       (g7484
                                                        (letrec ((x-cnd7486
                                                                  (null? l)))
                                                          (if x-cnd7486
                                                            #f
                                                            (letrec ((x-cnd7487
                                                                      (letrec ((x7488
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7488
                                                                         k))))
                                                              (if x-cnd7487
                                                                (car l)
                                                                (letrec ((x7489
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7489))))))))
                                                g7484)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7490
                                                        (letrec ((x7491
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7491))))
                                                g7490)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7492
                                                        (letrec ((x7494
                                                                  (list? l)))
                                                          (assert x7494)))
                                                       (g7493
                                                        (letrec ((x-cnd7495
                                                                  (null? l)))
                                                          (if x-cnd7495
                                                            ""
                                                            (letrec ((x7498
                                                                      (letrec ((x7499
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7499)))
                                                                     (x7496
                                                                      (letrec ((x7497
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7497))))
                                                              (string-append
                                                               x7498
                                                               x7496))))))
                                                g7493)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7500
                                                        (letrec ((x7503
                                                                  (char? c1)))
                                                          (assert x7503)))
                                                       (g7501
                                                        (letrec ((x7504
                                                                  (char? c2)))
                                                          (assert x7504)))
                                                       (g7502
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7505
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7505))))
                                                g7502)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7506
                                                        (letrec ((x7507
                                                                  (letrec ((x7508
                                                                            (letrec ((x7509
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7509))))
                                                                    (cdr
                                                                     x7508))))
                                                          (cdr x7507))))
                                                g7506)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7510
                                                        (letrec ((x7513
                                                                  (list? l)))
                                                          (assert x7513)))
                                                       (g7511
                                                        (letrec ((x7514
                                                                  (number?)))
                                                          (assert x7514)))
                                                       (g7512
                                                        (letrec ((x-cnd7515
                                                                  (zero? k)))
                                                          (if x-cnd7515
                                                            x
                                                            (letrec ((x7517
                                                                      (cdr x))
                                                                     (x7516
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7517
                                                               x7516))))))
                                                g7512)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7518 '())) g7518)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7519
                                                        (letrec ((x-cnd7520
                                                                  (letrec ((x7521
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7521))))
                                                          (if x-cnd7520
                                                            (letrec ((x7522
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7522))
                                                            #f))))
                                                g7519)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7523
                                                        (letrec ((x7525
                                                                  (number? x)))
                                                          (assert x7525)))
                                                       (g7524
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7526
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7527
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7527)))))
                                                            g7526))))
                                                g7524)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7528
                                                        (letrec ((val7244
                                                                  (letrec ((x7529
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7529
                                                                     9))))
                                                          (letrec ((g7530
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7531
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7531
                                                                                   10))))
                                                                        (letrec ((g7532
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7533
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7533
                                                                                       32)))))
                                                                          g7532)))))
                                                            g7530))))
                                                g7528)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7534
                                                        (letrec ((x7535
                                                                  (letrec ((x7536
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7536))))
                                                          (cdr x7535))))
                                                g7534)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7537
                                                        (letrec ((x7539
                                                                  (number? x)))
                                                          (assert x7539)))
                                                       (g7538 (> x 0)))
                                                g7538)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7540 #f)) g7540)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7541
                                                        (letrec ((x7542
                                                                  (cdr x)))
                                                          (cdr x7542))))
                                                g7541)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7543
                                                        (letrec ((x7545
                                                                  (number? x)))
                                                          (assert x7545)))
                                                       (g7544
                                                        (letrec ((x-cnd7546
                                                                  (< x 0)))
                                                          (if x-cnd7546
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7544)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7547
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7548
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x7550
                                                                                          (null?
                                                                                           a))
                                                                                         (x7549
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7550
                                                                                       x7549))))
                                                                        (letrec ((g7551
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x7554
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7553
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7552
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7554
                                                                                                     x7553
                                                                                                     x7552))))
                                                                                      (letrec ((g7555
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x7563
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7562
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7559
                                                                                                                      (letrec ((x7561
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7560
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7561
                                                                                                                         x7560)))
                                                                                                                     (x7556
                                                                                                                      (letrec ((x7558
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7557
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7558
                                                                                                                         x7557))))
                                                                                                              (and x7563
                                                                                                                   x7562
                                                                                                                   x7559
                                                                                                                   x7556))))
                                                                                                    (letrec ((g7564
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x7580
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7579
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7565
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7566
                                                                                                                                      (letrec ((x7577
                                                                                                                                                (letrec ((x7578
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7578
                                                                                                                                                   n)))
                                                                                                                                               (x7567
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7568
                                                                                                                                                                      (letrec ((x7575
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7569
                                                                                                                                                                                (letrec ((x7572
                                                                                                                                                                                          (letrec ((x7574
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7573
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7574
                                                                                                                                                                                             x7573)))
                                                                                                                                                                                         (x7570
                                                                                                                                                                                          (letrec ((x7571
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7571))))
                                                                                                                                                                                  (and x7572
                                                                                                                                                                                       x7570))))
                                                                                                                                                                        (or x7575
                                                                                                                                                                            x7569))))
                                                                                                                                                              g7568))))
                                                                                                                                                  (letrec ((g7576
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7576))))
                                                                                                                                        (and x7577
                                                                                                                                             x7567))))
                                                                                                                              g7566))))
                                                                                                                  (and x7580
                                                                                                                       x7579
                                                                                                                       x7565)))))
                                                                                                      g7564)))))
                                                                                        g7555)))))
                                                                          g7551)))))
                                                            g7548))))
                                                g7547)))
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
                                                        (letrec ((val7250
                                                                  (> x y)))
                                                          (letrec ((g7593
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7594
                                                                                  (if val7251
                                                                                    val7251
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
                                                        (letrec ((val7252
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7608
                                                                    (if val7252
                                                                      val7252
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
                                                        (letrec ((val7253
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7750
                                                                    (if val7253
                                                                      val7253
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
                                                        (letrec ((val7254
                                                                  (letrec ((x7756
                                                                            (pair?
                                                                             l))
                                                                           (x7754
                                                                            (letrec ((x7755
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7755))))
                                                                    (and x7756
                                                                         x7754))))
                                                          (letrec ((g7757
                                                                    (if val7254
                                                                      val7254
                                                                      (null?
                                                                       l))))
                                                            g7757))))
                                                g7753)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7758
                                                        (letrec ((x7759
                                                                  (letrec ((x7760
                                                                            (letrec ((x7761
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7761))))
                                                                    (cdr
                                                                     x7760))))
                                                          (cdr x7759))))
                                                g7758)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7762
                                                        (letrec ((x-cnd7763
                                                                  (letrec ((x7764
                                                                            #\0))
                                                                    (char<=?
                                                                     x7764
                                                                     c))))
                                                          (if x-cnd7763
                                                            (letrec ((x7765
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7765))
                                                            #f))))
                                                g7762)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
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
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7771
                                                                         k))))
                                                              (if x-cnd7770
                                                                (car l)
                                                                (letrec ((x7772
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7772))))))))
                                                g7767)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7773 (if x #f #t)))
                                                g7773)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7774 (append l1 l2)))
                                                g7774)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7775
                                                        (letrec ((x7777
                                                                  (list? l)))
                                                          (assert x7777)))
                                                       (g7776
                                                        (letrec ((x-cnd7778
                                                                  (null? l)))
                                                          (if x-cnd7778
                                                            #f
                                                            (letrec ((x-cnd7779
                                                                      (letrec ((x7780
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7780
                                                                         e))))
                                                              (if x-cnd7779
                                                                l
                                                                (letrec ((x7781
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7781))))))))
                                                g7776)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7782
                                                        (letrec ((x7783
                                                                  (letrec ((x7784
                                                                            (letrec ((x7785
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7785))))
                                                                    (cdr
                                                                     x7784))))
                                                          (car x7783))))
                                                g7782)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7786
                                                        (letrec ((x7788
                                                                  (list? l)))
                                                          (assert x7788)))
                                                       (g7787
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7789
                                                                              (letrec ((x-cnd7790
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7790
                                                                                  0
                                                                                  (letrec ((x7791
                                                                                            (letrec ((x7792
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7792))))
                                                                                    (+
                                                                                     1
                                                                                     x7791))))))
                                                                      g7789))))
                                                          (letrec ((g7793
                                                                    (rec l)))
                                                            g7793))))
                                                g7787)))
                                           (char-ci<=?
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
                                                        (letrec ((val7255
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7799
                                                                    (if val7255
                                                                      val7255
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7799))))
                                                g7796)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7800
                                                        (letrec ((x7801
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7801))))
                                                g7800)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7802
                                                        (letrec ((x7803
                                                                  (letrec ((x7804
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7804))))
                                                          (cdr x7803))))
                                                g7802)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7805
                                                        (letrec ((x7807
                                                                  (list? l)))
                                                          (assert x7807)))
                                                       (g7806
                                                        (letrec ((x-cnd7808
                                                                  (null? l)))
                                                          (if x-cnd7808
                                                            #f
                                                            (letrec ((x-cnd7809
                                                                      (letrec ((x7810
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7810
                                                                         k))))
                                                              (if x-cnd7809
                                                                (car l)
                                                                (letrec ((x7811
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7811))))))))
                                                g7806)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7812
                                                        (letrec ((x7813
                                                                  (car x)))
                                                          (car x7813))))
                                                g7812)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7814
                                                        (letrec ((x7817
                                                                  (char? c1)))
                                                          (assert x7817)))
                                                       (g7815
                                                        (letrec ((x7818
                                                                  (char? c2)))
                                                          (assert x7818)))
                                                       (g7816
                                                        (letrec ((x7819
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7819))))
                                                g7816)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7820
                                                        (letrec ((val7256
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7821
                                                                    (if val7256
                                                                      val7256
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7821))))
                                                g7820)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7822
                                                        (letrec ((x7825
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7825)))
                                                       (g7823
                                                        (letrec ((x7826
                                                                  (list? l)))
                                                          (assert x7826)))
                                                       (g7824
                                                        (letrec ((x-cnd7827
                                                                  (null? l)))
                                                          (if x-cnd7827
                                                            #t
                                                            (letrec ((x-cnd7828
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7828
                                                                (letrec ((g7829
                                                                          (letrec ((x7831
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7831)))
                                                                         (g7830
                                                                          (letrec ((x7832
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7832))))
                                                                  g7830)
                                                                '()))))))
                                                g7824)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7833
                                                        (letrec ((x7835
                                                                  (number? x)))
                                                          (assert x7835)))
                                                       (g7834
                                                        (letrec ((x-cnd7836
                                                                  (< x 0)))
                                                          (if x-cnd7836
                                                            (- 0 x)
                                                            x))))
                                                g7834)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7837
                                                        (letrec ((x7840
                                                                  (char? c1)))
                                                          (assert x7840)))
                                                       (g7838
                                                        (letrec ((x7841
                                                                  (char? c2)))
                                                          (assert x7841)))
                                                       (g7839
                                                        (letrec ((val7257
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7842
                                                                    (if val7257
                                                                      val7257
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7842))))
                                                g7839)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7843
                                                        (letrec ((x7844
                                                                  (letrec ((x7845
                                                                            (letrec ((x7846
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7846))))
                                                                    (cdr
                                                                     x7845))))
                                                          (car x7844))))
                                                g7843)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7847 #f)) g7847)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7848
                                                        (letrec ((x7850
                                                                  (letrec ((x7851
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7851)))
                                                                 (x7849
                                                                  (gcd m n)))
                                                          (/ x7850 x7849))))
                                                g7848)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7852
                                                        (letrec ((x7854
                                                                  (number? x)))
                                                          (assert x7854)))
                                                       (g7853
                                                        (letrec ((x7855
                                                                  (<= x y)))
                                                          (not x7855))))
                                                g7853)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7856
                                                        (letrec ((x7860
                                                                  (list? l)))
                                                          (assert x7860)))
                                                       (g7857
                                                        (letrec ((x7861
                                                                  (number?
                                                                   index)))
                                                          (assert x7861)))
                                                       (g7858
                                                        (letrec ((x7862
                                                                  (letrec ((x7863
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7863))))
                                                          (assert x7862)))
                                                       (g7859
                                                        (letrec ((x-cnd7864
                                                                  (= index 0)))
                                                          (if x-cnd7864
                                                            (car l)
                                                            (letrec ((x7866
                                                                      (cdr l))
                                                                     (x7865
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7866
                                                               x7865))))))
                                                g7859)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7867
                                                        (letrec ((x-cnd7868
                                                                  (= b 0)))
                                                          (if x-cnd7868
                                                            a
                                                            (letrec ((x7869
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7869))))))
                                                g7867)))
                                           (f
                                            (lambda (g x)
                                              (letrec ((g7870
                                                        (letrec ((x-cnd7871
                                                                  (>= x 0)))
                                                          (if x-cnd7871
                                                            (g x)
                                                            (letrec ((x7873
                                                                      (letrec ((x7875
                                                                                (x))
                                                                               (x7874
                                                                                (f
                                                                                 g
                                                                                 x)))
                                                                        (λ x7875
                                                                          x7874)))
                                                                     (x7872
                                                                      (g x)))
                                                              (f
                                                               x7873
                                                               x7872))))))
                                                g7870)))
                                           (main
                                            (lambda (n)
                                              (letrec ((g7876 (f add1 n)))
                                                g7876))))
                                    (letrec ((g7877
                                              (letrec ((x7881
                                                        ((lambda (j7329
                                                                  k7330
                                                                  f7331)
                                                           (letrec ((g7882
                                                                     (lambda (g7327
                                                                              g7328)
                                                                       (letrec ((g7883
                                                                                 (letrec ((x7884
                                                                                           (letrec ((x7886
                                                                                                     ((lambda (j7333
                                                                                                               k7334
                                                                                                               f7335)
                                                                                                        (letrec ((g7887
                                                                                                                  (lambda (g7332)
                                                                                                                    (letrec ((g7888
                                                                                                                              (letrec ((x7889
                                                                                                                                        (letrec ((x7890
                                                                                                                                                  (integer?
                                                                                                                                                   j7333
                                                                                                                                                   k7334
                                                                                                                                                   g7332)))
                                                                                                                                          (f7335
                                                                                                                                           x7890))))
                                                                                                                                (integer?
                                                                                                                                 j7333
                                                                                                                                 k7334
                                                                                                                                 x7889))))
                                                                                                                      g7888))))
                                                                                                          g7887))
                                                                                                      j7329
                                                                                                      k7330
                                                                                                      g7327))
                                                                                                    (x7885
                                                                                                     (integer?
                                                                                                      j7329
                                                                                                      k7330
                                                                                                      g7328)))
                                                                                             (f7331
                                                                                              x7886
                                                                                              x7885))))
                                                                                   (integer?
                                                                                    j7329
                                                                                    k7330
                                                                                    x7884))))
                                                                         g7883))))
                                                             g7882))
                                                         'module
                                                         'importer
                                                         f))
                                                       (x7880 (input))
                                                       (x7879 (input)))
                                                (x7881 x7880 x7879)))
                                             (g7878
                                              (letrec ((x7892
                                                        ((lambda (j7337
                                                                  k7338
                                                                  f7339)
                                                           (letrec ((g7893
                                                                     (lambda (g7336)
                                                                       (letrec ((g7894
                                                                                 (letrec ((x7897
                                                                                           (letrec ((x7898
                                                                                                     (>=/c
                                                                                                      0)))
                                                                                             (and/c
                                                                                              integer?
                                                                                              x7898)))
                                                                                          (x7895
                                                                                           (letrec ((x7896
                                                                                                     (integer?
                                                                                                      j7337
                                                                                                      k7338
                                                                                                      g7336)))
                                                                                             (f7339
                                                                                              x7896))))
                                                                                   (x7897
                                                                                    j7337
                                                                                    k7338
                                                                                    x7895))))
                                                                         g7894))))
                                                             g7893))
                                                         'module
                                                         'importer
                                                         main))
                                                       (x7891 (input)))
                                                (x7892 x7891))))
                                      g7878))))
                          g7353))))
              g7351)))
    g7350))
