(letrec ((any? (lambda (v) (letrec ((g7349 #t)) g7349)))
         (meta (lambda (v) (letrec ((g7350 v)) g7350)))
         (member
          (lambda (v lst)
            (letrec ((g7351
                      (letrec ((g7352
                                (letrec ((x-e7353 lst))
                                  (match
                                   x-e7353
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7354 (eq? v v1)))
                                       (if x-cnd7354 #t (member v vs)))))))))
                        g7352)))
              g7351)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7355 (lambda (v) (letrec ((g7356 v)) g7356)))) g7355)))
         (nonzero?
          (lambda (v)
            (letrec ((g7357 (letrec ((x7358 (= v 0))) (not x7358)))) g7357))))
  (letrec ((g7359
            (letrec ((g7360
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7361 '())
                                 (g7362
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7363
                                                        (lambda (k j lst)
                                                          (letrec ((g7364
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7365
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7365))
                                                                     lst)))
                                                            g7364))))
                                                g7363)))
                                           (real?/c
                                            (lambda (g7259 g7260 g7261)
                                              (letrec ((g7366
                                                        (letrec ((x-cnd7367
                                                                  (real?
                                                                   g7261)))
                                                          (if x-cnd7367
                                                            g7261
                                                            (blame
                                                             g7259
                                                             'real?)))))
                                                g7366)))
                                           (boolean?/c
                                            (lambda (g7262 g7263 g7264)
                                              (letrec ((g7368
                                                        (letrec ((x-cnd7369
                                                                  (boolean?
                                                                   g7264)))
                                                          (if x-cnd7369
                                                            g7264
                                                            (blame
                                                             g7262
                                                             'boolean?)))))
                                                g7368)))
                                           (number?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7370
                                                        (letrec ((x-cnd7371
                                                                  (number?
                                                                   g7267)))
                                                          (if x-cnd7371
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'number?)))))
                                                g7370)))
                                           (any/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7372
                                                        (letrec ((x-cnd7373
                                                                  ((lambda (v)
                                                                     (letrec ((g7374
                                                                               #t))
                                                                       g7374))
                                                                   g7270)))
                                                          (if x-cnd7373
                                                            g7270
                                                            (blame
                                                             g7268
                                                             '(lambda (v)
                                                                #t))))))
                                                g7372)))
                                           (any?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7375
                                                        (letrec ((x-cnd7376
                                                                  ((lambda (v)
                                                                     (letrec ((g7377
                                                                               #t))
                                                                       g7377))
                                                                   g7273)))
                                                          (if x-cnd7376
                                                            g7273
                                                            (blame
                                                             g7271
                                                             '(lambda (v)
                                                                #t))))))
                                                g7375)))
                                           (cons?/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7378
                                                        (letrec ((x-cnd7379
                                                                  (pair?
                                                                   g7276)))
                                                          (if x-cnd7379
                                                            g7276
                                                            (blame
                                                             g7274
                                                             'pair?)))))
                                                g7378)))
                                           (pair?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7380
                                                        (letrec ((x-cnd7381
                                                                  (pair?
                                                                   g7279)))
                                                          (if x-cnd7381
                                                            g7279
                                                            (blame
                                                             g7277
                                                             'pair?)))))
                                                g7380)))
                                           (integer?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7382
                                                        (letrec ((x-cnd7383
                                                                  (integer?
                                                                   g7282)))
                                                          (if x-cnd7383
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'integer?)))))
                                                g7382)))
                                           (symbol?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7384
                                                        (letrec ((x-cnd7385
                                                                  (symbol?
                                                                   g7285)))
                                                          (if x-cnd7385
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'symbol?)))))
                                                g7384)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7386
                                                        (lambda (k j v)
                                                          (letrec ((g7387
                                                                    (letrec ((x-cnd7388
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7388
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7387))))
                                                g7386)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7389
                                                        (lambda (k j v)
                                                          (letrec ((g7390
                                                                    (letrec ((x-cnd7391
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7391
                                                                        '()
                                                                        (letrec ((x7395
                                                                                  (letrec ((x7396
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7396)))
                                                                                 (x7392
                                                                                  (letrec ((x7394
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7393
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7394
                                                                                     k
                                                                                     j
                                                                                     x7393))))
                                                                          (orig-cons
                                                                           x7395
                                                                           x7392))))))
                                                            g7390))))
                                                g7389)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7397 #t)) g7397)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7398
                                                        (letrec ((x7399
                                                                  (= v 0)))
                                                          (not x7399))))
                                                g7398)))
                                           (nonzero?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7400
                                                        (letrec ((x-cnd7401
                                                                  ((lambda (v)
                                                                     (letrec ((g7402
                                                                               (letrec ((x7403
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7403))))
                                                                       g7402))
                                                                   g7288)))
                                                          (if x-cnd7401
                                                            g7288
                                                            (blame
                                                             g7286
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7400)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7404 v)) g7404)))
                                           (+
                                            ((lambda (j7291 k7292 f7293)
                                               (letrec ((g7406
                                                         (lambda (g7289 g7290)
                                                           (letrec ((g7407
                                                                     (letrec ((x7408
                                                                               (letrec ((x7410
                                                                                         (number?/c
                                                                                          j7291
                                                                                          k7292
                                                                                          g7289))
                                                                                        (x7409
                                                                                         (number?/c
                                                                                          j7291
                                                                                          k7292
                                                                                          g7290)))
                                                                                 (f7293
                                                                                  x7410
                                                                                  x7409))))
                                                                       (number?/c
                                                                        j7291
                                                                        k7292
                                                                        x7408))))
                                                             g7407))))
                                                 g7406))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7405 (orig-+ a b)))
                                                 g7405))))
                                           (-
                                            ((lambda (j7296 k7297 f7298)
                                               (letrec ((g7412
                                                         (lambda (g7294 g7295)
                                                           (letrec ((g7413
                                                                     (letrec ((x7414
                                                                               (letrec ((x7416
                                                                                         (number?/c
                                                                                          j7296
                                                                                          k7297
                                                                                          g7294))
                                                                                        (x7415
                                                                                         (number?/c
                                                                                          j7296
                                                                                          k7297
                                                                                          g7295)))
                                                                                 (f7298
                                                                                  x7416
                                                                                  x7415))))
                                                                       (number?/c
                                                                        j7296
                                                                        k7297
                                                                        x7414))))
                                                             g7413))))
                                                 g7412))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7411 (orig-- a b)))
                                                 g7411))))
                                           (*
                                            ((lambda (j7301 k7302 f7303)
                                               (letrec ((g7418
                                                         (lambda (g7299 g7300)
                                                           (letrec ((g7419
                                                                     (letrec ((x7420
                                                                               (letrec ((x7422
                                                                                         (number?/c
                                                                                          j7301
                                                                                          k7302
                                                                                          g7299))
                                                                                        (x7421
                                                                                         (number?/c
                                                                                          j7301
                                                                                          k7302
                                                                                          g7300)))
                                                                                 (f7303
                                                                                  x7422
                                                                                  x7421))))
                                                                       (number?/c
                                                                        j7301
                                                                        k7302
                                                                        x7420))))
                                                             g7419))))
                                                 g7418))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7417 (orig-* a b)))
                                                 g7417))))
                                           (/
                                            ((lambda (j7306 k7307 f7308)
                                               (letrec ((g7424
                                                         (lambda (g7304 g7305)
                                                           (letrec ((g7425
                                                                     (letrec ((x7426
                                                                               (letrec ((x7428
                                                                                         (number?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7304))
                                                                                        (x7427
                                                                                         (number?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7305)))
                                                                                 (f7308
                                                                                  x7428
                                                                                  x7427))))
                                                                       (number?/c
                                                                        j7306
                                                                        k7307
                                                                        x7426))))
                                                             g7425))))
                                                 g7424))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7423 (orig-/ a b)))
                                                 g7423))))
                                           (car
                                            ((lambda (j7310 k7311 f7312)
                                               (letrec ((g7430
                                                         (lambda (g7309)
                                                           (letrec ((g7431
                                                                     (letrec ((x7432
                                                                               (letrec ((x7433
                                                                                         (pair?/c
                                                                                          j7310
                                                                                          k7311
                                                                                          g7309)))
                                                                                 (f7312
                                                                                  x7433))))
                                                                       (any/c
                                                                        j7310
                                                                        k7311
                                                                        x7432))))
                                                             g7431))))
                                                 g7430))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7429 (orig-car p)))
                                                 g7429))))
                                           (cdr
                                            ((lambda (j7314 k7315 f7316)
                                               (letrec ((g7435
                                                         (lambda (g7313)
                                                           (letrec ((g7436
                                                                     (letrec ((x7437
                                                                               (letrec ((x7438
                                                                                         (pair?/c
                                                                                          j7314
                                                                                          k7315
                                                                                          g7313)))
                                                                                 (f7316
                                                                                  x7438))))
                                                                       (any/c
                                                                        j7314
                                                                        k7315
                                                                        x7437))))
                                                             g7436))))
                                                 g7435))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7434 (orig-cdr p)))
                                                 g7434))))
                                           (cons
                                            ((lambda (j7319 k7320 f7321)
                                               (letrec ((g7440
                                                         (lambda (g7317 g7318)
                                                           (letrec ((g7441
                                                                     (letrec ((x7442
                                                                               (letrec ((x7444
                                                                                         (any/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7317))
                                                                                        (x7443
                                                                                         (any/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7318)))
                                                                                 (f7321
                                                                                  x7444
                                                                                  x7443))))
                                                                       (pair?/c
                                                                        j7319
                                                                        k7320
                                                                        x7442))))
                                                             g7441))))
                                                 g7440))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7439
                                                         (orig-cons a b)))
                                                 g7439))))
                                           (vector-ref
                                            ((lambda (j7323 k7324 f7325)
                                               (letrec ((g7446
                                                         (lambda (g7322)
                                                           (letrec ((g7447
                                                                     (letrec ((x7448
                                                                               (letrec ((x7449
                                                                                         (vector?/c
                                                                                          j7323
                                                                                          k7324
                                                                                          g7322)))
                                                                                 (f7325
                                                                                  x7449))))
                                                                       (integer?/c
                                                                        j7323
                                                                        k7324
                                                                        x7448))))
                                                             g7447))))
                                                 g7446))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7445
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7445))))
                                           (vector-set!
                                            ((lambda (j7328 k7329 f7330)
                                               (letrec ((g7451
                                                         (lambda (g7326 g7327)
                                                           (letrec ((g7452
                                                                     (letrec ((x7453
                                                                               (letrec ((x7455
                                                                                         (vector?/c
                                                                                          j7328
                                                                                          k7329
                                                                                          g7326))
                                                                                        (x7454
                                                                                         (integer?/c
                                                                                          j7328
                                                                                          k7329
                                                                                          g7327)))
                                                                                 (f7330
                                                                                  x7455
                                                                                  x7454))))
                                                                       (any/c
                                                                        j7328
                                                                        k7329
                                                                        x7453))))
                                                             g7452))))
                                                 g7451))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7450
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7450))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7456
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7456)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7457
                                                        (letrec ((x7458
                                                                  (letrec ((x7459
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7459))))
                                                          (cdr x7458))))
                                                g7457)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7460
                                                        (letrec ((x7463
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7463)))
                                                       (g7461
                                                        (letrec ((x7464
                                                                  (list? l)))
                                                          (assert x7464)))
                                                       (g7462
                                                        (letrec ((x-cnd7465
                                                                  (null? l)))
                                                          (if x-cnd7465
                                                            '()
                                                            (letrec ((x7468
                                                                      (letrec ((x7469
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7469)))
                                                                     (x7466
                                                                      (letrec ((x7467
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7467))))
                                                              (cons
                                                               x7468
                                                               x7466))))))
                                                g7462)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7470
                                                        (letrec ((x7471
                                                                  (car x)))
                                                          (cdr x7471))))
                                                g7470)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7472
                                                        (letrec ((x7473
                                                                  (letrec ((x7474
                                                                            (letrec ((x7475
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7475))))
                                                                    (cdr
                                                                     x7474))))
                                                          (car x7473))))
                                                g7472)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7476
                                                        (letrec ((x7477
                                                                  (letrec ((x7478
                                                                            (letrec ((x7479
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7479))))
                                                                    (car
                                                                     x7478))))
                                                          (cdr x7477))))
                                                g7476)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7480
                                                        (letrec ((x7483
                                                                  (string?
                                                                   filename)))
                                                          (assert x7483)))
                                                       (g7481
                                                        (letrec ((x7484
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7484)))
                                                       (g7482
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7485
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7486 res))
                                                            g7486))))
                                                g7482)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7487
                                                        (letrec ((x7488
                                                                  (letrec ((x7489
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7489))))
                                                          (car x7488))))
                                                g7487)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7490
                                                        (letrec ((x7491
                                                                  (letrec ((x7492
                                                                            (letrec ((x7493
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7493))))
                                                                    (car
                                                                     x7492))))
                                                          (cdr x7491))))
                                                g7490)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7494
                                                        (letrec ((x7496
                                                                  (list? l)))
                                                          (assert x7496)))
                                                       (g7495
                                                        (letrec ((x-cnd7497
                                                                  (null? l)))
                                                          (if x-cnd7497
                                                            #f
                                                            (letrec ((x-cnd7498
                                                                      (letrec ((x7499
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7499
                                                                         k))))
                                                              (if x-cnd7498
                                                                (car l)
                                                                (letrec ((x7500
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7500))))))))
                                                g7495)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7501
                                                        (letrec ((x7502
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7502))))
                                                g7501)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7503
                                                        (letrec ((x7505
                                                                  (list? l)))
                                                          (assert x7505)))
                                                       (g7504
                                                        (letrec ((x-cnd7506
                                                                  (null? l)))
                                                          (if x-cnd7506
                                                            ""
                                                            (letrec ((x7509
                                                                      (letrec ((x7510
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7510)))
                                                                     (x7507
                                                                      (letrec ((x7508
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7508))))
                                                              (string-append
                                                               x7509
                                                               x7507))))))
                                                g7504)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7511
                                                        (letrec ((x7514
                                                                  (char? c1)))
                                                          (assert x7514)))
                                                       (g7512
                                                        (letrec ((x7515
                                                                  (char? c2)))
                                                          (assert x7515)))
                                                       (g7513
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7516
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7516))))
                                                g7513)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7517
                                                        (letrec ((x7518
                                                                  (letrec ((x7519
                                                                            (letrec ((x7520
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7520))))
                                                                    (cdr
                                                                     x7519))))
                                                          (cdr x7518))))
                                                g7517)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7521
                                                        (letrec ((x7524
                                                                  (list? l)))
                                                          (assert x7524)))
                                                       (g7522
                                                        (letrec ((x7525
                                                                  (number?)))
                                                          (assert x7525)))
                                                       (g7523
                                                        (letrec ((x-cnd7526
                                                                  (zero? k)))
                                                          (if x-cnd7526
                                                            x
                                                            (letrec ((x7528
                                                                      (cdr x))
                                                                     (x7527
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7528
                                                               x7527))))))
                                                g7523)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7529 '())) g7529)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7530
                                                        (letrec ((x-cnd7531
                                                                  (letrec ((x7532
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7532))))
                                                          (if x-cnd7531
                                                            (letrec ((x7533
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7533))
                                                            #f))))
                                                g7530)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7534
                                                        (letrec ((x7536
                                                                  (number? x)))
                                                          (assert x7536)))
                                                       (g7535
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7537
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7538
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7538)))))
                                                            g7537))))
                                                g7535)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7539
                                                        (letrec ((val7244
                                                                  (letrec ((x7540
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7540
                                                                     9))))
                                                          (letrec ((g7541
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7542
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7542
                                                                                   10))))
                                                                        (letrec ((g7543
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7544
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7544
                                                                                       32)))))
                                                                          g7543)))))
                                                            g7541))))
                                                g7539)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7545
                                                        (letrec ((x7546
                                                                  (letrec ((x7547
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7547))))
                                                          (cdr x7546))))
                                                g7545)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7548
                                                        (letrec ((x7550
                                                                  (number? x)))
                                                          (assert x7550)))
                                                       (g7549 (> x 0)))
                                                g7549)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7551 #f)) g7551)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7552
                                                        (letrec ((x7553
                                                                  (cdr x)))
                                                          (cdr x7553))))
                                                g7552)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7554
                                                        (letrec ((x7556
                                                                  (number? x)))
                                                          (assert x7556)))
                                                       (g7555
                                                        (letrec ((x-cnd7557
                                                                  (< x 0)))
                                                          (if x-cnd7557
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7555)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7558
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7559
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7560
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7560
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7561
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7562
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7562
                                                                                                  (letrec ((x-cnd7563
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7563
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7564
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7565
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7565
                                                                                                                (letrec ((x-cnd7566
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7566
                                                                                                                    (letrec ((x-cnd7567
                                                                                                                              (letrec ((x7569
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7568
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7569
                                                                                                                                 x7568))))
                                                                                                                      (if x-cnd7567
                                                                                                                        (letrec ((x7571
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7570
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7571
                                                                                                                           x7570))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7572
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7573
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7573
                                                                                                                    (letrec ((x-cnd7574
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7574
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7575
                                                                                                                                    (letrec ((x-cnd7576
                                                                                                                                              (letrec ((x7577
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7577
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7576
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7578
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7579
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7580
                                                                                                                                                                                      (letrec ((x7582
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7581
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7582
                                                                                                                                                                                         x7581))))
                                                                                                                                                                              (if x-cnd7580
                                                                                                                                                                                (letrec ((x7583
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7583))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7579))))
                                                                                                                                                      g7578))))
                                                                                                                                          (letrec ((g7584
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7584))
                                                                                                                                        #f))))
                                                                                                                            g7575))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7572)))))
                                                                                        g7564)))))
                                                                          g7561)))))
                                                            g7559))))
                                                g7558)))
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
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7597
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7598
                                                                                  (if val7252
                                                                                    val7252
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
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7612
                                                                    (if val7253
                                                                      val7253
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
                                                        (letrec ((x-cnd7673
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7673
                                                            (letrec ((g7674
                                                                      (proc)))
                                                              g7674)
                                                            (letrec ((x-cnd7675
                                                                      (letrec ((x7676
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7676))))
                                                              (if x-cnd7675
                                                                (letrec ((g7677
                                                                          (letrec ((x7678
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7678))))
                                                                  g7677)
                                                                (letrec ((x-cnd7679
                                                                          (letrec ((x7680
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7680))))
                                                                  (if x-cnd7679
                                                                    (letrec ((g7681
                                                                              (letrec ((x7683
                                                                                        (car
                                                                                         args))
                                                                                       (x7682
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7683
                                                                                 x7682))))
                                                                      g7681)
                                                                    (letrec ((x-cnd7684
                                                                              (letrec ((x7685
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7685))))
                                                                      (if x-cnd7684
                                                                        (letrec ((g7686
                                                                                  (letrec ((x7689
                                                                                            (car
                                                                                             args))
                                                                                           (x7688
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7687
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7689
                                                                                     x7688
                                                                                     x7687))))
                                                                          g7686)
                                                                        (letrec ((x-cnd7690
                                                                                  (letrec ((x7691
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7691))))
                                                                          (if x-cnd7690
                                                                            (letrec ((g7692
                                                                                      (letrec ((x7696
                                                                                                (car
                                                                                                 args))
                                                                                               (x7695
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7694
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7693
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7696
                                                                                         x7695
                                                                                         x7694
                                                                                         x7693))))
                                                                              g7692)
                                                                            (letrec ((x-cnd7697
                                                                                      (letrec ((x7698
                                                                                                (letrec ((x7699
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7699))))
                                                                                        (null?
                                                                                         x7698))))
                                                                              (if x-cnd7697
                                                                                (letrec ((g7700
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
                                                                                                       x7702))))
                                                                                            (proc
                                                                                             x7706
                                                                                             x7705
                                                                                             x7704
                                                                                             x7703
                                                                                             x7701))))
                                                                                  g7700)
                                                                                (letrec ((x-cnd7707
                                                                                          (letrec ((x7708
                                                                                                    (letrec ((x7709
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7709))))
                                                                                            (null?
                                                                                             x7708))))
                                                                                  (if x-cnd7707
                                                                                    (letrec ((g7710
                                                                                              (letrec ((x7718
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7717
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7716
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7715
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7713
                                                                                                        (letrec ((x7714
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7714)))
                                                                                                       (x7711
                                                                                                        (letrec ((x7712
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7712))))
                                                                                                (proc
                                                                                                 x7718
                                                                                                 x7717
                                                                                                 x7716
                                                                                                 x7715
                                                                                                 x7713
                                                                                                 x7711))))
                                                                                      g7710)
                                                                                    (letrec ((x-cnd7719
                                                                                              (letrec ((x7720
                                                                                                        (letrec ((x7721
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7721))))
                                                                                                (null?
                                                                                                 x7720))))
                                                                                      (if x-cnd7719
                                                                                        (letrec ((g7722
                                                                                                  (letrec ((x7732
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7731
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7730
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7729
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7727
                                                                                                            (letrec ((x7728
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7728)))
                                                                                                           (x7725
                                                                                                            (letrec ((x7726
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7726)))
                                                                                                           (x7723
                                                                                                            (letrec ((x7724
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7724))))
                                                                                                    (proc
                                                                                                     x7732
                                                                                                     x7731
                                                                                                     x7730
                                                                                                     x7729
                                                                                                     x7727
                                                                                                     x7725
                                                                                                     x7723))))
                                                                                          g7722)
                                                                                        (letrec ((g7733
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7733)))))))))))))))))))
                                                g7670)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7734
                                                        (letrec ((x7736
                                                                  (list? l)))
                                                          (assert x7736)))
                                                       (g7735
                                                        (letrec ((x-cnd7737
                                                                  (null? l)))
                                                          (if x-cnd7737
                                                            #f
                                                            (letrec ((x-cnd7738
                                                                      (letrec ((x7739
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7739
                                                                         e))))
                                                              (if x-cnd7738
                                                                l
                                                                (letrec ((x7740
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7740))))))))
                                                g7735)))
                                           (cddddr
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
                                                          (cdr x7742))))
                                                g7741)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7745
                                                        (letrec ((x7746
                                                                  (letrec ((x7747
                                                                            (letrec ((x7748
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7748))))
                                                                    (cdr
                                                                     x7747))))
                                                          (car x7746))))
                                                g7745)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7749 (random 42)))
                                                g7749)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7750
                                                        (letrec ((x7752
                                                                  (number? x)))
                                                          (assert x7752)))
                                                       (g7751 (= x 0)))
                                                g7751)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7753
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7754
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7754))))
                                                g7753)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7755
                                                        (letrec ((x7756
                                                                  (cdr x)))
                                                          (car x7756))))
                                                g7755)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7757
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd7758
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7758
                                                                      (letrec ((x7759
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7759))
                                                                      #f))))
                                                          (letrec ((g7760
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g7760))))
                                                g7757)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7761
                                                        (letrec ((x7762
                                                                  (letrec ((x7763
                                                                            (letrec ((x7764
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7764))))
                                                                    (cdr
                                                                     x7763))))
                                                          (cdr x7762))))
                                                g7761)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7765
                                                        (letrec ((x-cnd7766
                                                                  (letrec ((x7767
                                                                            #\0))
                                                                    (char<=?
                                                                     x7767
                                                                     c))))
                                                          (if x-cnd7766
                                                            (letrec ((x7768
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7768))
                                                            #f))))
                                                g7765)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7769
                                                        (letrec ((x7771
                                                                  (list? l)))
                                                          (assert x7771)))
                                                       (g7770
                                                        (letrec ((x-cnd7772
                                                                  (null? l)))
                                                          (if x-cnd7772
                                                            #f
                                                            (letrec ((x-cnd7773
                                                                      (letrec ((x7774
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7774
                                                                         k))))
                                                              (if x-cnd7773
                                                                (car l)
                                                                (letrec ((x7775
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7775))))))))
                                                g7770)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7776 (if x #f #t)))
                                                g7776)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7777 (append l1 l2)))
                                                g7777)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7778
                                                        (letrec ((x7780
                                                                  (list? l)))
                                                          (assert x7780)))
                                                       (g7779
                                                        (letrec ((x-cnd7781
                                                                  (null? l)))
                                                          (if x-cnd7781
                                                            #f
                                                            (letrec ((x-cnd7782
                                                                      (letrec ((x7783
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7783
                                                                         e))))
                                                              (if x-cnd7782
                                                                l
                                                                (letrec ((x7784
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7784))))))))
                                                g7779)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7785
                                                        (letrec ((x7786
                                                                  (letrec ((x7787
                                                                            (letrec ((x7788
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7788))))
                                                                    (cdr
                                                                     x7787))))
                                                          (car x7786))))
                                                g7785)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7789
                                                        (letrec ((x7791
                                                                  (list? l)))
                                                          (assert x7791)))
                                                       (g7790
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7792
                                                                              (letrec ((x-cnd7793
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7793
                                                                                  0
                                                                                  (letrec ((x7794
                                                                                            (letrec ((x7795
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7795))))
                                                                                    (+
                                                                                     1
                                                                                     x7794))))))
                                                                      g7792))))
                                                          (letrec ((g7796
                                                                    (rec l)))
                                                            g7796))))
                                                g7790)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7797
                                                        (letrec ((x7800
                                                                  (char? c1)))
                                                          (assert x7800)))
                                                       (g7798
                                                        (letrec ((x7801
                                                                  (char? c2)))
                                                          (assert x7801)))
                                                       (g7799
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7802
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7802))))
                                                g7799)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7803
                                                        (letrec ((x7804
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7804))))
                                                g7803)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7805
                                                        (letrec ((x7806
                                                                  (letrec ((x7807
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7807))))
                                                          (cdr x7806))))
                                                g7805)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7808
                                                        (letrec ((x7810
                                                                  (list? l)))
                                                          (assert x7810)))
                                                       (g7809
                                                        (letrec ((x-cnd7811
                                                                  (null? l)))
                                                          (if x-cnd7811
                                                            #f
                                                            (letrec ((x-cnd7812
                                                                      (letrec ((x7813
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7813
                                                                         k))))
                                                              (if x-cnd7812
                                                                (car l)
                                                                (letrec ((x7814
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7814))))))))
                                                g7809)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7815
                                                        (letrec ((x7816
                                                                  (car x)))
                                                          (car x7816))))
                                                g7815)))
                                           (char>?
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
                                                        (letrec ((x7822
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7822))))
                                                g7819)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7823
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7824
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7824))))
                                                g7823)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7825
                                                        (letrec ((x7828
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7828)))
                                                       (g7826
                                                        (letrec ((x7829
                                                                  (list? l)))
                                                          (assert x7829)))
                                                       (g7827
                                                        (letrec ((x-cnd7830
                                                                  (null? l)))
                                                          (if x-cnd7830
                                                            #t
                                                            (letrec ((x-cnd7831
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7831
                                                                (letrec ((g7832
                                                                          (letrec ((x7834
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7834)))
                                                                         (g7833
                                                                          (letrec ((x7835
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7835))))
                                                                  g7833)
                                                                '()))))))
                                                g7827)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7836
                                                        (letrec ((x7838
                                                                  (number? x)))
                                                          (assert x7838)))
                                                       (g7837
                                                        (letrec ((x-cnd7839
                                                                  (< x 0)))
                                                          (if x-cnd7839
                                                            (- 0 x)
                                                            x))))
                                                g7837)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7840
                                                        (letrec ((x7843
                                                                  (char? c1)))
                                                          (assert x7843)))
                                                       (g7841
                                                        (letrec ((x7844
                                                                  (char? c2)))
                                                          (assert x7844)))
                                                       (g7842
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7845
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7845))))
                                                g7842)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7846
                                                        (letrec ((x7847
                                                                  (letrec ((x7848
                                                                            (letrec ((x7849
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7849))))
                                                                    (cdr
                                                                     x7848))))
                                                          (car x7847))))
                                                g7846)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7850 #f)) g7850)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7851
                                                        (letrec ((x7853
                                                                  (letrec ((x7854
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7854)))
                                                                 (x7852
                                                                  (gcd m n)))
                                                          (/ x7853 x7852))))
                                                g7851)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7855
                                                        (letrec ((x7857
                                                                  (number? x)))
                                                          (assert x7857)))
                                                       (g7856
                                                        (letrec ((x7858
                                                                  (<= x y)))
                                                          (not x7858))))
                                                g7856)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7859
                                                        (letrec ((x7863
                                                                  (list? l)))
                                                          (assert x7863)))
                                                       (g7860
                                                        (letrec ((x7864
                                                                  (number?
                                                                   index)))
                                                          (assert x7864)))
                                                       (g7861
                                                        (letrec ((x7865
                                                                  (letrec ((x7866
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7866))))
                                                          (assert x7865)))
                                                       (g7862
                                                        (letrec ((x-cnd7867
                                                                  (= index 0)))
                                                          (if x-cnd7867
                                                            (car l)
                                                            (letrec ((x7869
                                                                      (cdr l))
                                                                     (x7868
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7869
                                                               x7868))))))
                                                g7862)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7870
                                                        (letrec ((x-cnd7871
                                                                  (= b 0)))
                                                          (if x-cnd7871
                                                            a
                                                            (letrec ((x7872
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7872))))))
                                                g7870)))
                                           (f
                                            (lambda (g)
                                              (letrec ((g7873
                                                        (letrec ((x7877 (x y))
                                                                 (x7874
                                                                  (letrec ((x7876
                                                                            (+
                                                                             x
                                                                             1))
                                                                           (x7875
                                                                            (+
                                                                             y
                                                                             1)))
                                                                    (g
                                                                     x7876
                                                                     x7875))))
                                                          (λ x7877 x7874))))
                                                g7873)))
                                           (unzip
                                            (lambda (x k)
                                              (letrec ((g7878
                                                        (letrec ((x-cnd7879
                                                                  (= x 0)))
                                                          (if x-cnd7879
                                                            (k 0 0)
                                                            (letrec ((x7881
                                                                      (- x 1))
                                                                     (x7880
                                                                      (f k)))
                                                              (unzip
                                                               x7881
                                                               x7880))))))
                                                g7878)))
                                           (zip
                                            (lambda (x y)
                                              (letrec ((g7882
                                                        (letrec ((x-cnd7883
                                                                  (= x 0)))
                                                          (if x-cnd7883
                                                            (letrec ((x-cnd7884
                                                                      (= y 0)))
                                                              (if x-cnd7884
                                                                0
                                                                'fail))
                                                            (letrec ((x-cnd7885
                                                                      (= y 0)))
                                                              (if x-cnd7885
                                                                'fail
                                                                (letrec ((x7886
                                                                          (letrec ((x7888
                                                                                    (-
                                                                                     x
                                                                                     1))
                                                                                   (x7887
                                                                                    (-
                                                                                     y
                                                                                     1)))
                                                                            (zip
                                                                             x7888
                                                                             x7887))))
                                                                  (+
                                                                   1
                                                                   x7886))))))))
                                                g7882)))
                                           (main
                                            (lambda (n)
                                              (letrec ((g7889 (unzip n zip)))
                                                g7889))))
                                    (letrec ((g7890
                                              (letrec ((x7893
                                                        ((lambda (j7332
                                                                  k7333
                                                                  f7334)
                                                           (letrec ((g7894
                                                                     (lambda (g7331)
                                                                       (letrec ((g7895
                                                                                 (letrec ((x7896
                                                                                           (letrec ((x7897
                                                                                                     ((lambda (j7342
                                                                                                               k7343
                                                                                                               f7344)
                                                                                                        (letrec ((g7898
                                                                                                                  (lambda (g7340
                                                                                                                           g7341)
                                                                                                                    (letrec ((g7899
                                                                                                                              (letrec ((x7900
                                                                                                                                        (letrec ((x7902
                                                                                                                                                  (integer?/c
                                                                                                                                                   j7342
                                                                                                                                                   k7343
                                                                                                                                                   g7340))
                                                                                                                                                 (x7901
                                                                                                                                                  (integer?/c
                                                                                                                                                   j7342
                                                                                                                                                   k7343
                                                                                                                                                   g7341)))
                                                                                                                                          (f7344
                                                                                                                                           x7902
                                                                                                                                           x7901))))
                                                                                                                                (integer?/c
                                                                                                                                 j7342
                                                                                                                                 k7343
                                                                                                                                 x7900))))
                                                                                                                      g7899))))
                                                                                                          g7898))
                                                                                                      j7332
                                                                                                      k7333
                                                                                                      g7331)))
                                                                                             (f7334
                                                                                              x7897))))
                                                                                   ((lambda (j7337
                                                                                             k7338
                                                                                             f7339)
                                                                                      (letrec ((g7903
                                                                                                (lambda (g7335
                                                                                                         g7336)
                                                                                                  (letrec ((g7904
                                                                                                            (letrec ((x7905
                                                                                                                      (letrec ((x7907
                                                                                                                                (integer?/c
                                                                                                                                 j7337
                                                                                                                                 k7338
                                                                                                                                 g7335))
                                                                                                                               (x7906
                                                                                                                                (integer?/c
                                                                                                                                 j7337
                                                                                                                                 k7338
                                                                                                                                 g7336)))
                                                                                                                        (f7339
                                                                                                                         x7907
                                                                                                                         x7906))))
                                                                                                              (integer?/c
                                                                                                               j7337
                                                                                                               k7338
                                                                                                               x7905))))
                                                                                                    g7904))))
                                                                                        g7903))
                                                                                    j7332
                                                                                    k7333
                                                                                    x7896))))
                                                                         g7895))))
                                                             g7894))
                                                         'module
                                                         'importer
                                                         f))
                                                       (x7892 (input)))
                                                (x7893 x7892)))
                                             (g7891
                                              (letrec ((x7909
                                                        ((lambda (j7346
                                                                  k7347
                                                                  f7348)
                                                           (letrec ((g7910
                                                                     (lambda (g7345)
                                                                       (letrec ((g7911
                                                                                 (letrec ((x7912
                                                                                           (letrec ((x7913
                                                                                                     (integer?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7345)))
                                                                                             (f7348
                                                                                              x7913))))
                                                                                   (integer?/c
                                                                                    j7346
                                                                                    k7347
                                                                                    x7912))))
                                                                         g7911))))
                                                             g7910))
                                                         'module
                                                         'importer
                                                         main))
                                                       (x7908 (input)))
                                                (x7909 x7908))))
                                      g7891))))
                          g7362))))
              g7360)))
    g7359))
