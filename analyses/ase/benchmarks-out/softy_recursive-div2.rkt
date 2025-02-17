(letrec ((any? (lambda (v) (letrec ((g7338 #t)) g7338)))
         (meta (lambda (v) (letrec ((g7339 v)) g7339)))
         (member
          (lambda (v lst)
            (letrec ((g7340
                      (letrec ((g7341
                                (letrec ((x-e7342 lst))
                                  (match
                                   x-e7342
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7343 (eq? v v1)))
                                       (if x-cnd7343 #t (member v vs)))))))))
                        g7341)))
              g7340)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7344 (lambda (v) (letrec ((g7345 v)) g7345)))) g7344)))
         (nonzero?
          (lambda (v)
            (letrec ((g7346 (letrec ((x7347 (= v 0))) (not x7347)))) g7346))))
  (letrec ((g7348
            (letrec ((g7349
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7350 '())
                                 (g7351
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7352
                                                        (lambda (k j lst)
                                                          (letrec ((g7353
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7354
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7354))
                                                                     lst)))
                                                            g7353))))
                                                g7352)))
                                           (real?/c
                                            (lambda (g7259 g7260 g7261)
                                              (letrec ((g7355
                                                        (letrec ((x-cnd7356
                                                                  (real?
                                                                   g7261)))
                                                          (if x-cnd7356
                                                            g7261
                                                            (blame
                                                             g7259
                                                             'real?)))))
                                                g7355)))
                                           (boolean?/c
                                            (lambda (g7262 g7263 g7264)
                                              (letrec ((g7357
                                                        (letrec ((x-cnd7358
                                                                  (boolean?
                                                                   g7264)))
                                                          (if x-cnd7358
                                                            g7264
                                                            (blame
                                                             g7262
                                                             'boolean?)))))
                                                g7357)))
                                           (number?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7359
                                                        (letrec ((x-cnd7360
                                                                  (number?
                                                                   g7267)))
                                                          (if x-cnd7360
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'number?)))))
                                                g7359)))
                                           (any/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7361
                                                        (letrec ((x-cnd7362
                                                                  ((lambda (v)
                                                                     (letrec ((g7363
                                                                               #t))
                                                                       g7363))
                                                                   g7270)))
                                                          (if x-cnd7362
                                                            g7270
                                                            (blame
                                                             g7268
                                                             '(lambda (v)
                                                                #t))))))
                                                g7361)))
                                           (any?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7364
                                                        (letrec ((x-cnd7365
                                                                  ((lambda (v)
                                                                     (letrec ((g7366
                                                                               #t))
                                                                       g7366))
                                                                   g7273)))
                                                          (if x-cnd7365
                                                            g7273
                                                            (blame
                                                             g7271
                                                             '(lambda (v)
                                                                #t))))))
                                                g7364)))
                                           (cons?/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7367
                                                        (letrec ((x-cnd7368
                                                                  (pair?
                                                                   g7276)))
                                                          (if x-cnd7368
                                                            g7276
                                                            (blame
                                                             g7274
                                                             'pair?)))))
                                                g7367)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7369
                                                        (letrec ((x-cnd7370
                                                                  (pair?
                                                                   g7279)))
                                                          (if x-cnd7370
                                                            g7279
                                                            (blame
                                                             g7277
                                                             'pair?)))))
                                                g7369)))
                                           (integer?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7371
                                                        (letrec ((x-cnd7372
                                                                  (integer?
                                                                   g7282)))
                                                          (if x-cnd7372
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'integer?)))))
                                                g7371)))
                                           (symbol?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7373
                                                        (letrec ((x-cnd7374
                                                                  (symbol?
                                                                   g7285)))
                                                          (if x-cnd7374
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'symbol?)))))
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
                                            (lambda (g7286 g7287 g7288)
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
                                                                   g7288)))
                                                          (if x-cnd7390
                                                            g7288
                                                            (blame
                                                             g7286
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7389)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7393 v)) g7393)))
                                           (+
                                            ((lambda (j7291 k7292 f7293)
                                               (letrec ((g7395
                                                         (lambda (g7289 g7290)
                                                           (letrec ((g7396
                                                                     (letrec ((x7397
                                                                               (letrec ((x7399
                                                                                         (number?/c
                                                                                          j7291
                                                                                          k7292
                                                                                          g7289))
                                                                                        (x7398
                                                                                         (number?/c
                                                                                          j7291
                                                                                          k7292
                                                                                          g7290)))
                                                                                 (f7293
                                                                                  x7399
                                                                                  x7398))))
                                                                       (number?/c
                                                                        j7291
                                                                        k7292
                                                                        x7397))))
                                                             g7396))))
                                                 g7395))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7394 (orig-+ a b)))
                                                 g7394))))
                                           (-
                                            ((lambda (j7296 k7297 f7298)
                                               (letrec ((g7401
                                                         (lambda (g7294 g7295)
                                                           (letrec ((g7402
                                                                     (letrec ((x7403
                                                                               (letrec ((x7405
                                                                                         (number?/c
                                                                                          j7296
                                                                                          k7297
                                                                                          g7294))
                                                                                        (x7404
                                                                                         (number?/c
                                                                                          j7296
                                                                                          k7297
                                                                                          g7295)))
                                                                                 (f7298
                                                                                  x7405
                                                                                  x7404))))
                                                                       (number?/c
                                                                        j7296
                                                                        k7297
                                                                        x7403))))
                                                             g7402))))
                                                 g7401))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7400 (orig-- a b)))
                                                 g7400))))
                                           (*
                                            ((lambda (j7301 k7302 f7303)
                                               (letrec ((g7407
                                                         (lambda (g7299 g7300)
                                                           (letrec ((g7408
                                                                     (letrec ((x7409
                                                                               (letrec ((x7411
                                                                                         (number?/c
                                                                                          j7301
                                                                                          k7302
                                                                                          g7299))
                                                                                        (x7410
                                                                                         (number?/c
                                                                                          j7301
                                                                                          k7302
                                                                                          g7300)))
                                                                                 (f7303
                                                                                  x7411
                                                                                  x7410))))
                                                                       (number?/c
                                                                        j7301
                                                                        k7302
                                                                        x7409))))
                                                             g7408))))
                                                 g7407))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7406 (orig-* a b)))
                                                 g7406))))
                                           (/
                                            ((lambda (j7306 k7307 f7308)
                                               (letrec ((g7413
                                                         (lambda (g7304 g7305)
                                                           (letrec ((g7414
                                                                     (letrec ((x7415
                                                                               (letrec ((x7417
                                                                                         (number?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7304))
                                                                                        (x7416
                                                                                         (number?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7305)))
                                                                                 (f7308
                                                                                  x7417
                                                                                  x7416))))
                                                                       (number?/c
                                                                        j7306
                                                                        k7307
                                                                        x7415))))
                                                             g7414))))
                                                 g7413))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7412 (orig-/ a b)))
                                                 g7412))))
                                           (car
                                            ((lambda (j7310 k7311 f7312)
                                               (letrec ((g7419
                                                         (lambda (g7309)
                                                           (letrec ((g7420
                                                                     (letrec ((x7421
                                                                               (letrec ((x7422
                                                                                         (pair?/c
                                                                                          j7310
                                                                                          k7311
                                                                                          g7309)))
                                                                                 (f7312
                                                                                  x7422))))
                                                                       (any/c
                                                                        j7310
                                                                        k7311
                                                                        x7421))))
                                                             g7420))))
                                                 g7419))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7418 (orig-car p)))
                                                 g7418))))
                                           (cdr
                                            ((lambda (j7314 k7315 f7316)
                                               (letrec ((g7424
                                                         (lambda (g7313)
                                                           (letrec ((g7425
                                                                     (letrec ((x7426
                                                                               (letrec ((x7427
                                                                                         (pair?/c
                                                                                          j7314
                                                                                          k7315
                                                                                          g7313)))
                                                                                 (f7316
                                                                                  x7427))))
                                                                       (any/c
                                                                        j7314
                                                                        k7315
                                                                        x7426))))
                                                             g7425))))
                                                 g7424))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7423 (orig-cdr p)))
                                                 g7423))))
                                           (cons
                                            ((lambda (j7319 k7320 f7321)
                                               (letrec ((g7429
                                                         (lambda (g7317 g7318)
                                                           (letrec ((g7430
                                                                     (letrec ((x7431
                                                                               (letrec ((x7433
                                                                                         (any/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7317))
                                                                                        (x7432
                                                                                         (any/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7318)))
                                                                                 (f7321
                                                                                  x7433
                                                                                  x7432))))
                                                                       (pair?/c
                                                                        j7319
                                                                        k7320
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
                                            ((lambda (j7323 k7324 f7325)
                                               (letrec ((g7435
                                                         (lambda (g7322)
                                                           (letrec ((g7436
                                                                     (letrec ((x7437
                                                                               (letrec ((x7438
                                                                                         (vector?/c
                                                                                          j7323
                                                                                          k7324
                                                                                          g7322)))
                                                                                 (f7325
                                                                                  x7438))))
                                                                       (integer?/c
                                                                        j7323
                                                                        k7324
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
                                            ((lambda (j7328 k7329 f7330)
                                               (letrec ((g7440
                                                         (lambda (g7326 g7327)
                                                           (letrec ((g7441
                                                                     (letrec ((x7442
                                                                               (letrec ((x7444
                                                                                         (vector?/c
                                                                                          j7328
                                                                                          k7329
                                                                                          g7326))
                                                                                        (x7443
                                                                                         (integer?/c
                                                                                          j7328
                                                                                          k7329
                                                                                          g7327)))
                                                                                 (f7330
                                                                                  x7444
                                                                                  x7443))))
                                                                       (any/c
                                                                        j7328
                                                                        k7329
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
                                                                                (letrec ((x-cnd7549
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7549
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7550
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7551
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7551
                                                                                                  (letrec ((x-cnd7552
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7552
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7553
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7554
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7554
                                                                                                                (letrec ((x-cnd7555
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7555
                                                                                                                    (letrec ((x-cnd7556
                                                                                                                              (letrec ((x7558
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7557
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7558
                                                                                                                                 x7557))))
                                                                                                                      (if x-cnd7556
                                                                                                                        (letrec ((x7560
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7559
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7560
                                                                                                                           x7559))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7561
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7562
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7562
                                                                                                                    (letrec ((x-cnd7563
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7563
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7564
                                                                                                                                    (letrec ((x-cnd7565
                                                                                                                                              (letrec ((x7566
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7566
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7565
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7567
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7568
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7569
                                                                                                                                                                                      (letrec ((x7571
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7570
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7571
                                                                                                                                                                                         x7570))))
                                                                                                                                                                              (if x-cnd7569
                                                                                                                                                                                (letrec ((x7572
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7572))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7568))))
                                                                                                                                                      g7567))))
                                                                                                                                          (letrec ((g7573
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7573))
                                                                                                                                        #f))))
                                                                                                                            g7564))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7561)))))
                                                                                        g7553)))))
                                                                          g7550)))))
                                                            g7548))))
                                                g7547)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7574
                                                        (letrec ((x7575
                                                                  (letrec ((x7576
                                                                            (letrec ((x7577
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7577))))
                                                                    (car
                                                                     x7576))))
                                                          (cdr x7575))))
                                                g7574)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7578
                                                        (letrec ((x7579
                                                                  (letrec ((x7580
                                                                            (letrec ((x7581
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7581))))
                                                                    (car
                                                                     x7580))))
                                                          (car x7579))))
                                                g7578)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7582 (eq? x y)))
                                                g7582)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7583
                                                        (letrec ((x7585
                                                                  (number? x)))
                                                          (assert x7585)))
                                                       (g7584
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7586
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7587
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7587)))))
                                                            g7586))))
                                                g7584)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7588
                                                        (letrec ((x7591
                                                                  (string?
                                                                   filename)))
                                                          (assert x7591)))
                                                       (g7589
                                                        (letrec ((x7592
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7592)))
                                                       (g7590
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7593
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7594 res))
                                                            g7594))))
                                                g7590)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7595 (cons x '())))
                                                g7595)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7596
                                                        (letrec ((x7599
                                                                  (char? c1)))
                                                          (assert x7599)))
                                                       (g7597
                                                        (letrec ((x7600
                                                                  (char? c2)))
                                                          (assert x7600)))
                                                       (g7598
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7601
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7601))))
                                                g7598)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7602
                                                        (letrec ((x7603
                                                                  (letrec ((x7604
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7604))))
                                                          (cdr x7603))))
                                                g7602)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7605
                                                        (letrec ((x7606
                                                                  (letrec ((x7607
                                                                            (letrec ((x7608
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7608))))
                                                                    (car
                                                                     x7607))))
                                                          (cdr x7606))))
                                                g7605)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7609
                                                        (letrec ((x7610
                                                                  (letrec ((x7611
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7611))))
                                                          (car x7610))))
                                                g7609)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7612
                                                        (letrec ((x7613
                                                                  (letrec ((x7614
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7614))))
                                                          (car x7613))))
                                                g7612)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7615
                                                        (letrec ((x7618
                                                                  (char? c1)))
                                                          (assert x7618)))
                                                       (g7616
                                                        (letrec ((x7619
                                                                  (char? c2)))
                                                          (assert x7619)))
                                                       (g7617
                                                        (letrec ((x7620
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7620))))
                                                g7617)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7621
                                                        (letrec ((x7622
                                                                  (letrec ((x7623
                                                                            (letrec ((x7624
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7624))))
                                                                    (car
                                                                     x7623))))
                                                          (car x7622))))
                                                g7621)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7625
                                                        (letrec ((x7627
                                                                  (number? x)))
                                                          (assert x7627)))
                                                       (g7626 (< x 0)))
                                                g7626)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7628 (memq e l)))
                                                g7628)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7629
                                                        (letrec ((x7630
                                                                  (letrec ((x7631
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7631))))
                                                          (car x7630))))
                                                g7629)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7632 '())) g7632)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7633
                                                        (letrec ((x7635
                                                                  (list? l)))
                                                          (assert x7635)))
                                                       (g7634
                                                        (letrec ((x-cnd7636
                                                                  (null? l)))
                                                          (if x-cnd7636
                                                            '()
                                                            (letrec ((x7639
                                                                      (letrec ((x7640
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7640)))
                                                                     (x7637
                                                                      (letrec ((x7638
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7638))))
                                                              (append
                                                               x7639
                                                               x7637))))))
                                                g7634)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7641
                                                        (letrec ((x7642
                                                                  (letrec ((x7643
                                                                            (letrec ((x7644
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7644))))
                                                                    (car
                                                                     x7643))))
                                                          (car x7642))))
                                                g7641)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7645
                                                        (letrec ((x7646
                                                                  (letrec ((x7647
                                                                            (letrec ((x7648
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7648))))
                                                                    (cdr
                                                                     x7647))))
                                                          (cdr x7646))))
                                                g7645)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7649
                                                        (letrec ((x7651
                                                                  (number? x)))
                                                          (assert x7651)))
                                                       (g7650
                                                        (letrec ((x7652
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7652))))
                                                g7650)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7653
                                                        (letrec ((x7654
                                                                  (letrec ((x7655
                                                                            (letrec ((x7656
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7656))))
                                                                    (car
                                                                     x7655))))
                                                          (car x7654))))
                                                g7653)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7657
                                                        (letrec ((x7660
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7660)))
                                                       (g7658
                                                        (letrec ((x7661
                                                                  (list?
                                                                   args)))
                                                          (assert x7661)))
                                                       (g7659
                                                        (letrec ((x-cnd7662
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7662
                                                            (letrec ((g7663
                                                                      (proc)))
                                                              g7663)
                                                            (letrec ((x-cnd7664
                                                                      (letrec ((x7665
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7665))))
                                                              (if x-cnd7664
                                                                (letrec ((g7666
                                                                          (letrec ((x7667
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7667))))
                                                                  g7666)
                                                                (letrec ((x-cnd7668
                                                                          (letrec ((x7669
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7669))))
                                                                  (if x-cnd7668
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
                                                                    (letrec ((x-cnd7673
                                                                              (letrec ((x7674
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7674))))
                                                                      (if x-cnd7673
                                                                        (letrec ((g7675
                                                                                  (letrec ((x7678
                                                                                            (car
                                                                                             args))
                                                                                           (x7677
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7676
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7678
                                                                                     x7677
                                                                                     x7676))))
                                                                          g7675)
                                                                        (letrec ((x-cnd7679
                                                                                  (letrec ((x7680
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7680))))
                                                                          (if x-cnd7679
                                                                            (letrec ((g7681
                                                                                      (letrec ((x7685
                                                                                                (car
                                                                                                 args))
                                                                                               (x7684
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7683
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7682
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7685
                                                                                         x7684
                                                                                         x7683
                                                                                         x7682))))
                                                                              g7681)
                                                                            (letrec ((x-cnd7686
                                                                                      (letrec ((x7687
                                                                                                (letrec ((x7688
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7688))))
                                                                                        (null?
                                                                                         x7687))))
                                                                              (if x-cnd7686
                                                                                (letrec ((g7689
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
                                                                                                     args))
                                                                                                   (x7690
                                                                                                    (letrec ((x7691
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7691))))
                                                                                            (proc
                                                                                             x7695
                                                                                             x7694
                                                                                             x7693
                                                                                             x7692
                                                                                             x7690))))
                                                                                  g7689)
                                                                                (letrec ((x-cnd7696
                                                                                          (letrec ((x7697
                                                                                                    (letrec ((x7698
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7698))))
                                                                                            (null?
                                                                                             x7697))))
                                                                                  (if x-cnd7696
                                                                                    (letrec ((g7699
                                                                                              (letrec ((x7707
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7706
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7705
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7704
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7702
                                                                                                        (letrec ((x7703
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7703)))
                                                                                                       (x7700
                                                                                                        (letrec ((x7701
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7701))))
                                                                                                (proc
                                                                                                 x7707
                                                                                                 x7706
                                                                                                 x7705
                                                                                                 x7704
                                                                                                 x7702
                                                                                                 x7700))))
                                                                                      g7699)
                                                                                    (letrec ((x-cnd7708
                                                                                              (letrec ((x7709
                                                                                                        (letrec ((x7710
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7710))))
                                                                                                (null?
                                                                                                 x7709))))
                                                                                      (if x-cnd7708
                                                                                        (letrec ((g7711
                                                                                                  (letrec ((x7721
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7720
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7719
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7718
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7716
                                                                                                            (letrec ((x7717
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7717)))
                                                                                                           (x7714
                                                                                                            (letrec ((x7715
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7715)))
                                                                                                           (x7712
                                                                                                            (letrec ((x7713
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7713))))
                                                                                                    (proc
                                                                                                     x7721
                                                                                                     x7720
                                                                                                     x7719
                                                                                                     x7718
                                                                                                     x7716
                                                                                                     x7714
                                                                                                     x7712))))
                                                                                          g7711)
                                                                                        (letrec ((g7722
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7722)))))))))))))))))))
                                                g7659)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7723
                                                        (letrec ((x7725
                                                                  (list? l)))
                                                          (assert x7725)))
                                                       (g7724
                                                        (letrec ((x-cnd7726
                                                                  (null? l)))
                                                          (if x-cnd7726
                                                            #f
                                                            (letrec ((x-cnd7727
                                                                      (letrec ((x7728
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7728
                                                                         e))))
                                                              (if x-cnd7727
                                                                l
                                                                (letrec ((x7729
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7729))))))))
                                                g7724)))
                                           (cddddr
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
                                                          (cdr x7731))))
                                                g7730)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7734
                                                        (letrec ((x7735
                                                                  (letrec ((x7736
                                                                            (letrec ((x7737
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7737))))
                                                                    (cdr
                                                                     x7736))))
                                                          (car x7735))))
                                                g7734)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7738 (random 42)))
                                                g7738)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7739
                                                        (letrec ((x7741
                                                                  (number? x)))
                                                          (assert x7741)))
                                                       (g7740 (= x 0)))
                                                g7740)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7742
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7743
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7743))))
                                                g7742)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7744
                                                        (letrec ((x7745
                                                                  (cdr x)))
                                                          (car x7745))))
                                                g7744)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7746
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd7747
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7747
                                                                      (letrec ((x7748
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7748))
                                                                      #f))))
                                                          (letrec ((g7749
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g7749))))
                                                g7746)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7750
                                                        (letrec ((x7751
                                                                  (letrec ((x7752
                                                                            (letrec ((x7753
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7753))))
                                                                    (cdr
                                                                     x7752))))
                                                          (cdr x7751))))
                                                g7750)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7754
                                                        (letrec ((x-cnd7755
                                                                  (letrec ((x7756
                                                                            #\0))
                                                                    (char<=?
                                                                     x7756
                                                                     c))))
                                                          (if x-cnd7755
                                                            (letrec ((x7757
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7757))
                                                            #f))))
                                                g7754)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7758
                                                        (letrec ((x7760
                                                                  (list? l)))
                                                          (assert x7760)))
                                                       (g7759
                                                        (letrec ((x-cnd7761
                                                                  (null? l)))
                                                          (if x-cnd7761
                                                            #f
                                                            (letrec ((x-cnd7762
                                                                      (letrec ((x7763
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7763
                                                                         k))))
                                                              (if x-cnd7762
                                                                (car l)
                                                                (letrec ((x7764
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7764))))))))
                                                g7759)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7765 (if x #f #t)))
                                                g7765)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7766 (append l1 l2)))
                                                g7766)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7767
                                                        (letrec ((x7769
                                                                  (list? l)))
                                                          (assert x7769)))
                                                       (g7768
                                                        (letrec ((x-cnd7770
                                                                  (null? l)))
                                                          (if x-cnd7770
                                                            #f
                                                            (letrec ((x-cnd7771
                                                                      (letrec ((x7772
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7772
                                                                         e))))
                                                              (if x-cnd7771
                                                                l
                                                                (letrec ((x7773
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7773))))))))
                                                g7768)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7774
                                                        (letrec ((x7775
                                                                  (letrec ((x7776
                                                                            (letrec ((x7777
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7777))))
                                                                    (cdr
                                                                     x7776))))
                                                          (car x7775))))
                                                g7774)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7778
                                                        (letrec ((x7780
                                                                  (list? l)))
                                                          (assert x7780)))
                                                       (g7779
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7781
                                                                              (letrec ((x-cnd7782
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7782
                                                                                  0
                                                                                  (letrec ((x7783
                                                                                            (letrec ((x7784
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7784))))
                                                                                    (+
                                                                                     1
                                                                                     x7783))))))
                                                                      g7781))))
                                                          (letrec ((g7785
                                                                    (rec l)))
                                                            g7785))))
                                                g7779)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7786
                                                        (letrec ((x7789
                                                                  (char? c1)))
                                                          (assert x7789)))
                                                       (g7787
                                                        (letrec ((x7790
                                                                  (char? c2)))
                                                          (assert x7790)))
                                                       (g7788
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7791
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7791))))
                                                g7788)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7792
                                                        (letrec ((x7793
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7793))))
                                                g7792)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7794
                                                        (letrec ((x7795
                                                                  (letrec ((x7796
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7796))))
                                                          (cdr x7795))))
                                                g7794)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7797
                                                        (letrec ((x7799
                                                                  (list? l)))
                                                          (assert x7799)))
                                                       (g7798
                                                        (letrec ((x-cnd7800
                                                                  (null? l)))
                                                          (if x-cnd7800
                                                            #f
                                                            (letrec ((x-cnd7801
                                                                      (letrec ((x7802
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7802
                                                                         k))))
                                                              (if x-cnd7801
                                                                (car l)
                                                                (letrec ((x7803
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7803))))))))
                                                g7798)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7804
                                                        (letrec ((x7805
                                                                  (car x)))
                                                          (car x7805))))
                                                g7804)))
                                           (char>?
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
                                                        (letrec ((x7811
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7811))))
                                                g7808)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7812
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7813
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7813))))
                                                g7812)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7814
                                                        (letrec ((x7817
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7817)))
                                                       (g7815
                                                        (letrec ((x7818
                                                                  (list? l)))
                                                          (assert x7818)))
                                                       (g7816
                                                        (letrec ((x-cnd7819
                                                                  (null? l)))
                                                          (if x-cnd7819
                                                            #t
                                                            (letrec ((x-cnd7820
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7820
                                                                (letrec ((g7821
                                                                          (letrec ((x7823
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7823)))
                                                                         (g7822
                                                                          (letrec ((x7824
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7824))))
                                                                  g7822)
                                                                '()))))))
                                                g7816)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7825
                                                        (letrec ((x7827
                                                                  (number? x)))
                                                          (assert x7827)))
                                                       (g7826
                                                        (letrec ((x-cnd7828
                                                                  (< x 0)))
                                                          (if x-cnd7828
                                                            (- 0 x)
                                                            x))))
                                                g7826)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7829
                                                        (letrec ((x7832
                                                                  (char? c1)))
                                                          (assert x7832)))
                                                       (g7830
                                                        (letrec ((x7833
                                                                  (char? c2)))
                                                          (assert x7833)))
                                                       (g7831
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7834
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7834))))
                                                g7831)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7835
                                                        (letrec ((x7836
                                                                  (letrec ((x7837
                                                                            (letrec ((x7838
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7838))))
                                                                    (cdr
                                                                     x7837))))
                                                          (car x7836))))
                                                g7835)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7839 #f)) g7839)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7840
                                                        (letrec ((x7842
                                                                  (letrec ((x7843
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7843)))
                                                                 (x7841
                                                                  (gcd m n)))
                                                          (/ x7842 x7841))))
                                                g7840)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7844
                                                        (letrec ((x7846
                                                                  (number? x)))
                                                          (assert x7846)))
                                                       (g7845
                                                        (letrec ((x7847
                                                                  (<= x y)))
                                                          (not x7847))))
                                                g7845)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7848
                                                        (letrec ((x7852
                                                                  (list? l)))
                                                          (assert x7852)))
                                                       (g7849
                                                        (letrec ((x7853
                                                                  (number?
                                                                   index)))
                                                          (assert x7853)))
                                                       (g7850
                                                        (letrec ((x7854
                                                                  (letrec ((x7855
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7855))))
                                                          (assert x7854)))
                                                       (g7851
                                                        (letrec ((x-cnd7856
                                                                  (= index 0)))
                                                          (if x-cnd7856
                                                            (car l)
                                                            (letrec ((x7858
                                                                      (cdr l))
                                                                     (x7857
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7858
                                                               x7857))))))
                                                g7851)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7859
                                                        (letrec ((x-cnd7860
                                                                  (= b 0)))
                                                          (if x-cnd7860
                                                            a
                                                            (letrec ((x7861
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7861))))))
                                                g7859)))
                                           (recursive-div2
                                            (lambda (l)
                                              (letrec ((g7862
                                                        (letrec ((x-cnd7863
                                                                  (empty? l)))
                                                          (if x-cnd7863
                                                            empty
                                                            (letrec ((x7867
                                                                      (car l))
                                                                     (x7864
                                                                      (letrec ((x7865
                                                                                (letrec ((x7866
                                                                                          (cdr
                                                                                           l)))
                                                                                  (cdr
                                                                                   x7866))))
                                                                        (recursive-div2
                                                                         x7865))))
                                                              (cons
                                                               x7867
                                                               x7864))))))
                                                g7862)))
                                           (even-list/c
                                            (lambda (g7331 g7332 g7333)
                                              (letrec ((g7868
                                                        (letrec ((x-cnd7869
                                                                  ((lambda ()
                                                                     (letrec ((g7870
                                                                               (letrec ((x7871
                                                                                         (letrec ((x7872
                                                                                                   (cons/c
                                                                                                    any/c
                                                                                                    even-list/c)))
                                                                                           (cons/c
                                                                                            any/c
                                                                                            x7872))))
                                                                                 (or/c
                                                                                  null?
                                                                                  x7871))))
                                                                       g7870))
                                                                   g7333)))
                                                          (if x-cnd7869
                                                            g7333
                                                            (blame
                                                             g7331
                                                             '(lambda ()
                                                                (or/c
                                                                 null?
                                                                 (cons/c
                                                                  any/c
                                                                  (cons/c
                                                                   any/c
                                                                   even-list/c)))))))))
                                                g7868))))
                                    (letrec ((g7873
                                              (letrec ((x7875
                                                        ((lambda (j7335
                                                                  k7336
                                                                  f7337)
                                                           (letrec ((g7876
                                                                     (lambda (g7334)
                                                                       (letrec ((g7877
                                                                                 (letrec ((x7881
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7878
                                                                                           (letrec ((x7879
                                                                                                     (letrec ((x7880
                                                                                                               (even-list/c)))
                                                                                                       (x7880
                                                                                                        j7335
                                                                                                        k7336
                                                                                                        g7334))))
                                                                                             (f7337
                                                                                              x7879))))
                                                                                   (x7881
                                                                                    j7335
                                                                                    k7336
                                                                                    x7878))))
                                                                         g7877))))
                                                             g7876))
                                                         'module
                                                         'importer
                                                         recursive-div2))
                                                       (x7874 (input)))
                                                (x7875 x7874))))
                                      g7873))))
                          g7351))))
              g7349)))
    g7348))
