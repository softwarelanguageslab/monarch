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
                                            (lambda (g7259 g7260 g7261)
                                              (letrec ((g7357
                                                        (letrec ((x-cnd7358
                                                                  (real?
                                                                   g7261)))
                                                          (if x-cnd7358
                                                            g7261
                                                            (blame
                                                             g7259
                                                             'real?)))))
                                                g7357)))
                                           (boolean?/c
                                            (lambda (g7262 g7263 g7264)
                                              (letrec ((g7359
                                                        (letrec ((x-cnd7360
                                                                  (boolean?
                                                                   g7264)))
                                                          (if x-cnd7360
                                                            g7264
                                                            (blame
                                                             g7262
                                                             'boolean?)))))
                                                g7359)))
                                           (number?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7361
                                                        (letrec ((x-cnd7362
                                                                  (number?
                                                                   g7267)))
                                                          (if x-cnd7362
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'number?)))))
                                                g7361)))
                                           (any/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7363
                                                        (letrec ((x-cnd7364
                                                                  ((lambda (v)
                                                                     (letrec ((g7365
                                                                               #t))
                                                                       g7365))
                                                                   g7270)))
                                                          (if x-cnd7364
                                                            g7270
                                                            (blame
                                                             g7268
                                                             '(lambda (v)
                                                                #t))))))
                                                g7363)))
                                           (any?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7366
                                                        (letrec ((x-cnd7367
                                                                  ((lambda (v)
                                                                     (letrec ((g7368
                                                                               #t))
                                                                       g7368))
                                                                   g7273)))
                                                          (if x-cnd7367
                                                            g7273
                                                            (blame
                                                             g7271
                                                             '(lambda (v)
                                                                #t))))))
                                                g7366)))
                                           (cons?/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7369
                                                        (letrec ((x-cnd7370
                                                                  (pair?
                                                                   g7276)))
                                                          (if x-cnd7370
                                                            g7276
                                                            (blame
                                                             g7274
                                                             'pair?)))))
                                                g7369)))
                                           (pair?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7371
                                                        (letrec ((x-cnd7372
                                                                  (pair?
                                                                   g7279)))
                                                          (if x-cnd7372
                                                            g7279
                                                            (blame
                                                             g7277
                                                             'pair?)))))
                                                g7371)))
                                           (integer?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7373
                                                        (letrec ((x-cnd7374
                                                                  (integer?
                                                                   g7282)))
                                                          (if x-cnd7374
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'integer?)))))
                                                g7373)))
                                           (symbol?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7375
                                                        (letrec ((x-cnd7376
                                                                  (symbol?
                                                                   g7285)))
                                                          (if x-cnd7376
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'symbol?)))))
                                                g7375)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7377
                                                        (lambda (k j v)
                                                          (letrec ((g7378
                                                                    (letrec ((x-cnd7379
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7379
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7378))))
                                                g7377)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7380
                                                        (lambda (k j v)
                                                          (letrec ((g7381
                                                                    (letrec ((x-cnd7382
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7382
                                                                        '()
                                                                        (letrec ((x7386
                                                                                  (letrec ((x7387
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7387)))
                                                                                 (x7383
                                                                                  (letrec ((x7385
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7384
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7385
                                                                                     k
                                                                                     j
                                                                                     x7384))))
                                                                          (orig-cons
                                                                           x7386
                                                                           x7383))))))
                                                            g7381))))
                                                g7380)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7388 #t)) g7388)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7389
                                                        (letrec ((x7390
                                                                  (= v 0)))
                                                          (not x7390))))
                                                g7389)))
                                           (nonzero?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7391
                                                        (letrec ((x-cnd7392
                                                                  ((lambda (v)
                                                                     (letrec ((g7393
                                                                               (letrec ((x7394
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7394))))
                                                                       g7393))
                                                                   g7288)))
                                                          (if x-cnd7392
                                                            g7288
                                                            (blame
                                                             g7286
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7391)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7395 v)) g7395)))
                                           (+
                                            ((lambda (j7291 k7292 f7293)
                                               (letrec ((g7397
                                                         (lambda (g7289 g7290)
                                                           (letrec ((g7398
                                                                     (letrec ((x7399
                                                                               (letrec ((x7401
                                                                                         (number?/c
                                                                                          j7291
                                                                                          k7292
                                                                                          g7289))
                                                                                        (x7400
                                                                                         (number?/c
                                                                                          j7291
                                                                                          k7292
                                                                                          g7290)))
                                                                                 (f7293
                                                                                  x7401
                                                                                  x7400))))
                                                                       (number?/c
                                                                        j7291
                                                                        k7292
                                                                        x7399))))
                                                             g7398))))
                                                 g7397))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7396 (orig-+ a b)))
                                                 g7396))))
                                           (-
                                            ((lambda (j7296 k7297 f7298)
                                               (letrec ((g7403
                                                         (lambda (g7294 g7295)
                                                           (letrec ((g7404
                                                                     (letrec ((x7405
                                                                               (letrec ((x7407
                                                                                         (number?/c
                                                                                          j7296
                                                                                          k7297
                                                                                          g7294))
                                                                                        (x7406
                                                                                         (number?/c
                                                                                          j7296
                                                                                          k7297
                                                                                          g7295)))
                                                                                 (f7298
                                                                                  x7407
                                                                                  x7406))))
                                                                       (number?/c
                                                                        j7296
                                                                        k7297
                                                                        x7405))))
                                                             g7404))))
                                                 g7403))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7402 (orig-- a b)))
                                                 g7402))))
                                           (*
                                            ((lambda (j7301 k7302 f7303)
                                               (letrec ((g7409
                                                         (lambda (g7299 g7300)
                                                           (letrec ((g7410
                                                                     (letrec ((x7411
                                                                               (letrec ((x7413
                                                                                         (number?/c
                                                                                          j7301
                                                                                          k7302
                                                                                          g7299))
                                                                                        (x7412
                                                                                         (number?/c
                                                                                          j7301
                                                                                          k7302
                                                                                          g7300)))
                                                                                 (f7303
                                                                                  x7413
                                                                                  x7412))))
                                                                       (number?/c
                                                                        j7301
                                                                        k7302
                                                                        x7411))))
                                                             g7410))))
                                                 g7409))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7408 (orig-* a b)))
                                                 g7408))))
                                           (/
                                            ((lambda (j7306 k7307 f7308)
                                               (letrec ((g7415
                                                         (lambda (g7304 g7305)
                                                           (letrec ((g7416
                                                                     (letrec ((x7417
                                                                               (letrec ((x7419
                                                                                         (number?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7304))
                                                                                        (x7418
                                                                                         (number?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7305)))
                                                                                 (f7308
                                                                                  x7419
                                                                                  x7418))))
                                                                       (number?/c
                                                                        j7306
                                                                        k7307
                                                                        x7417))))
                                                             g7416))))
                                                 g7415))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7414 (orig-/ a b)))
                                                 g7414))))
                                           (car
                                            ((lambda (j7310 k7311 f7312)
                                               (letrec ((g7421
                                                         (lambda (g7309)
                                                           (letrec ((g7422
                                                                     (letrec ((x7423
                                                                               (letrec ((x7424
                                                                                         (pair?/c
                                                                                          j7310
                                                                                          k7311
                                                                                          g7309)))
                                                                                 (f7312
                                                                                  x7424))))
                                                                       (any/c
                                                                        j7310
                                                                        k7311
                                                                        x7423))))
                                                             g7422))))
                                                 g7421))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7420 (orig-car p)))
                                                 g7420))))
                                           (cdr
                                            ((lambda (j7314 k7315 f7316)
                                               (letrec ((g7426
                                                         (lambda (g7313)
                                                           (letrec ((g7427
                                                                     (letrec ((x7428
                                                                               (letrec ((x7429
                                                                                         (pair?/c
                                                                                          j7314
                                                                                          k7315
                                                                                          g7313)))
                                                                                 (f7316
                                                                                  x7429))))
                                                                       (any/c
                                                                        j7314
                                                                        k7315
                                                                        x7428))))
                                                             g7427))))
                                                 g7426))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7425 (orig-cdr p)))
                                                 g7425))))
                                           (cons
                                            ((lambda (j7319 k7320 f7321)
                                               (letrec ((g7431
                                                         (lambda (g7317 g7318)
                                                           (letrec ((g7432
                                                                     (letrec ((x7433
                                                                               (letrec ((x7435
                                                                                         (any/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7317))
                                                                                        (x7434
                                                                                         (any/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7318)))
                                                                                 (f7321
                                                                                  x7435
                                                                                  x7434))))
                                                                       (pair?/c
                                                                        j7319
                                                                        k7320
                                                                        x7433))))
                                                             g7432))))
                                                 g7431))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7430
                                                         (orig-cons a b)))
                                                 g7430))))
                                           (vector-ref
                                            ((lambda (j7323 k7324 f7325)
                                               (letrec ((g7437
                                                         (lambda (g7322)
                                                           (letrec ((g7438
                                                                     (letrec ((x7439
                                                                               (letrec ((x7440
                                                                                         (vector?/c
                                                                                          j7323
                                                                                          k7324
                                                                                          g7322)))
                                                                                 (f7325
                                                                                  x7440))))
                                                                       (integer?/c
                                                                        j7323
                                                                        k7324
                                                                        x7439))))
                                                             g7438))))
                                                 g7437))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7436
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7436))))
                                           (vector-set!
                                            ((lambda (j7328 k7329 f7330)
                                               (letrec ((g7442
                                                         (lambda (g7326 g7327)
                                                           (letrec ((g7443
                                                                     (letrec ((x7444
                                                                               (letrec ((x7446
                                                                                         (vector?/c
                                                                                          j7328
                                                                                          k7329
                                                                                          g7326))
                                                                                        (x7445
                                                                                         (integer?/c
                                                                                          j7328
                                                                                          k7329
                                                                                          g7327)))
                                                                                 (f7330
                                                                                  x7446
                                                                                  x7445))))
                                                                       (any/c
                                                                        j7328
                                                                        k7329
                                                                        x7444))))
                                                             g7443))))
                                                 g7442))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7441
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7441))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7447
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7447)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7448
                                                        (letrec ((x7449
                                                                  (letrec ((x7450
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7450))))
                                                          (cdr x7449))))
                                                g7448)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7451
                                                        (letrec ((x7454
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7454)))
                                                       (g7452
                                                        (letrec ((x7455
                                                                  (list? l)))
                                                          (assert x7455)))
                                                       (g7453
                                                        (letrec ((x-cnd7456
                                                                  (null? l)))
                                                          (if x-cnd7456
                                                            '()
                                                            (letrec ((x7459
                                                                      (letrec ((x7460
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7460)))
                                                                     (x7457
                                                                      (letrec ((x7458
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7458))))
                                                              (cons
                                                               x7459
                                                               x7457))))))
                                                g7453)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7461
                                                        (letrec ((x7462
                                                                  (car x)))
                                                          (cdr x7462))))
                                                g7461)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7463
                                                        (letrec ((x7464
                                                                  (letrec ((x7465
                                                                            (letrec ((x7466
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7466))))
                                                                    (cdr
                                                                     x7465))))
                                                          (car x7464))))
                                                g7463)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7467
                                                        (letrec ((x7468
                                                                  (letrec ((x7469
                                                                            (letrec ((x7470
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7470))))
                                                                    (car
                                                                     x7469))))
                                                          (cdr x7468))))
                                                g7467)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7471
                                                        (letrec ((x7474
                                                                  (string?
                                                                   filename)))
                                                          (assert x7474)))
                                                       (g7472
                                                        (letrec ((x7475
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7475)))
                                                       (g7473
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7476
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7477 res))
                                                            g7477))))
                                                g7473)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7478
                                                        (letrec ((x7479
                                                                  (letrec ((x7480
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7480))))
                                                          (car x7479))))
                                                g7478)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7481
                                                        (letrec ((x7482
                                                                  (letrec ((x7483
                                                                            (letrec ((x7484
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7484))))
                                                                    (car
                                                                     x7483))))
                                                          (cdr x7482))))
                                                g7481)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7485
                                                        (letrec ((x7487
                                                                  (list? l)))
                                                          (assert x7487)))
                                                       (g7486
                                                        (letrec ((x-cnd7488
                                                                  (null? l)))
                                                          (if x-cnd7488
                                                            #f
                                                            (letrec ((x-cnd7489
                                                                      (letrec ((x7490
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7490
                                                                         k))))
                                                              (if x-cnd7489
                                                                (car l)
                                                                (letrec ((x7491
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7491))))))))
                                                g7486)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7492
                                                        (letrec ((x7493
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7493))))
                                                g7492)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7494
                                                        (letrec ((x7496
                                                                  (list? l)))
                                                          (assert x7496)))
                                                       (g7495
                                                        (letrec ((x-cnd7497
                                                                  (null? l)))
                                                          (if x-cnd7497
                                                            ""
                                                            (letrec ((x7500
                                                                      (letrec ((x7501
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7501)))
                                                                     (x7498
                                                                      (letrec ((x7499
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7499))))
                                                              (string-append
                                                               x7500
                                                               x7498))))))
                                                g7495)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7502
                                                        (letrec ((x7505
                                                                  (char? c1)))
                                                          (assert x7505)))
                                                       (g7503
                                                        (letrec ((x7506
                                                                  (char? c2)))
                                                          (assert x7506)))
                                                       (g7504
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7507
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7507))))
                                                g7504)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7508
                                                        (letrec ((x7509
                                                                  (letrec ((x7510
                                                                            (letrec ((x7511
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7511))))
                                                                    (cdr
                                                                     x7510))))
                                                          (cdr x7509))))
                                                g7508)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7512
                                                        (letrec ((x7515
                                                                  (list? l)))
                                                          (assert x7515)))
                                                       (g7513
                                                        (letrec ((x7516
                                                                  (number?)))
                                                          (assert x7516)))
                                                       (g7514
                                                        (letrec ((x-cnd7517
                                                                  (zero? k)))
                                                          (if x-cnd7517
                                                            x
                                                            (letrec ((x7519
                                                                      (cdr x))
                                                                     (x7518
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7519
                                                               x7518))))))
                                                g7514)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7520 '())) g7520)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7521
                                                        (letrec ((x-cnd7522
                                                                  (letrec ((x7523
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7523))))
                                                          (if x-cnd7522
                                                            (letrec ((x7524
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7524))
                                                            #f))))
                                                g7521)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7525
                                                        (letrec ((x7527
                                                                  (number? x)))
                                                          (assert x7527)))
                                                       (g7526
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7528
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7529
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7529)))))
                                                            g7528))))
                                                g7526)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7530
                                                        (letrec ((val7244
                                                                  (letrec ((x7531
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7531
                                                                     9))))
                                                          (letrec ((g7532
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7533
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7533
                                                                                   10))))
                                                                        (letrec ((g7534
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7535
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7535
                                                                                       32)))))
                                                                          g7534)))))
                                                            g7532))))
                                                g7530)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7536
                                                        (letrec ((x7537
                                                                  (letrec ((x7538
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7538))))
                                                          (cdr x7537))))
                                                g7536)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7539
                                                        (letrec ((x7541
                                                                  (number? x)))
                                                          (assert x7541)))
                                                       (g7540 (> x 0)))
                                                g7540)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7542 #f)) g7542)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7543
                                                        (letrec ((x7544
                                                                  (cdr x)))
                                                          (cdr x7544))))
                                                g7543)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7545
                                                        (letrec ((x7547
                                                                  (number? x)))
                                                          (assert x7547)))
                                                       (g7546
                                                        (letrec ((x-cnd7548
                                                                  (< x 0)))
                                                          (if x-cnd7548
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7546)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7549
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7550
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7551
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7551
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7552
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7553
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7553
                                                                                                  (letrec ((x-cnd7554
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7554
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7555
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7556
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7556
                                                                                                                (letrec ((x-cnd7557
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7557
                                                                                                                    (letrec ((x-cnd7558
                                                                                                                              (letrec ((x7560
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7559
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7560
                                                                                                                                 x7559))))
                                                                                                                      (if x-cnd7558
                                                                                                                        (letrec ((x7562
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7561
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7562
                                                                                                                           x7561))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7563
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7564
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7564
                                                                                                                    (letrec ((x-cnd7565
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7565
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7566
                                                                                                                                    (letrec ((x-cnd7567
                                                                                                                                              (letrec ((x7568
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7568
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7567
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7569
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7570
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7571
                                                                                                                                                                                      (letrec ((x7573
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7572
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7573
                                                                                                                                                                                         x7572))))
                                                                                                                                                                              (if x-cnd7571
                                                                                                                                                                                (letrec ((x7574
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7574))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7570))))
                                                                                                                                                      g7569))))
                                                                                                                                          (letrec ((g7575
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7575))
                                                                                                                                        #f))))
                                                                                                                            g7566))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7563)))))
                                                                                        g7555)))))
                                                                          g7552)))))
                                                            g7550))))
                                                g7549)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7576
                                                        (letrec ((x7577
                                                                  (letrec ((x7578
                                                                            (letrec ((x7579
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7579))))
                                                                    (car
                                                                     x7578))))
                                                          (cdr x7577))))
                                                g7576)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7580
                                                        (letrec ((x7581
                                                                  (letrec ((x7582
                                                                            (letrec ((x7583
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7583))))
                                                                    (car
                                                                     x7582))))
                                                          (car x7581))))
                                                g7580)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7584 (eq? x y)))
                                                g7584)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7585
                                                        (letrec ((x7587
                                                                  (number? x)))
                                                          (assert x7587)))
                                                       (g7586
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7588
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7589
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7589)))))
                                                            g7588))))
                                                g7586)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7590
                                                        (letrec ((x7593
                                                                  (string?
                                                                   filename)))
                                                          (assert x7593)))
                                                       (g7591
                                                        (letrec ((x7594
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7594)))
                                                       (g7592
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7595
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7596 res))
                                                            g7596))))
                                                g7592)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7597 (cons x '())))
                                                g7597)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7598
                                                        (letrec ((x7601
                                                                  (char? c1)))
                                                          (assert x7601)))
                                                       (g7599
                                                        (letrec ((x7602
                                                                  (char? c2)))
                                                          (assert x7602)))
                                                       (g7600
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7603
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7603))))
                                                g7600)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7604
                                                        (letrec ((x7605
                                                                  (letrec ((x7606
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7606))))
                                                          (cdr x7605))))
                                                g7604)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7607
                                                        (letrec ((x7608
                                                                  (letrec ((x7609
                                                                            (letrec ((x7610
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7610))))
                                                                    (car
                                                                     x7609))))
                                                          (cdr x7608))))
                                                g7607)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7611
                                                        (letrec ((x7612
                                                                  (letrec ((x7613
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7613))))
                                                          (car x7612))))
                                                g7611)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7614
                                                        (letrec ((x7615
                                                                  (letrec ((x7616
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7616))))
                                                          (car x7615))))
                                                g7614)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7617
                                                        (letrec ((x7620
                                                                  (char? c1)))
                                                          (assert x7620)))
                                                       (g7618
                                                        (letrec ((x7621
                                                                  (char? c2)))
                                                          (assert x7621)))
                                                       (g7619
                                                        (letrec ((x7622
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7622))))
                                                g7619)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7623
                                                        (letrec ((x7624
                                                                  (letrec ((x7625
                                                                            (letrec ((x7626
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7626))))
                                                                    (car
                                                                     x7625))))
                                                          (car x7624))))
                                                g7623)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7627
                                                        (letrec ((x7629
                                                                  (number? x)))
                                                          (assert x7629)))
                                                       (g7628 (< x 0)))
                                                g7628)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7630 (memq e l)))
                                                g7630)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7631
                                                        (letrec ((x7632
                                                                  (letrec ((x7633
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7633))))
                                                          (car x7632))))
                                                g7631)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7634 '())) g7634)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7635
                                                        (letrec ((x7637
                                                                  (list? l)))
                                                          (assert x7637)))
                                                       (g7636
                                                        (letrec ((x-cnd7638
                                                                  (null? l)))
                                                          (if x-cnd7638
                                                            '()
                                                            (letrec ((x7641
                                                                      (letrec ((x7642
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7642)))
                                                                     (x7639
                                                                      (letrec ((x7640
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7640))))
                                                              (append
                                                               x7641
                                                               x7639))))))
                                                g7636)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7643
                                                        (letrec ((x7644
                                                                  (letrec ((x7645
                                                                            (letrec ((x7646
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7646))))
                                                                    (car
                                                                     x7645))))
                                                          (car x7644))))
                                                g7643)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7647
                                                        (letrec ((x7648
                                                                  (letrec ((x7649
                                                                            (letrec ((x7650
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7650))))
                                                                    (cdr
                                                                     x7649))))
                                                          (cdr x7648))))
                                                g7647)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7651
                                                        (letrec ((x7653
                                                                  (number? x)))
                                                          (assert x7653)))
                                                       (g7652
                                                        (letrec ((x7654
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7654))))
                                                g7652)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7655
                                                        (letrec ((x7656
                                                                  (letrec ((x7657
                                                                            (letrec ((x7658
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7658))))
                                                                    (car
                                                                     x7657))))
                                                          (car x7656))))
                                                g7655)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7659
                                                        (letrec ((x7662
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7662)))
                                                       (g7660
                                                        (letrec ((x7663
                                                                  (list?
                                                                   args)))
                                                          (assert x7663)))
                                                       (g7661
                                                        (letrec ((x-cnd7664
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7664
                                                            (letrec ((g7665
                                                                      (proc)))
                                                              g7665)
                                                            (letrec ((x-cnd7666
                                                                      (letrec ((x7667
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7667))))
                                                              (if x-cnd7666
                                                                (letrec ((g7668
                                                                          (letrec ((x7669
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7669))))
                                                                  g7668)
                                                                (letrec ((x-cnd7670
                                                                          (letrec ((x7671
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7671))))
                                                                  (if x-cnd7670
                                                                    (letrec ((g7672
                                                                              (letrec ((x7674
                                                                                        (car
                                                                                         args))
                                                                                       (x7673
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7674
                                                                                 x7673))))
                                                                      g7672)
                                                                    (letrec ((x-cnd7675
                                                                              (letrec ((x7676
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7676))))
                                                                      (if x-cnd7675
                                                                        (letrec ((g7677
                                                                                  (letrec ((x7680
                                                                                            (car
                                                                                             args))
                                                                                           (x7679
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7678
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7680
                                                                                     x7679
                                                                                     x7678))))
                                                                          g7677)
                                                                        (letrec ((x-cnd7681
                                                                                  (letrec ((x7682
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7682))))
                                                                          (if x-cnd7681
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
                                                                            (letrec ((x-cnd7688
                                                                                      (letrec ((x7689
                                                                                                (letrec ((x7690
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7690))))
                                                                                        (null?
                                                                                         x7689))))
                                                                              (if x-cnd7688
                                                                                (letrec ((g7691
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
                                                                                                       x7693))))
                                                                                            (proc
                                                                                             x7697
                                                                                             x7696
                                                                                             x7695
                                                                                             x7694
                                                                                             x7692))))
                                                                                  g7691)
                                                                                (letrec ((x-cnd7698
                                                                                          (letrec ((x7699
                                                                                                    (letrec ((x7700
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7700))))
                                                                                            (null?
                                                                                             x7699))))
                                                                                  (if x-cnd7698
                                                                                    (letrec ((g7701
                                                                                              (letrec ((x7709
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7708
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7707
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7706
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7704
                                                                                                        (letrec ((x7705
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7705)))
                                                                                                       (x7702
                                                                                                        (letrec ((x7703
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7703))))
                                                                                                (proc
                                                                                                 x7709
                                                                                                 x7708
                                                                                                 x7707
                                                                                                 x7706
                                                                                                 x7704
                                                                                                 x7702))))
                                                                                      g7701)
                                                                                    (letrec ((x-cnd7710
                                                                                              (letrec ((x7711
                                                                                                        (letrec ((x7712
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7712))))
                                                                                                (null?
                                                                                                 x7711))))
                                                                                      (if x-cnd7710
                                                                                        (letrec ((g7713
                                                                                                  (letrec ((x7723
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7722
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7721
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7720
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7718
                                                                                                            (letrec ((x7719
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7719)))
                                                                                                           (x7716
                                                                                                            (letrec ((x7717
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7717)))
                                                                                                           (x7714
                                                                                                            (letrec ((x7715
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7715))))
                                                                                                    (proc
                                                                                                     x7723
                                                                                                     x7722
                                                                                                     x7721
                                                                                                     x7720
                                                                                                     x7718
                                                                                                     x7716
                                                                                                     x7714))))
                                                                                          g7713)
                                                                                        (letrec ((g7724
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7724)))))))))))))))))))
                                                g7661)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7725
                                                        (letrec ((x7727
                                                                  (list? l)))
                                                          (assert x7727)))
                                                       (g7726
                                                        (letrec ((x-cnd7728
                                                                  (null? l)))
                                                          (if x-cnd7728
                                                            #f
                                                            (letrec ((x-cnd7729
                                                                      (letrec ((x7730
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7730
                                                                         e))))
                                                              (if x-cnd7729
                                                                l
                                                                (letrec ((x7731
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7731))))))))
                                                g7726)))
                                           (cddddr
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
                                                          (cdr x7733))))
                                                g7732)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7736
                                                        (letrec ((x7737
                                                                  (letrec ((x7738
                                                                            (letrec ((x7739
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7739))))
                                                                    (cdr
                                                                     x7738))))
                                                          (car x7737))))
                                                g7736)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7740 (random 42)))
                                                g7740)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7741
                                                        (letrec ((x7743
                                                                  (number? x)))
                                                          (assert x7743)))
                                                       (g7742 (= x 0)))
                                                g7742)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7744
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7745
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7745))))
                                                g7744)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7746
                                                        (letrec ((x7747
                                                                  (cdr x)))
                                                          (car x7747))))
                                                g7746)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7748
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd7749
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7749
                                                                      (letrec ((x7750
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7750))
                                                                      #f))))
                                                          (letrec ((g7751
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g7751))))
                                                g7748)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7752
                                                        (letrec ((x7753
                                                                  (letrec ((x7754
                                                                            (letrec ((x7755
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7755))))
                                                                    (cdr
                                                                     x7754))))
                                                          (cdr x7753))))
                                                g7752)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7756
                                                        (letrec ((x-cnd7757
                                                                  (letrec ((x7758
                                                                            #\0))
                                                                    (char<=?
                                                                     x7758
                                                                     c))))
                                                          (if x-cnd7757
                                                            (letrec ((x7759
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7759))
                                                            #f))))
                                                g7756)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7760
                                                        (letrec ((x7762
                                                                  (list? l)))
                                                          (assert x7762)))
                                                       (g7761
                                                        (letrec ((x-cnd7763
                                                                  (null? l)))
                                                          (if x-cnd7763
                                                            #f
                                                            (letrec ((x-cnd7764
                                                                      (letrec ((x7765
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7765
                                                                         k))))
                                                              (if x-cnd7764
                                                                (car l)
                                                                (letrec ((x7766
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7766))))))))
                                                g7761)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7767 (if x #f #t)))
                                                g7767)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7768 (append l1 l2)))
                                                g7768)))
                                           (memq
                                            (lambda (e l)
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
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7774
                                                                         e))))
                                                              (if x-cnd7773
                                                                l
                                                                (letrec ((x7775
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7775))))))))
                                                g7770)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7776
                                                        (letrec ((x7777
                                                                  (letrec ((x7778
                                                                            (letrec ((x7779
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7779))))
                                                                    (cdr
                                                                     x7778))))
                                                          (car x7777))))
                                                g7776)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7780
                                                        (letrec ((x7782
                                                                  (list? l)))
                                                          (assert x7782)))
                                                       (g7781
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7783
                                                                              (letrec ((x-cnd7784
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7784
                                                                                  0
                                                                                  (letrec ((x7785
                                                                                            (letrec ((x7786
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7786))))
                                                                                    (+
                                                                                     1
                                                                                     x7785))))))
                                                                      g7783))))
                                                          (letrec ((g7787
                                                                    (rec l)))
                                                            g7787))))
                                                g7781)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7788
                                                        (letrec ((x7791
                                                                  (char? c1)))
                                                          (assert x7791)))
                                                       (g7789
                                                        (letrec ((x7792
                                                                  (char? c2)))
                                                          (assert x7792)))
                                                       (g7790
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7793
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7793))))
                                                g7790)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7794
                                                        (letrec ((x7795
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7795))))
                                                g7794)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7796
                                                        (letrec ((x7797
                                                                  (letrec ((x7798
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7798))))
                                                          (cdr x7797))))
                                                g7796)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7799
                                                        (letrec ((x7801
                                                                  (list? l)))
                                                          (assert x7801)))
                                                       (g7800
                                                        (letrec ((x-cnd7802
                                                                  (null? l)))
                                                          (if x-cnd7802
                                                            #f
                                                            (letrec ((x-cnd7803
                                                                      (letrec ((x7804
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7804
                                                                         k))))
                                                              (if x-cnd7803
                                                                (car l)
                                                                (letrec ((x7805
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7805))))))))
                                                g7800)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7806
                                                        (letrec ((x7807
                                                                  (car x)))
                                                          (car x7807))))
                                                g7806)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7808
                                                        (letrec ((x7811
                                                                  (char? c1)))
                                                          (assert x7811)))
                                                       (g7809
                                                        (letrec ((x7812
                                                                  (char? c2)))
                                                          (assert x7812)))
                                                       (g7810
                                                        (letrec ((x7813
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7813))))
                                                g7810)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7814
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7815
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7815))))
                                                g7814)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7816
                                                        (letrec ((x7819
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7819)))
                                                       (g7817
                                                        (letrec ((x7820
                                                                  (list? l)))
                                                          (assert x7820)))
                                                       (g7818
                                                        (letrec ((x-cnd7821
                                                                  (null? l)))
                                                          (if x-cnd7821
                                                            #t
                                                            (letrec ((x-cnd7822
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7822
                                                                (letrec ((g7823
                                                                          (letrec ((x7825
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7825)))
                                                                         (g7824
                                                                          (letrec ((x7826
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7826))))
                                                                  g7824)
                                                                '()))))))
                                                g7818)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7827
                                                        (letrec ((x7829
                                                                  (number? x)))
                                                          (assert x7829)))
                                                       (g7828
                                                        (letrec ((x-cnd7830
                                                                  (< x 0)))
                                                          (if x-cnd7830
                                                            (- 0 x)
                                                            x))))
                                                g7828)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7831
                                                        (letrec ((x7834
                                                                  (char? c1)))
                                                          (assert x7834)))
                                                       (g7832
                                                        (letrec ((x7835
                                                                  (char? c2)))
                                                          (assert x7835)))
                                                       (g7833
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7836
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7836))))
                                                g7833)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7837
                                                        (letrec ((x7838
                                                                  (letrec ((x7839
                                                                            (letrec ((x7840
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7840))))
                                                                    (cdr
                                                                     x7839))))
                                                          (car x7838))))
                                                g7837)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7841 #f)) g7841)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7842
                                                        (letrec ((x7844
                                                                  (letrec ((x7845
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7845)))
                                                                 (x7843
                                                                  (gcd m n)))
                                                          (/ x7844 x7843))))
                                                g7842)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7846
                                                        (letrec ((x7848
                                                                  (number? x)))
                                                          (assert x7848)))
                                                       (g7847
                                                        (letrec ((x7849
                                                                  (<= x y)))
                                                          (not x7849))))
                                                g7847)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7850
                                                        (letrec ((x7854
                                                                  (list? l)))
                                                          (assert x7854)))
                                                       (g7851
                                                        (letrec ((x7855
                                                                  (number?
                                                                   index)))
                                                          (assert x7855)))
                                                       (g7852
                                                        (letrec ((x7856
                                                                  (letrec ((x7857
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7857))))
                                                          (assert x7856)))
                                                       (g7853
                                                        (letrec ((x-cnd7858
                                                                  (= index 0)))
                                                          (if x-cnd7858
                                                            (car l)
                                                            (letrec ((x7860
                                                                      (cdr l))
                                                                     (x7859
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7860
                                                               x7859))))))
                                                g7853)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7861
                                                        (letrec ((x-cnd7862
                                                                  (= b 0)))
                                                          (if x-cnd7862
                                                            a
                                                            (letrec ((x7863
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7863))))))
                                                g7861)))
                                           (foldl
                                            (lambda (f z l)
                                              (letrec ((g7864
                                                        (letrec ((x-cnd7865
                                                                  (empty? l)))
                                                          (if x-cnd7865
                                                            z
                                                            (letrec ((x7867
                                                                      (letrec ((x7868
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         z
                                                                         x7868)))
                                                                     (x7866
                                                                      (cdr l)))
                                                              (foldl
                                                               f
                                                               x7867
                                                               x7866))))))
                                                g7864)))
                                           (randpos
                                            (lambda (rand)
                                              (letrec ((g7869
                                                        (letrec ((n (rand)))
                                                          (letrec ((g7870
                                                                    (letrec ((x-cnd7871
                                                                              (>
                                                                               n
                                                                               0)))
                                                                      (if x-cnd7871
                                                                        n
                                                                        (randpos
                                                                         rand)))))
                                                            g7870))))
                                                g7869)))
                                           (mk-list
                                            (lambda (rand n)
                                              (letrec ((g7872
                                                        (letrec ((x-cnd7873
                                                                  (<= n 0)))
                                                          (if x-cnd7873
                                                            empty
                                                            (letrec ((x7876
                                                                      (randpos
                                                                       rand))
                                                                     (x7874
                                                                      (letrec ((x7875
                                                                                (-
                                                                                 n
                                                                                 1)))
                                                                        (mk-list
                                                                         rand
                                                                         x7875))))
                                                              (cons
                                                               x7876
                                                               x7874))))))
                                                g7872)))
                                           (main
                                            (lambda (rand n m)
                                              (letrec ((g7877
                                                        (letrec ((x7878
                                                                  (mk-list
                                                                   rand
                                                                   n)))
                                                          (foldl / m x7878))))
                                                g7877))))
                                    (letrec ((g7879
                                              (letrec ((x7883
                                                        ((lambda (j7334
                                                                  k7335
                                                                  f7336)
                                                           (letrec ((g7884
                                                                     (lambda (g7331
                                                                              g7332
                                                                              g7333)
                                                                       (letrec ((g7885
                                                                                 (letrec ((x7886
                                                                                           (letrec ((x7889
                                                                                                     ((lambda (j7337
                                                                                                               k7338
                                                                                                               f7339)
                                                                                                        (letrec ((g7890
                                                                                                                  (lambda ()
                                                                                                                    (letrec ((g7891
                                                                                                                              (letrec ((x7892
                                                                                                                                        (f7339)))
                                                                                                                                (integer?/c
                                                                                                                                 j7337
                                                                                                                                 k7338
                                                                                                                                 x7892))))
                                                                                                                      g7891))))
                                                                                                          g7890))
                                                                                                      j7334
                                                                                                      k7335
                                                                                                      g7331))
                                                                                                    (x7888
                                                                                                     (integer?/c
                                                                                                      j7334
                                                                                                      k7335
                                                                                                      g7332))
                                                                                                    (x7887
                                                                                                     (integer?/c
                                                                                                      j7334
                                                                                                      k7335
                                                                                                      g7333)))
                                                                                             (f7336
                                                                                              x7889
                                                                                              x7888
                                                                                              x7887))))
                                                                                   (real?/c
                                                                                    j7334
                                                                                    k7335
                                                                                    x7886))))
                                                                         g7885))))
                                                             g7884))
                                                         'module
                                                         'importer
                                                         main))
                                                       (x7882 (input))
                                                       (x7881 (input))
                                                       (x7880 (input)))
                                                (x7883 x7882 x7881 x7880))))
                                      g7879))))
                          g7353))))
              g7351)))
    g7350))
