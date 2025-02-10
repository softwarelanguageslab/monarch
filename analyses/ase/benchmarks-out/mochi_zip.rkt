(letrec ((any? (lambda (v) (letrec ((g7339 #t)) g7339)))
         (meta (lambda (v) (letrec ((g7340 v)) g7340)))
         (member
          (lambda (v lst)
            (letrec ((g7341
                      (letrec ((g7342
                                (letrec ((x-e7343 lst))
                                  (match
                                   x-e7343
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7344 (eq? v v1)))
                                       (if x-cnd7344 #t (member v vs)))))))))
                        g7342)))
              g7341)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7345 (lambda (v) (letrec ((g7346 v)) g7346)))) g7345)))
         (nonzero?
          (lambda (v)
            (letrec ((g7347 (letrec ((x7348 (= v 0))) (not x7348)))) g7347))))
  (letrec ((g7349
            (letrec ((g7350
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7351 '())
                                 (g7352
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7353
                                                        (lambda (k j lst)
                                                          (letrec ((g7354
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7355
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7355))
                                                                     lst)))
                                                            g7354))))
                                                g7353)))
                                           (real?/c
                                            (lambda (g7259 g7260 g7261)
                                              (letrec ((g7356
                                                        (letrec ((x-cnd7357
                                                                  (real?
                                                                   g7261)))
                                                          (if x-cnd7357
                                                            g7261
                                                            (blame
                                                             g7259
                                                             'real?)))))
                                                g7356)))
                                           (boolean?/c
                                            (lambda (g7262 g7263 g7264)
                                              (letrec ((g7358
                                                        (letrec ((x-cnd7359
                                                                  (boolean?
                                                                   g7264)))
                                                          (if x-cnd7359
                                                            g7264
                                                            (blame
                                                             g7262
                                                             'boolean?)))))
                                                g7358)))
                                           (number?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7360
                                                        (letrec ((x-cnd7361
                                                                  (number?
                                                                   g7267)))
                                                          (if x-cnd7361
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'number?)))))
                                                g7360)))
                                           (any/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7362
                                                        (letrec ((x-cnd7363
                                                                  ((lambda (v)
                                                                     (letrec ((g7364
                                                                               #t))
                                                                       g7364))
                                                                   g7270)))
                                                          (if x-cnd7363
                                                            g7270
                                                            (blame
                                                             g7268
                                                             '(lambda (v)
                                                                #t))))))
                                                g7362)))
                                           (any?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7365
                                                        (letrec ((x-cnd7366
                                                                  ((lambda (v)
                                                                     (letrec ((g7367
                                                                               #t))
                                                                       g7367))
                                                                   g7273)))
                                                          (if x-cnd7366
                                                            g7273
                                                            (blame
                                                             g7271
                                                             '(lambda (v)
                                                                #t))))))
                                                g7365)))
                                           (cons?/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7368
                                                        (letrec ((x-cnd7369
                                                                  (pair?
                                                                   g7276)))
                                                          (if x-cnd7369
                                                            g7276
                                                            (blame
                                                             g7274
                                                             'pair?)))))
                                                g7368)))
                                           (pair?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7370
                                                        (letrec ((x-cnd7371
                                                                  (pair?
                                                                   g7279)))
                                                          (if x-cnd7371
                                                            g7279
                                                            (blame
                                                             g7277
                                                             'pair?)))))
                                                g7370)))
                                           (integer?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7372
                                                        (letrec ((x-cnd7373
                                                                  (integer?
                                                                   g7282)))
                                                          (if x-cnd7373
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'integer?)))))
                                                g7372)))
                                           (symbol?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7374
                                                        (letrec ((x-cnd7375
                                                                  (symbol?
                                                                   g7285)))
                                                          (if x-cnd7375
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'symbol?)))))
                                                g7374)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7376
                                                        (lambda (k j v)
                                                          (letrec ((g7377
                                                                    (letrec ((x-cnd7378
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7378
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7377))))
                                                g7376)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7379
                                                        (lambda (k j v)
                                                          (letrec ((g7380
                                                                    (letrec ((x-cnd7381
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7381
                                                                        '()
                                                                        (letrec ((x7385
                                                                                  (letrec ((x7386
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7386)))
                                                                                 (x7382
                                                                                  (letrec ((x7384
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7383
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7384
                                                                                     k
                                                                                     j
                                                                                     x7383))))
                                                                          (orig-cons
                                                                           x7385
                                                                           x7382))))))
                                                            g7380))))
                                                g7379)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7387 #t)) g7387)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7388
                                                        (letrec ((x7389
                                                                  (= v 0)))
                                                          (not x7389))))
                                                g7388)))
                                           (nonzero?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7390
                                                        (letrec ((x-cnd7391
                                                                  ((lambda (v)
                                                                     (letrec ((g7392
                                                                               (letrec ((x7393
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7393))))
                                                                       g7392))
                                                                   g7288)))
                                                          (if x-cnd7391
                                                            g7288
                                                            (blame
                                                             g7286
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7390)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7394 v)) g7394)))
                                           (+
                                            ((lambda (j7291 k7292 f7293)
                                               (letrec ((g7396
                                                         (lambda (g7289 g7290)
                                                           (letrec ((g7397
                                                                     (letrec ((x7398
                                                                               (letrec ((x7400
                                                                                         (number?/c
                                                                                          j7291
                                                                                          k7292
                                                                                          g7289))
                                                                                        (x7399
                                                                                         (number?/c
                                                                                          j7291
                                                                                          k7292
                                                                                          g7290)))
                                                                                 (f7293
                                                                                  x7400
                                                                                  x7399))))
                                                                       (number?/c
                                                                        j7291
                                                                        k7292
                                                                        x7398))))
                                                             g7397))))
                                                 g7396))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7395 (orig-+ a b)))
                                                 g7395))))
                                           (-
                                            ((lambda (j7296 k7297 f7298)
                                               (letrec ((g7402
                                                         (lambda (g7294 g7295)
                                                           (letrec ((g7403
                                                                     (letrec ((x7404
                                                                               (letrec ((x7406
                                                                                         (number?/c
                                                                                          j7296
                                                                                          k7297
                                                                                          g7294))
                                                                                        (x7405
                                                                                         (number?/c
                                                                                          j7296
                                                                                          k7297
                                                                                          g7295)))
                                                                                 (f7298
                                                                                  x7406
                                                                                  x7405))))
                                                                       (number?/c
                                                                        j7296
                                                                        k7297
                                                                        x7404))))
                                                             g7403))))
                                                 g7402))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7401 (orig-- a b)))
                                                 g7401))))
                                           (*
                                            ((lambda (j7301 k7302 f7303)
                                               (letrec ((g7408
                                                         (lambda (g7299 g7300)
                                                           (letrec ((g7409
                                                                     (letrec ((x7410
                                                                               (letrec ((x7412
                                                                                         (number?/c
                                                                                          j7301
                                                                                          k7302
                                                                                          g7299))
                                                                                        (x7411
                                                                                         (number?/c
                                                                                          j7301
                                                                                          k7302
                                                                                          g7300)))
                                                                                 (f7303
                                                                                  x7412
                                                                                  x7411))))
                                                                       (number?/c
                                                                        j7301
                                                                        k7302
                                                                        x7410))))
                                                             g7409))))
                                                 g7408))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7407 (orig-* a b)))
                                                 g7407))))
                                           (/
                                            ((lambda (j7306 k7307 f7308)
                                               (letrec ((g7414
                                                         (lambda (g7304 g7305)
                                                           (letrec ((g7415
                                                                     (letrec ((x7416
                                                                               (letrec ((x7418
                                                                                         (number?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7304))
                                                                                        (x7417
                                                                                         (number?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7305)))
                                                                                 (f7308
                                                                                  x7418
                                                                                  x7417))))
                                                                       (number?/c
                                                                        j7306
                                                                        k7307
                                                                        x7416))))
                                                             g7415))))
                                                 g7414))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7413 (orig-/ a b)))
                                                 g7413))))
                                           (car
                                            ((lambda (j7310 k7311 f7312)
                                               (letrec ((g7420
                                                         (lambda (g7309)
                                                           (letrec ((g7421
                                                                     (letrec ((x7422
                                                                               (letrec ((x7423
                                                                                         (pair?/c
                                                                                          j7310
                                                                                          k7311
                                                                                          g7309)))
                                                                                 (f7312
                                                                                  x7423))))
                                                                       (any/c
                                                                        j7310
                                                                        k7311
                                                                        x7422))))
                                                             g7421))))
                                                 g7420))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7419 (orig-car p)))
                                                 g7419))))
                                           (cdr
                                            ((lambda (j7314 k7315 f7316)
                                               (letrec ((g7425
                                                         (lambda (g7313)
                                                           (letrec ((g7426
                                                                     (letrec ((x7427
                                                                               (letrec ((x7428
                                                                                         (pair?/c
                                                                                          j7314
                                                                                          k7315
                                                                                          g7313)))
                                                                                 (f7316
                                                                                  x7428))))
                                                                       (any/c
                                                                        j7314
                                                                        k7315
                                                                        x7427))))
                                                             g7426))))
                                                 g7425))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7424 (orig-cdr p)))
                                                 g7424))))
                                           (cons
                                            ((lambda (j7319 k7320 f7321)
                                               (letrec ((g7430
                                                         (lambda (g7317 g7318)
                                                           (letrec ((g7431
                                                                     (letrec ((x7432
                                                                               (letrec ((x7434
                                                                                         (any/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7317))
                                                                                        (x7433
                                                                                         (any/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7318)))
                                                                                 (f7321
                                                                                  x7434
                                                                                  x7433))))
                                                                       (pair?/c
                                                                        j7319
                                                                        k7320
                                                                        x7432))))
                                                             g7431))))
                                                 g7430))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7429
                                                         (orig-cons a b)))
                                                 g7429))))
                                           (vector-ref
                                            ((lambda (j7323 k7324 f7325)
                                               (letrec ((g7436
                                                         (lambda (g7322)
                                                           (letrec ((g7437
                                                                     (letrec ((x7438
                                                                               (letrec ((x7439
                                                                                         (vector?/c
                                                                                          j7323
                                                                                          k7324
                                                                                          g7322)))
                                                                                 (f7325
                                                                                  x7439))))
                                                                       (integer?/c
                                                                        j7323
                                                                        k7324
                                                                        x7438))))
                                                             g7437))))
                                                 g7436))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7435
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7435))))
                                           (vector-set!
                                            ((lambda (j7328 k7329 f7330)
                                               (letrec ((g7441
                                                         (lambda (g7326 g7327)
                                                           (letrec ((g7442
                                                                     (letrec ((x7443
                                                                               (letrec ((x7445
                                                                                         (vector?/c
                                                                                          j7328
                                                                                          k7329
                                                                                          g7326))
                                                                                        (x7444
                                                                                         (integer?/c
                                                                                          j7328
                                                                                          k7329
                                                                                          g7327)))
                                                                                 (f7330
                                                                                  x7445
                                                                                  x7444))))
                                                                       (any/c
                                                                        j7328
                                                                        k7329
                                                                        x7443))))
                                                             g7442))))
                                                 g7441))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7440
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7440))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7446
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7446)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7447
                                                        (letrec ((x7448
                                                                  (letrec ((x7449
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7449))))
                                                          (cdr x7448))))
                                                g7447)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7450
                                                        (letrec ((x7453
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7453)))
                                                       (g7451
                                                        (letrec ((x7454
                                                                  (list? l)))
                                                          (assert x7454)))
                                                       (g7452
                                                        (letrec ((x-cnd7455
                                                                  (null? l)))
                                                          (if x-cnd7455
                                                            '()
                                                            (letrec ((x7458
                                                                      (letrec ((x7459
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7459)))
                                                                     (x7456
                                                                      (letrec ((x7457
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7457))))
                                                              (cons
                                                               x7458
                                                               x7456))))))
                                                g7452)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7460
                                                        (letrec ((x7461
                                                                  (car x)))
                                                          (cdr x7461))))
                                                g7460)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7462
                                                        (letrec ((x7463
                                                                  (letrec ((x7464
                                                                            (letrec ((x7465
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7465))))
                                                                    (cdr
                                                                     x7464))))
                                                          (car x7463))))
                                                g7462)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7466
                                                        (letrec ((x7467
                                                                  (letrec ((x7468
                                                                            (letrec ((x7469
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7469))))
                                                                    (car
                                                                     x7468))))
                                                          (cdr x7467))))
                                                g7466)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7470
                                                        (letrec ((x7473
                                                                  (string?
                                                                   filename)))
                                                          (assert x7473)))
                                                       (g7471
                                                        (letrec ((x7474
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7474)))
                                                       (g7472
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7475
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7476 res))
                                                            g7476))))
                                                g7472)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7477
                                                        (letrec ((x7478
                                                                  (letrec ((x7479
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7479))))
                                                          (car x7478))))
                                                g7477)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7480
                                                        (letrec ((x7481
                                                                  (letrec ((x7482
                                                                            (letrec ((x7483
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7483))))
                                                                    (car
                                                                     x7482))))
                                                          (cdr x7481))))
                                                g7480)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7484
                                                        (letrec ((x7486
                                                                  (list? l)))
                                                          (assert x7486)))
                                                       (g7485
                                                        (letrec ((x-cnd7487
                                                                  (null? l)))
                                                          (if x-cnd7487
                                                            #f
                                                            (letrec ((x-cnd7488
                                                                      (letrec ((x7489
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7489
                                                                         k))))
                                                              (if x-cnd7488
                                                                (car l)
                                                                (letrec ((x7490
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7490))))))))
                                                g7485)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7491
                                                        (letrec ((x7492
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7492))))
                                                g7491)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7493
                                                        (letrec ((x7495
                                                                  (list? l)))
                                                          (assert x7495)))
                                                       (g7494
                                                        (letrec ((x-cnd7496
                                                                  (null? l)))
                                                          (if x-cnd7496
                                                            ""
                                                            (letrec ((x7499
                                                                      (letrec ((x7500
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7500)))
                                                                     (x7497
                                                                      (letrec ((x7498
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7498))))
                                                              (string-append
                                                               x7499
                                                               x7497))))))
                                                g7494)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7501
                                                        (letrec ((x7504
                                                                  (char? c1)))
                                                          (assert x7504)))
                                                       (g7502
                                                        (letrec ((x7505
                                                                  (char? c2)))
                                                          (assert x7505)))
                                                       (g7503
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7506
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7506))))
                                                g7503)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7507
                                                        (letrec ((x7508
                                                                  (letrec ((x7509
                                                                            (letrec ((x7510
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7510))))
                                                                    (cdr
                                                                     x7509))))
                                                          (cdr x7508))))
                                                g7507)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7511
                                                        (letrec ((x7514
                                                                  (list? l)))
                                                          (assert x7514)))
                                                       (g7512
                                                        (letrec ((x7515
                                                                  (number?)))
                                                          (assert x7515)))
                                                       (g7513
                                                        (letrec ((x-cnd7516
                                                                  (zero? k)))
                                                          (if x-cnd7516
                                                            x
                                                            (letrec ((x7518
                                                                      (cdr x))
                                                                     (x7517
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7518
                                                               x7517))))))
                                                g7513)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7519 '())) g7519)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7520
                                                        (letrec ((x-cnd7521
                                                                  (letrec ((x7522
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7522))))
                                                          (if x-cnd7521
                                                            (letrec ((x7523
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7523))
                                                            #f))))
                                                g7520)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7524
                                                        (letrec ((x7526
                                                                  (number? x)))
                                                          (assert x7526)))
                                                       (g7525
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7527
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7528
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7528)))))
                                                            g7527))))
                                                g7525)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7529
                                                        (letrec ((val7244
                                                                  (letrec ((x7530
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7530
                                                                     9))))
                                                          (letrec ((g7531
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7532
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7532
                                                                                   10))))
                                                                        (letrec ((g7533
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7534
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7534
                                                                                       32)))))
                                                                          g7533)))))
                                                            g7531))))
                                                g7529)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7535
                                                        (letrec ((x7536
                                                                  (letrec ((x7537
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7537))))
                                                          (cdr x7536))))
                                                g7535)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7538
                                                        (letrec ((x7540
                                                                  (number? x)))
                                                          (assert x7540)))
                                                       (g7539 (> x 0)))
                                                g7539)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7541 #f)) g7541)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7542
                                                        (letrec ((x7543
                                                                  (cdr x)))
                                                          (cdr x7543))))
                                                g7542)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7544
                                                        (letrec ((x7546
                                                                  (number? x)))
                                                          (assert x7546)))
                                                       (g7545
                                                        (letrec ((x-cnd7547
                                                                  (< x 0)))
                                                          (if x-cnd7547
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7545)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7548
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7549
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7550
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7550
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7551
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7552
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7552
                                                                                                  (letrec ((x-cnd7553
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7553
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7554
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7555
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7555
                                                                                                                (letrec ((x-cnd7556
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7556
                                                                                                                    (letrec ((x-cnd7557
                                                                                                                              (letrec ((x7559
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7558
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7559
                                                                                                                                 x7558))))
                                                                                                                      (if x-cnd7557
                                                                                                                        (letrec ((x7561
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7560
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7561
                                                                                                                           x7560))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7562
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7563
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7563
                                                                                                                    (letrec ((x-cnd7564
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7564
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7565
                                                                                                                                    (letrec ((x-cnd7566
                                                                                                                                              (letrec ((x7567
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7567
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7566
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7568
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7569
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7570
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
                                                                                                                                                                                         x7571))))
                                                                                                                                                                              (if x-cnd7570
                                                                                                                                                                                (letrec ((x7573
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7573))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7569))))
                                                                                                                                                      g7568))))
                                                                                                                                          (letrec ((g7574
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7574))
                                                                                                                                        #f))))
                                                                                                                            g7565))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7562)))))
                                                                                        g7554)))))
                                                                          g7551)))))
                                                            g7549))))
                                                g7548)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7575
                                                        (letrec ((x7576
                                                                  (letrec ((x7577
                                                                            (letrec ((x7578
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7578))))
                                                                    (car
                                                                     x7577))))
                                                          (cdr x7576))))
                                                g7575)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7579
                                                        (letrec ((x7580
                                                                  (letrec ((x7581
                                                                            (letrec ((x7582
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7582))))
                                                                    (car
                                                                     x7581))))
                                                          (car x7580))))
                                                g7579)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7583 (eq? x y)))
                                                g7583)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7584
                                                        (letrec ((x7586
                                                                  (number? x)))
                                                          (assert x7586)))
                                                       (g7585
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7587
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7588
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7588)))))
                                                            g7587))))
                                                g7585)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7589
                                                        (letrec ((x7592
                                                                  (string?
                                                                   filename)))
                                                          (assert x7592)))
                                                       (g7590
                                                        (letrec ((x7593
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7593)))
                                                       (g7591
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7594
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7595 res))
                                                            g7595))))
                                                g7591)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7596 (cons x '())))
                                                g7596)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7597
                                                        (letrec ((x7600
                                                                  (char? c1)))
                                                          (assert x7600)))
                                                       (g7598
                                                        (letrec ((x7601
                                                                  (char? c2)))
                                                          (assert x7601)))
                                                       (g7599
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7602
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7602))))
                                                g7599)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7603
                                                        (letrec ((x7604
                                                                  (letrec ((x7605
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7605))))
                                                          (cdr x7604))))
                                                g7603)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7606
                                                        (letrec ((x7607
                                                                  (letrec ((x7608
                                                                            (letrec ((x7609
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7609))))
                                                                    (car
                                                                     x7608))))
                                                          (cdr x7607))))
                                                g7606)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7610
                                                        (letrec ((x7611
                                                                  (letrec ((x7612
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7612))))
                                                          (car x7611))))
                                                g7610)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7613
                                                        (letrec ((x7614
                                                                  (letrec ((x7615
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7615))))
                                                          (car x7614))))
                                                g7613)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7616
                                                        (letrec ((x7619
                                                                  (char? c1)))
                                                          (assert x7619)))
                                                       (g7617
                                                        (letrec ((x7620
                                                                  (char? c2)))
                                                          (assert x7620)))
                                                       (g7618
                                                        (letrec ((x7621
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7621))))
                                                g7618)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7622
                                                        (letrec ((x7623
                                                                  (letrec ((x7624
                                                                            (letrec ((x7625
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7625))))
                                                                    (car
                                                                     x7624))))
                                                          (car x7623))))
                                                g7622)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7626
                                                        (letrec ((x7628
                                                                  (number? x)))
                                                          (assert x7628)))
                                                       (g7627 (< x 0)))
                                                g7627)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7629 (memq e l)))
                                                g7629)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7630
                                                        (letrec ((x7631
                                                                  (letrec ((x7632
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7632))))
                                                          (car x7631))))
                                                g7630)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7633 '())) g7633)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7634
                                                        (letrec ((x7636
                                                                  (list? l)))
                                                          (assert x7636)))
                                                       (g7635
                                                        (letrec ((x-cnd7637
                                                                  (null? l)))
                                                          (if x-cnd7637
                                                            '()
                                                            (letrec ((x7640
                                                                      (letrec ((x7641
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7641)))
                                                                     (x7638
                                                                      (letrec ((x7639
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7639))))
                                                              (append
                                                               x7640
                                                               x7638))))))
                                                g7635)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7642
                                                        (letrec ((x7643
                                                                  (letrec ((x7644
                                                                            (letrec ((x7645
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7645))))
                                                                    (car
                                                                     x7644))))
                                                          (car x7643))))
                                                g7642)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7646
                                                        (letrec ((x7647
                                                                  (letrec ((x7648
                                                                            (letrec ((x7649
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7649))))
                                                                    (cdr
                                                                     x7648))))
                                                          (cdr x7647))))
                                                g7646)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7650
                                                        (letrec ((x7652
                                                                  (number? x)))
                                                          (assert x7652)))
                                                       (g7651
                                                        (letrec ((x7653
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7653))))
                                                g7651)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7654
                                                        (letrec ((x7655
                                                                  (letrec ((x7656
                                                                            (letrec ((x7657
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7657))))
                                                                    (car
                                                                     x7656))))
                                                          (car x7655))))
                                                g7654)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7658
                                                        (letrec ((x7661
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7661)))
                                                       (g7659
                                                        (letrec ((x7662
                                                                  (list?
                                                                   args)))
                                                          (assert x7662)))
                                                       (g7660
                                                        (letrec ((x-cnd7663
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7663
                                                            (letrec ((g7664
                                                                      (proc)))
                                                              g7664)
                                                            (letrec ((x-cnd7665
                                                                      (letrec ((x7666
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7666))))
                                                              (if x-cnd7665
                                                                (letrec ((g7667
                                                                          (letrec ((x7668
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7668))))
                                                                  g7667)
                                                                (letrec ((x-cnd7669
                                                                          (letrec ((x7670
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7670))))
                                                                  (if x-cnd7669
                                                                    (letrec ((g7671
                                                                              (letrec ((x7673
                                                                                        (car
                                                                                         args))
                                                                                       (x7672
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7673
                                                                                 x7672))))
                                                                      g7671)
                                                                    (letrec ((x-cnd7674
                                                                              (letrec ((x7675
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7675))))
                                                                      (if x-cnd7674
                                                                        (letrec ((g7676
                                                                                  (letrec ((x7679
                                                                                            (car
                                                                                             args))
                                                                                           (x7678
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7677
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7679
                                                                                     x7678
                                                                                     x7677))))
                                                                          g7676)
                                                                        (letrec ((x-cnd7680
                                                                                  (letrec ((x7681
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7681))))
                                                                          (if x-cnd7680
                                                                            (letrec ((g7682
                                                                                      (letrec ((x7686
                                                                                                (car
                                                                                                 args))
                                                                                               (x7685
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7684
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7683
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7686
                                                                                         x7685
                                                                                         x7684
                                                                                         x7683))))
                                                                              g7682)
                                                                            (letrec ((x-cnd7687
                                                                                      (letrec ((x7688
                                                                                                (letrec ((x7689
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7689))))
                                                                                        (null?
                                                                                         x7688))))
                                                                              (if x-cnd7687
                                                                                (letrec ((g7690
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
                                                                                                     args))
                                                                                                   (x7691
                                                                                                    (letrec ((x7692
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7692))))
                                                                                            (proc
                                                                                             x7696
                                                                                             x7695
                                                                                             x7694
                                                                                             x7693
                                                                                             x7691))))
                                                                                  g7690)
                                                                                (letrec ((x-cnd7697
                                                                                          (letrec ((x7698
                                                                                                    (letrec ((x7699
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7699))))
                                                                                            (null?
                                                                                             x7698))))
                                                                                  (if x-cnd7697
                                                                                    (letrec ((g7700
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
                                                                                                           x7702))))
                                                                                                (proc
                                                                                                 x7708
                                                                                                 x7707
                                                                                                 x7706
                                                                                                 x7705
                                                                                                 x7703
                                                                                                 x7701))))
                                                                                      g7700)
                                                                                    (letrec ((x-cnd7709
                                                                                              (letrec ((x7710
                                                                                                        (letrec ((x7711
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7711))))
                                                                                                (null?
                                                                                                 x7710))))
                                                                                      (if x-cnd7709
                                                                                        (letrec ((g7712
                                                                                                  (letrec ((x7722
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7721
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7720
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7719
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7717
                                                                                                            (letrec ((x7718
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7718)))
                                                                                                           (x7715
                                                                                                            (letrec ((x7716
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7716)))
                                                                                                           (x7713
                                                                                                            (letrec ((x7714
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7714))))
                                                                                                    (proc
                                                                                                     x7722
                                                                                                     x7721
                                                                                                     x7720
                                                                                                     x7719
                                                                                                     x7717
                                                                                                     x7715
                                                                                                     x7713))))
                                                                                          g7712)
                                                                                        (letrec ((g7723
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7723)))))))))))))))))))
                                                g7660)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7724
                                                        (letrec ((x7726
                                                                  (list? l)))
                                                          (assert x7726)))
                                                       (g7725
                                                        (letrec ((x-cnd7727
                                                                  (null? l)))
                                                          (if x-cnd7727
                                                            #f
                                                            (letrec ((x-cnd7728
                                                                      (letrec ((x7729
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7729
                                                                         e))))
                                                              (if x-cnd7728
                                                                l
                                                                (letrec ((x7730
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7730))))))))
                                                g7725)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7731
                                                        (letrec ((x7732
                                                                  (letrec ((x7733
                                                                            (letrec ((x7734
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7734))))
                                                                    (cdr
                                                                     x7733))))
                                                          (cdr x7732))))
                                                g7731)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7735
                                                        (letrec ((x7736
                                                                  (letrec ((x7737
                                                                            (letrec ((x7738
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7738))))
                                                                    (cdr
                                                                     x7737))))
                                                          (car x7736))))
                                                g7735)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7739 (random 42)))
                                                g7739)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7740
                                                        (letrec ((x7742
                                                                  (number? x)))
                                                          (assert x7742)))
                                                       (g7741 (= x 0)))
                                                g7741)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7743
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7744
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7744))))
                                                g7743)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7745
                                                        (letrec ((x7746
                                                                  (cdr x)))
                                                          (car x7746))))
                                                g7745)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7747
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd7748
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7748
                                                                      (letrec ((x7749
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7749))
                                                                      #f))))
                                                          (letrec ((g7750
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g7750))))
                                                g7747)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7751
                                                        (letrec ((x7752
                                                                  (letrec ((x7753
                                                                            (letrec ((x7754
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7754))))
                                                                    (cdr
                                                                     x7753))))
                                                          (cdr x7752))))
                                                g7751)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7755
                                                        (letrec ((x-cnd7756
                                                                  (letrec ((x7757
                                                                            #\0))
                                                                    (char<=?
                                                                     x7757
                                                                     c))))
                                                          (if x-cnd7756
                                                            (letrec ((x7758
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7758))
                                                            #f))))
                                                g7755)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7759
                                                        (letrec ((x7761
                                                                  (list? l)))
                                                          (assert x7761)))
                                                       (g7760
                                                        (letrec ((x-cnd7762
                                                                  (null? l)))
                                                          (if x-cnd7762
                                                            #f
                                                            (letrec ((x-cnd7763
                                                                      (letrec ((x7764
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7764
                                                                         k))))
                                                              (if x-cnd7763
                                                                (car l)
                                                                (letrec ((x7765
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7765))))))))
                                                g7760)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7766 (if x #f #t)))
                                                g7766)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7767 (append l1 l2)))
                                                g7767)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7768
                                                        (letrec ((x7770
                                                                  (list? l)))
                                                          (assert x7770)))
                                                       (g7769
                                                        (letrec ((x-cnd7771
                                                                  (null? l)))
                                                          (if x-cnd7771
                                                            #f
                                                            (letrec ((x-cnd7772
                                                                      (letrec ((x7773
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7773
                                                                         e))))
                                                              (if x-cnd7772
                                                                l
                                                                (letrec ((x7774
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7774))))))))
                                                g7769)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7775
                                                        (letrec ((x7776
                                                                  (letrec ((x7777
                                                                            (letrec ((x7778
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7778))))
                                                                    (cdr
                                                                     x7777))))
                                                          (car x7776))))
                                                g7775)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7779
                                                        (letrec ((x7781
                                                                  (list? l)))
                                                          (assert x7781)))
                                                       (g7780
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7782
                                                                              (letrec ((x-cnd7783
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7783
                                                                                  0
                                                                                  (letrec ((x7784
                                                                                            (letrec ((x7785
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7785))))
                                                                                    (+
                                                                                     1
                                                                                     x7784))))))
                                                                      g7782))))
                                                          (letrec ((g7786
                                                                    (rec l)))
                                                            g7786))))
                                                g7780)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7787
                                                        (letrec ((x7790
                                                                  (char? c1)))
                                                          (assert x7790)))
                                                       (g7788
                                                        (letrec ((x7791
                                                                  (char? c2)))
                                                          (assert x7791)))
                                                       (g7789
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7792
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7792))))
                                                g7789)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7793
                                                        (letrec ((x7794
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7794))))
                                                g7793)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7795
                                                        (letrec ((x7796
                                                                  (letrec ((x7797
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7797))))
                                                          (cdr x7796))))
                                                g7795)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7798
                                                        (letrec ((x7800
                                                                  (list? l)))
                                                          (assert x7800)))
                                                       (g7799
                                                        (letrec ((x-cnd7801
                                                                  (null? l)))
                                                          (if x-cnd7801
                                                            #f
                                                            (letrec ((x-cnd7802
                                                                      (letrec ((x7803
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7803
                                                                         k))))
                                                              (if x-cnd7802
                                                                (car l)
                                                                (letrec ((x7804
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7804))))))))
                                                g7799)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7805
                                                        (letrec ((x7806
                                                                  (car x)))
                                                          (car x7806))))
                                                g7805)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7807
                                                        (letrec ((x7810
                                                                  (char? c1)))
                                                          (assert x7810)))
                                                       (g7808
                                                        (letrec ((x7811
                                                                  (char? c2)))
                                                          (assert x7811)))
                                                       (g7809
                                                        (letrec ((x7812
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7812))))
                                                g7809)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7813
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7814
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7814))))
                                                g7813)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7815
                                                        (letrec ((x7818
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7818)))
                                                       (g7816
                                                        (letrec ((x7819
                                                                  (list? l)))
                                                          (assert x7819)))
                                                       (g7817
                                                        (letrec ((x-cnd7820
                                                                  (null? l)))
                                                          (if x-cnd7820
                                                            #t
                                                            (letrec ((x-cnd7821
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7821
                                                                (letrec ((g7822
                                                                          (letrec ((x7824
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7824)))
                                                                         (g7823
                                                                          (letrec ((x7825
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7825))))
                                                                  g7823)
                                                                '()))))))
                                                g7817)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7826
                                                        (letrec ((x7828
                                                                  (number? x)))
                                                          (assert x7828)))
                                                       (g7827
                                                        (letrec ((x-cnd7829
                                                                  (< x 0)))
                                                          (if x-cnd7829
                                                            (- 0 x)
                                                            x))))
                                                g7827)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7830
                                                        (letrec ((x7833
                                                                  (char? c1)))
                                                          (assert x7833)))
                                                       (g7831
                                                        (letrec ((x7834
                                                                  (char? c2)))
                                                          (assert x7834)))
                                                       (g7832
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7835
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7835))))
                                                g7832)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7836
                                                        (letrec ((x7837
                                                                  (letrec ((x7838
                                                                            (letrec ((x7839
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7839))))
                                                                    (cdr
                                                                     x7838))))
                                                          (car x7837))))
                                                g7836)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7840 #f)) g7840)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7841
                                                        (letrec ((x7843
                                                                  (letrec ((x7844
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7844)))
                                                                 (x7842
                                                                  (gcd m n)))
                                                          (/ x7843 x7842))))
                                                g7841)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7845
                                                        (letrec ((x7847
                                                                  (number? x)))
                                                          (assert x7847)))
                                                       (g7846
                                                        (letrec ((x7848
                                                                  (<= x y)))
                                                          (not x7848))))
                                                g7846)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7849
                                                        (letrec ((x7853
                                                                  (list? l)))
                                                          (assert x7853)))
                                                       (g7850
                                                        (letrec ((x7854
                                                                  (number?
                                                                   index)))
                                                          (assert x7854)))
                                                       (g7851
                                                        (letrec ((x7855
                                                                  (letrec ((x7856
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7856))))
                                                          (assert x7855)))
                                                       (g7852
                                                        (letrec ((x-cnd7857
                                                                  (= index 0)))
                                                          (if x-cnd7857
                                                            (car l)
                                                            (letrec ((x7859
                                                                      (cdr l))
                                                                     (x7858
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7859
                                                               x7858))))))
                                                g7852)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7860
                                                        (letrec ((x-cnd7861
                                                                  (= b 0)))
                                                          (if x-cnd7861
                                                            a
                                                            (letrec ((x7862
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7862))))))
                                                g7860)))
                                           (zip
                                            (lambda (xs ys)
                                              (letrec ((g7863
                                                        (letrec ((x-cnd7864
                                                                  (letrec ((x7866
                                                                            (empty?
                                                                             xs))
                                                                           (x7865
                                                                            (empty?
                                                                             ys)))
                                                                    (and x7866
                                                                         x7865))))
                                                          (if x-cnd7864
                                                            (letrec ((g7867
                                                                      empty))
                                                              g7867)
                                                            (letrec ((x-cnd7868
                                                                      (letrec ((x7870
                                                                                (cons?
                                                                                 xs))
                                                                               (x7869
                                                                                (cons?
                                                                                 ys)))
                                                                        (and x7870
                                                                             x7869))))
                                                              (if x-cnd7868
                                                                (letrec ((g7871
                                                                          (letrec ((x7875
                                                                                    (letrec ((x7877
                                                                                              (car
                                                                                               xs))
                                                                                             (x7876
                                                                                              (car
                                                                                               ys)))
                                                                                      (cons
                                                                                       x7877
                                                                                       x7876)))
                                                                                   (x7872
                                                                                    (letrec ((x7874
                                                                                              (cdr
                                                                                               xs))
                                                                                             (x7873
                                                                                              (cdr
                                                                                               ys)))
                                                                                      (zip
                                                                                       x7874
                                                                                       x7873))))
                                                                            (cons
                                                                             x7875
                                                                             x7872))))
                                                                  g7871)
                                                                (letrec ((g7878
                                                                          'fail))
                                                                  g7878)))))))
                                                g7863)))
                                           (mk-list
                                            (lambda (n)
                                              (letrec ((g7879
                                                        (letrec ((x-cnd7880
                                                                  (< n 0)))
                                                          (if x-cnd7880
                                                            empty
                                                            (letrec ((x7881
                                                                      (letrec ((x7882
                                                                                (-
                                                                                 n
                                                                                 1)))
                                                                        (mk-list
                                                                         x7882))))
                                                              (cons
                                                               n
                                                               x7881))))))
                                                g7879)))
                                           (main
                                            (lambda (n)
                                              (letrec ((g7883
                                                        (letrec ((xs
                                                                  (mk-list n)))
                                                          (letrec ((g7884
                                                                    (zip
                                                                     xs
                                                                     xs)))
                                                            g7884))))
                                                g7883))))
                                    (letrec ((g7885
                                              (letrec ((x7888
                                                        ((lambda (j7332
                                                                  k7333
                                                                  f7334)
                                                           (letrec ((g7889
                                                                     (lambda (g7331)
                                                                       (letrec ((g7890
                                                                                 (letrec ((x7893
                                                                                           (listof
                                                                                            integer?/c))
                                                                                          (x7891
                                                                                           (letrec ((x7892
                                                                                                     (integer?/c
                                                                                                      j7332
                                                                                                      k7333
                                                                                                      g7331)))
                                                                                             (f7334
                                                                                              x7892))))
                                                                                   (x7893
                                                                                    j7332
                                                                                    k7333
                                                                                    x7891))))
                                                                         g7890))))
                                                             g7889))
                                                         'module
                                                         'importer
                                                         mk-list))
                                                       (x7887 (input)))
                                                (x7888 x7887)))
                                             (g7886
                                              (letrec ((x7895
                                                        ((lambda (j7336
                                                                  k7337
                                                                  f7338)
                                                           (letrec ((g7896
                                                                     (lambda (g7335)
                                                                       (letrec ((g7897
                                                                                 (letrec ((x7900
                                                                                           (letrec ((x7901
                                                                                                     (cons/c
                                                                                                      integer?/c
                                                                                                      integer?/c)))
                                                                                             (listof
                                                                                              x7901)))
                                                                                          (x7898
                                                                                           (letrec ((x7899
                                                                                                     (integer?/c
                                                                                                      j7336
                                                                                                      k7337
                                                                                                      g7335)))
                                                                                             (f7338
                                                                                              x7899))))
                                                                                   (x7900
                                                                                    j7336
                                                                                    k7337
                                                                                    x7898))))
                                                                         g7897))))
                                                             g7896))
                                                         'module
                                                         'importer
                                                         main))
                                                       (x7894 (input)))
                                                (x7895 x7894))))
                                      g7886))))
                          g7352))))
              g7350)))
    g7349))
