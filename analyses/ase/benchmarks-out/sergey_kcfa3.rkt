(letrec ((any? (lambda (v) (letrec ((g7331 #t)) g7331)))
         (meta (lambda (v) (letrec ((g7332 v)) g7332)))
         (member
          (lambda (v lst)
            (letrec ((g7333
                      (letrec ((g7334
                                (letrec ((x-e7335 lst))
                                  (match
                                   x-e7335
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7336 (eq? v v1)))
                                       (if x-cnd7336 #t (member v vs)))))))))
                        g7334)))
              g7333)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7337 (lambda (v) (letrec ((g7338 v)) g7338)))) g7337)))
         (nonzero?
          (lambda (v)
            (letrec ((g7339 (letrec ((x7340 (= v 0))) (not x7340)))) g7339))))
  (letrec ((g7341
            (letrec ((g7342
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7343 '())
                                 (g7344
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7345
                                                        (lambda (k j lst)
                                                          (letrec ((g7346
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7347
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7347))
                                                                     lst)))
                                                            g7346))))
                                                g7345)))
                                           (real?/c
                                            (lambda (g7259 g7260 g7261)
                                              (letrec ((g7348
                                                        (letrec ((x-cnd7349
                                                                  (real?
                                                                   g7261)))
                                                          (if x-cnd7349
                                                            g7261
                                                            (blame
                                                             g7259
                                                             'real?)))))
                                                g7348)))
                                           (boolean?/c
                                            (lambda (g7262 g7263 g7264)
                                              (letrec ((g7350
                                                        (letrec ((x-cnd7351
                                                                  (boolean?
                                                                   g7264)))
                                                          (if x-cnd7351
                                                            g7264
                                                            (blame
                                                             g7262
                                                             'boolean?)))))
                                                g7350)))
                                           (number?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7352
                                                        (letrec ((x-cnd7353
                                                                  (number?
                                                                   g7267)))
                                                          (if x-cnd7353
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'number?)))))
                                                g7352)))
                                           (any/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7354
                                                        (letrec ((x-cnd7355
                                                                  ((lambda (v)
                                                                     (letrec ((g7356
                                                                               #t))
                                                                       g7356))
                                                                   g7270)))
                                                          (if x-cnd7355
                                                            g7270
                                                            (blame
                                                             g7268
                                                             '(lambda (v)
                                                                #t))))))
                                                g7354)))
                                           (any?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7357
                                                        (letrec ((x-cnd7358
                                                                  ((lambda (v)
                                                                     (letrec ((g7359
                                                                               #t))
                                                                       g7359))
                                                                   g7273)))
                                                          (if x-cnd7358
                                                            g7273
                                                            (blame
                                                             g7271
                                                             '(lambda (v)
                                                                #t))))))
                                                g7357)))
                                           (cons?/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7360
                                                        (letrec ((x-cnd7361
                                                                  (pair?
                                                                   g7276)))
                                                          (if x-cnd7361
                                                            g7276
                                                            (blame
                                                             g7274
                                                             'pair?)))))
                                                g7360)))
                                           (pair?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7362
                                                        (letrec ((x-cnd7363
                                                                  (pair?
                                                                   g7279)))
                                                          (if x-cnd7363
                                                            g7279
                                                            (blame
                                                             g7277
                                                             'pair?)))))
                                                g7362)))
                                           (integer?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7364
                                                        (letrec ((x-cnd7365
                                                                  (integer?
                                                                   g7282)))
                                                          (if x-cnd7365
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'integer?)))))
                                                g7364)))
                                           (symbol?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7366
                                                        (letrec ((x-cnd7367
                                                                  (symbol?
                                                                   g7285)))
                                                          (if x-cnd7367
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'symbol?)))))
                                                g7366)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7368
                                                        (lambda (k j v)
                                                          (letrec ((g7369
                                                                    (letrec ((x-cnd7370
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7370
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7369))))
                                                g7368)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7371
                                                        (lambda (k j v)
                                                          (letrec ((g7372
                                                                    (letrec ((x-cnd7373
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7373
                                                                        '()
                                                                        (letrec ((x7377
                                                                                  (letrec ((x7378
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7378)))
                                                                                 (x7374
                                                                                  (letrec ((x7376
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7375
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7376
                                                                                     k
                                                                                     j
                                                                                     x7375))))
                                                                          (orig-cons
                                                                           x7377
                                                                           x7374))))))
                                                            g7372))))
                                                g7371)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7379 #t)) g7379)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7380
                                                        (letrec ((x7381
                                                                  (= v 0)))
                                                          (not x7381))))
                                                g7380)))
                                           (nonzero?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7382
                                                        (letrec ((x-cnd7383
                                                                  ((lambda (v)
                                                                     (letrec ((g7384
                                                                               (letrec ((x7385
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7385))))
                                                                       g7384))
                                                                   g7288)))
                                                          (if x-cnd7383
                                                            g7288
                                                            (blame
                                                             g7286
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7382)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7386 v)) g7386)))
                                           (+
                                            ((lambda (j7291 k7292 f7293)
                                               (letrec ((g7388
                                                         (lambda (g7289 g7290)
                                                           (letrec ((g7389
                                                                     (letrec ((x7390
                                                                               (letrec ((x7392
                                                                                         (number?/c
                                                                                          j7291
                                                                                          k7292
                                                                                          g7289))
                                                                                        (x7391
                                                                                         (number?/c
                                                                                          j7291
                                                                                          k7292
                                                                                          g7290)))
                                                                                 (f7293
                                                                                  x7392
                                                                                  x7391))))
                                                                       (number?/c
                                                                        j7291
                                                                        k7292
                                                                        x7390))))
                                                             g7389))))
                                                 g7388))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7387 (orig-+ a b)))
                                                 g7387))))
                                           (-
                                            ((lambda (j7296 k7297 f7298)
                                               (letrec ((g7394
                                                         (lambda (g7294 g7295)
                                                           (letrec ((g7395
                                                                     (letrec ((x7396
                                                                               (letrec ((x7398
                                                                                         (number?/c
                                                                                          j7296
                                                                                          k7297
                                                                                          g7294))
                                                                                        (x7397
                                                                                         (number?/c
                                                                                          j7296
                                                                                          k7297
                                                                                          g7295)))
                                                                                 (f7298
                                                                                  x7398
                                                                                  x7397))))
                                                                       (number?/c
                                                                        j7296
                                                                        k7297
                                                                        x7396))))
                                                             g7395))))
                                                 g7394))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7393 (orig-- a b)))
                                                 g7393))))
                                           (*
                                            ((lambda (j7301 k7302 f7303)
                                               (letrec ((g7400
                                                         (lambda (g7299 g7300)
                                                           (letrec ((g7401
                                                                     (letrec ((x7402
                                                                               (letrec ((x7404
                                                                                         (number?/c
                                                                                          j7301
                                                                                          k7302
                                                                                          g7299))
                                                                                        (x7403
                                                                                         (number?/c
                                                                                          j7301
                                                                                          k7302
                                                                                          g7300)))
                                                                                 (f7303
                                                                                  x7404
                                                                                  x7403))))
                                                                       (number?/c
                                                                        j7301
                                                                        k7302
                                                                        x7402))))
                                                             g7401))))
                                                 g7400))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7399 (orig-* a b)))
                                                 g7399))))
                                           (/
                                            ((lambda (j7306 k7307 f7308)
                                               (letrec ((g7406
                                                         (lambda (g7304 g7305)
                                                           (letrec ((g7407
                                                                     (letrec ((x7408
                                                                               (letrec ((x7410
                                                                                         (number?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7304))
                                                                                        (x7409
                                                                                         (number?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7305)))
                                                                                 (f7308
                                                                                  x7410
                                                                                  x7409))))
                                                                       (number?/c
                                                                        j7306
                                                                        k7307
                                                                        x7408))))
                                                             g7407))))
                                                 g7406))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7405 (orig-/ a b)))
                                                 g7405))))
                                           (car
                                            ((lambda (j7310 k7311 f7312)
                                               (letrec ((g7412
                                                         (lambda (g7309)
                                                           (letrec ((g7413
                                                                     (letrec ((x7414
                                                                               (letrec ((x7415
                                                                                         (pair?/c
                                                                                          j7310
                                                                                          k7311
                                                                                          g7309)))
                                                                                 (f7312
                                                                                  x7415))))
                                                                       (any/c
                                                                        j7310
                                                                        k7311
                                                                        x7414))))
                                                             g7413))))
                                                 g7412))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7411 (orig-car p)))
                                                 g7411))))
                                           (cdr
                                            ((lambda (j7314 k7315 f7316)
                                               (letrec ((g7417
                                                         (lambda (g7313)
                                                           (letrec ((g7418
                                                                     (letrec ((x7419
                                                                               (letrec ((x7420
                                                                                         (pair?/c
                                                                                          j7314
                                                                                          k7315
                                                                                          g7313)))
                                                                                 (f7316
                                                                                  x7420))))
                                                                       (any/c
                                                                        j7314
                                                                        k7315
                                                                        x7419))))
                                                             g7418))))
                                                 g7417))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7416 (orig-cdr p)))
                                                 g7416))))
                                           (cons
                                            ((lambda (j7319 k7320 f7321)
                                               (letrec ((g7422
                                                         (lambda (g7317 g7318)
                                                           (letrec ((g7423
                                                                     (letrec ((x7424
                                                                               (letrec ((x7426
                                                                                         (any/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7317))
                                                                                        (x7425
                                                                                         (any/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7318)))
                                                                                 (f7321
                                                                                  x7426
                                                                                  x7425))))
                                                                       (pair?/c
                                                                        j7319
                                                                        k7320
                                                                        x7424))))
                                                             g7423))))
                                                 g7422))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7421
                                                         (orig-cons a b)))
                                                 g7421))))
                                           (vector-ref
                                            ((lambda (j7323 k7324 f7325)
                                               (letrec ((g7428
                                                         (lambda (g7322)
                                                           (letrec ((g7429
                                                                     (letrec ((x7430
                                                                               (letrec ((x7431
                                                                                         (vector?/c
                                                                                          j7323
                                                                                          k7324
                                                                                          g7322)))
                                                                                 (f7325
                                                                                  x7431))))
                                                                       (integer?/c
                                                                        j7323
                                                                        k7324
                                                                        x7430))))
                                                             g7429))))
                                                 g7428))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7427
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7427))))
                                           (vector-set!
                                            ((lambda (j7328 k7329 f7330)
                                               (letrec ((g7433
                                                         (lambda (g7326 g7327)
                                                           (letrec ((g7434
                                                                     (letrec ((x7435
                                                                               (letrec ((x7437
                                                                                         (vector?/c
                                                                                          j7328
                                                                                          k7329
                                                                                          g7326))
                                                                                        (x7436
                                                                                         (integer?/c
                                                                                          j7328
                                                                                          k7329
                                                                                          g7327)))
                                                                                 (f7330
                                                                                  x7437
                                                                                  x7436))))
                                                                       (any/c
                                                                        j7328
                                                                        k7329
                                                                        x7435))))
                                                             g7434))))
                                                 g7433))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7432
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7432))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7438
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7438)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7439
                                                        (letrec ((x7440
                                                                  (letrec ((x7441
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7441))))
                                                          (cdr x7440))))
                                                g7439)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7442
                                                        (letrec ((x7445
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7445)))
                                                       (g7443
                                                        (letrec ((x7446
                                                                  (list? l)))
                                                          (assert x7446)))
                                                       (g7444
                                                        (letrec ((x-cnd7447
                                                                  (null? l)))
                                                          (if x-cnd7447
                                                            '()
                                                            (letrec ((x7450
                                                                      (letrec ((x7451
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7451)))
                                                                     (x7448
                                                                      (letrec ((x7449
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7449))))
                                                              (cons
                                                               x7450
                                                               x7448))))))
                                                g7444)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7452
                                                        (letrec ((x7453
                                                                  (car x)))
                                                          (cdr x7453))))
                                                g7452)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7454
                                                        (letrec ((x7455
                                                                  (letrec ((x7456
                                                                            (letrec ((x7457
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7457))))
                                                                    (cdr
                                                                     x7456))))
                                                          (car x7455))))
                                                g7454)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7458
                                                        (letrec ((x7459
                                                                  (letrec ((x7460
                                                                            (letrec ((x7461
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7461))))
                                                                    (car
                                                                     x7460))))
                                                          (cdr x7459))))
                                                g7458)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7462
                                                        (letrec ((x7465
                                                                  (string?
                                                                   filename)))
                                                          (assert x7465)))
                                                       (g7463
                                                        (letrec ((x7466
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7466)))
                                                       (g7464
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7467
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7468 res))
                                                            g7468))))
                                                g7464)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7469
                                                        (letrec ((x7470
                                                                  (letrec ((x7471
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7471))))
                                                          (car x7470))))
                                                g7469)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7472
                                                        (letrec ((x7473
                                                                  (letrec ((x7474
                                                                            (letrec ((x7475
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7475))))
                                                                    (car
                                                                     x7474))))
                                                          (cdr x7473))))
                                                g7472)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7476
                                                        (letrec ((x7478
                                                                  (list? l)))
                                                          (assert x7478)))
                                                       (g7477
                                                        (letrec ((x-cnd7479
                                                                  (null? l)))
                                                          (if x-cnd7479
                                                            #f
                                                            (letrec ((x-cnd7480
                                                                      (letrec ((x7481
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7481
                                                                         k))))
                                                              (if x-cnd7480
                                                                (car l)
                                                                (letrec ((x7482
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7482))))))))
                                                g7477)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7483
                                                        (letrec ((x7484
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7484))))
                                                g7483)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7485
                                                        (letrec ((x7487
                                                                  (list? l)))
                                                          (assert x7487)))
                                                       (g7486
                                                        (letrec ((x-cnd7488
                                                                  (null? l)))
                                                          (if x-cnd7488
                                                            ""
                                                            (letrec ((x7491
                                                                      (letrec ((x7492
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7492)))
                                                                     (x7489
                                                                      (letrec ((x7490
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7490))))
                                                              (string-append
                                                               x7491
                                                               x7489))))))
                                                g7486)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7493
                                                        (letrec ((x7496
                                                                  (char? c1)))
                                                          (assert x7496)))
                                                       (g7494
                                                        (letrec ((x7497
                                                                  (char? c2)))
                                                          (assert x7497)))
                                                       (g7495
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7498
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7498))))
                                                g7495)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7499
                                                        (letrec ((x7500
                                                                  (letrec ((x7501
                                                                            (letrec ((x7502
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7502))))
                                                                    (cdr
                                                                     x7501))))
                                                          (cdr x7500))))
                                                g7499)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7503
                                                        (letrec ((x7506
                                                                  (list? l)))
                                                          (assert x7506)))
                                                       (g7504
                                                        (letrec ((x7507
                                                                  (number?)))
                                                          (assert x7507)))
                                                       (g7505
                                                        (letrec ((x-cnd7508
                                                                  (zero? k)))
                                                          (if x-cnd7508
                                                            x
                                                            (letrec ((x7510
                                                                      (cdr x))
                                                                     (x7509
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7510
                                                               x7509))))))
                                                g7505)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7511 '())) g7511)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7512
                                                        (letrec ((x-cnd7513
                                                                  (letrec ((x7514
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7514))))
                                                          (if x-cnd7513
                                                            (letrec ((x7515
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7515))
                                                            #f))))
                                                g7512)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7516
                                                        (letrec ((x7518
                                                                  (number? x)))
                                                          (assert x7518)))
                                                       (g7517
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7519
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7520
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7520)))))
                                                            g7519))))
                                                g7517)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7521
                                                        (letrec ((val7244
                                                                  (letrec ((x7522
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7522
                                                                     9))))
                                                          (letrec ((g7523
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7524
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7524
                                                                                   10))))
                                                                        (letrec ((g7525
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7526
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7526
                                                                                       32)))))
                                                                          g7525)))))
                                                            g7523))))
                                                g7521)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7527
                                                        (letrec ((x7528
                                                                  (letrec ((x7529
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7529))))
                                                          (cdr x7528))))
                                                g7527)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7530
                                                        (letrec ((x7532
                                                                  (number? x)))
                                                          (assert x7532)))
                                                       (g7531 (> x 0)))
                                                g7531)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7533 #f)) g7533)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7534
                                                        (letrec ((x7535
                                                                  (cdr x)))
                                                          (cdr x7535))))
                                                g7534)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7536
                                                        (letrec ((x7538
                                                                  (number? x)))
                                                          (assert x7538)))
                                                       (g7537
                                                        (letrec ((x-cnd7539
                                                                  (< x 0)))
                                                          (if x-cnd7539
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7537)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7540
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7541
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7542
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7542
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7543
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7544
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7544
                                                                                                  (letrec ((x-cnd7545
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7545
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7546
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7547
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7547
                                                                                                                (letrec ((x-cnd7548
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7548
                                                                                                                    (letrec ((x-cnd7549
                                                                                                                              (letrec ((x7551
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7550
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7551
                                                                                                                                 x7550))))
                                                                                                                      (if x-cnd7549
                                                                                                                        (letrec ((x7553
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7552
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7553
                                                                                                                           x7552))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7554
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7555
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7555
                                                                                                                    (letrec ((x-cnd7556
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7556
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7557
                                                                                                                                    (letrec ((x-cnd7558
                                                                                                                                              (letrec ((x7559
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7559
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7558
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7560
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7561
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7562
                                                                                                                                                                                      (letrec ((x7564
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7563
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7564
                                                                                                                                                                                         x7563))))
                                                                                                                                                                              (if x-cnd7562
                                                                                                                                                                                (letrec ((x7565
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7565))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7561))))
                                                                                                                                                      g7560))))
                                                                                                                                          (letrec ((g7566
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7566))
                                                                                                                                        #f))))
                                                                                                                            g7557))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7554)))))
                                                                                        g7546)))))
                                                                          g7543)))))
                                                            g7541))))
                                                g7540)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7567
                                                        (letrec ((x7568
                                                                  (letrec ((x7569
                                                                            (letrec ((x7570
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7570))))
                                                                    (car
                                                                     x7569))))
                                                          (cdr x7568))))
                                                g7567)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7571
                                                        (letrec ((x7572
                                                                  (letrec ((x7573
                                                                            (letrec ((x7574
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7574))))
                                                                    (car
                                                                     x7573))))
                                                          (car x7572))))
                                                g7571)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7575 (eq? x y)))
                                                g7575)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7576
                                                        (letrec ((x7578
                                                                  (number? x)))
                                                          (assert x7578)))
                                                       (g7577
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7579
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7580
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7580)))))
                                                            g7579))))
                                                g7577)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7581
                                                        (letrec ((x7584
                                                                  (string?
                                                                   filename)))
                                                          (assert x7584)))
                                                       (g7582
                                                        (letrec ((x7585
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7585)))
                                                       (g7583
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7586
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7587 res))
                                                            g7587))))
                                                g7583)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7588 (cons x '())))
                                                g7588)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7589
                                                        (letrec ((x7592
                                                                  (char? c1)))
                                                          (assert x7592)))
                                                       (g7590
                                                        (letrec ((x7593
                                                                  (char? c2)))
                                                          (assert x7593)))
                                                       (g7591
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7594
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7594))))
                                                g7591)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7595
                                                        (letrec ((x7596
                                                                  (letrec ((x7597
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7597))))
                                                          (cdr x7596))))
                                                g7595)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7598
                                                        (letrec ((x7599
                                                                  (letrec ((x7600
                                                                            (letrec ((x7601
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7601))))
                                                                    (car
                                                                     x7600))))
                                                          (cdr x7599))))
                                                g7598)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7602
                                                        (letrec ((x7603
                                                                  (letrec ((x7604
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7604))))
                                                          (car x7603))))
                                                g7602)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7605
                                                        (letrec ((x7606
                                                                  (letrec ((x7607
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7607))))
                                                          (car x7606))))
                                                g7605)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7608
                                                        (letrec ((x7611
                                                                  (char? c1)))
                                                          (assert x7611)))
                                                       (g7609
                                                        (letrec ((x7612
                                                                  (char? c2)))
                                                          (assert x7612)))
                                                       (g7610
                                                        (letrec ((x7613
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7613))))
                                                g7610)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7614
                                                        (letrec ((x7615
                                                                  (letrec ((x7616
                                                                            (letrec ((x7617
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7617))))
                                                                    (car
                                                                     x7616))))
                                                          (car x7615))))
                                                g7614)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7618
                                                        (letrec ((x7620
                                                                  (number? x)))
                                                          (assert x7620)))
                                                       (g7619 (< x 0)))
                                                g7619)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7621 (memq e l)))
                                                g7621)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7622
                                                        (letrec ((x7623
                                                                  (letrec ((x7624
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7624))))
                                                          (car x7623))))
                                                g7622)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7625 '())) g7625)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7626
                                                        (letrec ((x7628
                                                                  (list? l)))
                                                          (assert x7628)))
                                                       (g7627
                                                        (letrec ((x-cnd7629
                                                                  (null? l)))
                                                          (if x-cnd7629
                                                            '()
                                                            (letrec ((x7632
                                                                      (letrec ((x7633
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7633)))
                                                                     (x7630
                                                                      (letrec ((x7631
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7631))))
                                                              (append
                                                               x7632
                                                               x7630))))))
                                                g7627)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7634
                                                        (letrec ((x7635
                                                                  (letrec ((x7636
                                                                            (letrec ((x7637
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7637))))
                                                                    (car
                                                                     x7636))))
                                                          (car x7635))))
                                                g7634)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7638
                                                        (letrec ((x7639
                                                                  (letrec ((x7640
                                                                            (letrec ((x7641
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7641))))
                                                                    (cdr
                                                                     x7640))))
                                                          (cdr x7639))))
                                                g7638)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7642
                                                        (letrec ((x7644
                                                                  (number? x)))
                                                          (assert x7644)))
                                                       (g7643
                                                        (letrec ((x7645
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7645))))
                                                g7643)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7646
                                                        (letrec ((x7647
                                                                  (letrec ((x7648
                                                                            (letrec ((x7649
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7649))))
                                                                    (car
                                                                     x7648))))
                                                          (car x7647))))
                                                g7646)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7650
                                                        (letrec ((x7653
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7653)))
                                                       (g7651
                                                        (letrec ((x7654
                                                                  (list?
                                                                   args)))
                                                          (assert x7654)))
                                                       (g7652
                                                        (letrec ((x-cnd7655
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7655
                                                            (letrec ((g7656
                                                                      (proc)))
                                                              g7656)
                                                            (letrec ((x-cnd7657
                                                                      (letrec ((x7658
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7658))))
                                                              (if x-cnd7657
                                                                (letrec ((g7659
                                                                          (letrec ((x7660
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7660))))
                                                                  g7659)
                                                                (letrec ((x-cnd7661
                                                                          (letrec ((x7662
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7662))))
                                                                  (if x-cnd7661
                                                                    (letrec ((g7663
                                                                              (letrec ((x7665
                                                                                        (car
                                                                                         args))
                                                                                       (x7664
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7665
                                                                                 x7664))))
                                                                      g7663)
                                                                    (letrec ((x-cnd7666
                                                                              (letrec ((x7667
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7667))))
                                                                      (if x-cnd7666
                                                                        (letrec ((g7668
                                                                                  (letrec ((x7671
                                                                                            (car
                                                                                             args))
                                                                                           (x7670
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7669
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7671
                                                                                     x7670
                                                                                     x7669))))
                                                                          g7668)
                                                                        (letrec ((x-cnd7672
                                                                                  (letrec ((x7673
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7673))))
                                                                          (if x-cnd7672
                                                                            (letrec ((g7674
                                                                                      (letrec ((x7678
                                                                                                (car
                                                                                                 args))
                                                                                               (x7677
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7676
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7675
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7678
                                                                                         x7677
                                                                                         x7676
                                                                                         x7675))))
                                                                              g7674)
                                                                            (letrec ((x-cnd7679
                                                                                      (letrec ((x7680
                                                                                                (letrec ((x7681
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7681))))
                                                                                        (null?
                                                                                         x7680))))
                                                                              (if x-cnd7679
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
                                                                                (letrec ((x-cnd7689
                                                                                          (letrec ((x7690
                                                                                                    (letrec ((x7691
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7691))))
                                                                                            (null?
                                                                                             x7690))))
                                                                                  (if x-cnd7689
                                                                                    (letrec ((g7692
                                                                                              (letrec ((x7700
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7699
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7698
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7697
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7695
                                                                                                        (letrec ((x7696
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7696)))
                                                                                                       (x7693
                                                                                                        (letrec ((x7694
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7694))))
                                                                                                (proc
                                                                                                 x7700
                                                                                                 x7699
                                                                                                 x7698
                                                                                                 x7697
                                                                                                 x7695
                                                                                                 x7693))))
                                                                                      g7692)
                                                                                    (letrec ((x-cnd7701
                                                                                              (letrec ((x7702
                                                                                                        (letrec ((x7703
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7703))))
                                                                                                (null?
                                                                                                 x7702))))
                                                                                      (if x-cnd7701
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
                                                                                          g7715)))))))))))))))))))
                                                g7652)))
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
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7736
                                                                    (if val7254
                                                                      val7254
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
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd7740
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7740
                                                                      (letrec ((x7741
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7741))
                                                                      #f))))
                                                          (letrec ((g7742
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g7742))))
                                                g7739)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7743
                                                        (letrec ((x7744
                                                                  (letrec ((x7745
                                                                            (letrec ((x7746
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7746))))
                                                                    (cdr
                                                                     x7745))))
                                                          (cdr x7744))))
                                                g7743)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7747
                                                        (letrec ((x-cnd7748
                                                                  (letrec ((x7749
                                                                            #\0))
                                                                    (char<=?
                                                                     x7749
                                                                     c))))
                                                          (if x-cnd7748
                                                            (letrec ((x7750
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7750))
                                                            #f))))
                                                g7747)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7751
                                                        (letrec ((x7753
                                                                  (list? l)))
                                                          (assert x7753)))
                                                       (g7752
                                                        (letrec ((x-cnd7754
                                                                  (null? l)))
                                                          (if x-cnd7754
                                                            #f
                                                            (letrec ((x-cnd7755
                                                                      (letrec ((x7756
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7756
                                                                         k))))
                                                              (if x-cnd7755
                                                                (car l)
                                                                (letrec ((x7757
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7757))))))))
                                                g7752)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7758 (if x #f #t)))
                                                g7758)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7759 (append l1 l2)))
                                                g7759)))
                                           (memq
                                            (lambda (e l)
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
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7765
                                                                         e))))
                                                              (if x-cnd7764
                                                                l
                                                                (letrec ((x7766
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7766))))))))
                                                g7761)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7767
                                                        (letrec ((x7768
                                                                  (letrec ((x7769
                                                                            (letrec ((x7770
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7770))))
                                                                    (cdr
                                                                     x7769))))
                                                          (car x7768))))
                                                g7767)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7771
                                                        (letrec ((x7773
                                                                  (list? l)))
                                                          (assert x7773)))
                                                       (g7772
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7774
                                                                              (letrec ((x-cnd7775
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7775
                                                                                  0
                                                                                  (letrec ((x7776
                                                                                            (letrec ((x7777
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7777))))
                                                                                    (+
                                                                                     1
                                                                                     x7776))))))
                                                                      g7774))))
                                                          (letrec ((g7778
                                                                    (rec l)))
                                                            g7778))))
                                                g7772)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7779
                                                        (letrec ((x7782
                                                                  (char? c1)))
                                                          (assert x7782)))
                                                       (g7780
                                                        (letrec ((x7783
                                                                  (char? c2)))
                                                          (assert x7783)))
                                                       (g7781
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7784
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7784))))
                                                g7781)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7785
                                                        (letrec ((x7786
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7786))))
                                                g7785)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7787
                                                        (letrec ((x7788
                                                                  (letrec ((x7789
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7789))))
                                                          (cdr x7788))))
                                                g7787)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7790
                                                        (letrec ((x7792
                                                                  (list? l)))
                                                          (assert x7792)))
                                                       (g7791
                                                        (letrec ((x-cnd7793
                                                                  (null? l)))
                                                          (if x-cnd7793
                                                            #f
                                                            (letrec ((x-cnd7794
                                                                      (letrec ((x7795
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7795
                                                                         k))))
                                                              (if x-cnd7794
                                                                (car l)
                                                                (letrec ((x7796
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7796))))))))
                                                g7791)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7797
                                                        (letrec ((x7798
                                                                  (car x)))
                                                          (car x7798))))
                                                g7797)))
                                           (char>?
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
                                                        (letrec ((x7804
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7804))))
                                                g7801)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7805
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7806
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7806))))
                                                g7805)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7807
                                                        (letrec ((x7810
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7810)))
                                                       (g7808
                                                        (letrec ((x7811
                                                                  (list? l)))
                                                          (assert x7811)))
                                                       (g7809
                                                        (letrec ((x-cnd7812
                                                                  (null? l)))
                                                          (if x-cnd7812
                                                            #t
                                                            (letrec ((x-cnd7813
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7813
                                                                (letrec ((g7814
                                                                          (letrec ((x7816
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7816)))
                                                                         (g7815
                                                                          (letrec ((x7817
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7817))))
                                                                  g7815)
                                                                '()))))))
                                                g7809)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7818
                                                        (letrec ((x7820
                                                                  (number? x)))
                                                          (assert x7820)))
                                                       (g7819
                                                        (letrec ((x-cnd7821
                                                                  (< x 0)))
                                                          (if x-cnd7821
                                                            (- 0 x)
                                                            x))))
                                                g7819)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7822
                                                        (letrec ((x7825
                                                                  (char? c1)))
                                                          (assert x7825)))
                                                       (g7823
                                                        (letrec ((x7826
                                                                  (char? c2)))
                                                          (assert x7826)))
                                                       (g7824
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7827
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7827))))
                                                g7824)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7828
                                                        (letrec ((x7829
                                                                  (letrec ((x7830
                                                                            (letrec ((x7831
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7831))))
                                                                    (cdr
                                                                     x7830))))
                                                          (car x7829))))
                                                g7828)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7832 #f)) g7832)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7833
                                                        (letrec ((x7835
                                                                  (letrec ((x7836
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7836)))
                                                                 (x7834
                                                                  (gcd m n)))
                                                          (/ x7835 x7834))))
                                                g7833)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7837
                                                        (letrec ((x7839
                                                                  (number? x)))
                                                          (assert x7839)))
                                                       (g7838
                                                        (letrec ((x7840
                                                                  (<= x y)))
                                                          (not x7840))))
                                                g7838)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7841
                                                        (letrec ((x7845
                                                                  (list? l)))
                                                          (assert x7845)))
                                                       (g7842
                                                        (letrec ((x7846
                                                                  (number?
                                                                   index)))
                                                          (assert x7846)))
                                                       (g7843
                                                        (letrec ((x7847
                                                                  (letrec ((x7848
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7848))))
                                                          (assert x7847)))
                                                       (g7844
                                                        (letrec ((x-cnd7849
                                                                  (= index 0)))
                                                          (if x-cnd7849
                                                            (car l)
                                                            (letrec ((x7851
                                                                      (cdr l))
                                                                     (x7850
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7851
                                                               x7850))))))
                                                g7844)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7852
                                                        (letrec ((x-cnd7853
                                                                  (= b 0)))
                                                          (if x-cnd7853
                                                            a
                                                            (letrec ((x7854
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7854))))))
                                                g7852))))
                                    (letrec ((g7855
                                              (letrec ((x7878
                                                        (letrec ((x7881 (f1))
                                                                 (x7879
                                                                  (letrec ((a
                                                                            (f1
                                                                             #t)))
                                                                    (letrec ((g7880
                                                                              (f1
                                                                               #f)))
                                                                      g7880))))
                                                          (λ x7881 x7879)))
                                                       (x7856
                                                        (letrec ((x7877 (x1))
                                                                 (x7857
                                                                  (letrec ((x7873
                                                                            (letrec ((x7876
                                                                                      (f2))
                                                                                     (x7874
                                                                                      (letrec ((b
                                                                                                (f2
                                                                                                 #t)))
                                                                                        (letrec ((g7875
                                                                                                  (f2
                                                                                                   #f)))
                                                                                          g7875))))
                                                                              (λ x7876
                                                                                x7874)))
                                                                           (x7858
                                                                            (letrec ((x7872
                                                                                      (x2))
                                                                                     (x7859
                                                                                      (letrec ((x7868
                                                                                                (letrec ((x7871
                                                                                                          (f3))
                                                                                                         (x7869
                                                                                                          (letrec ((c
                                                                                                                    (f3
                                                                                                                     #t)))
                                                                                                            (letrec ((g7870
                                                                                                                      (f3
                                                                                                                       #f)))
                                                                                                              g7870))))
                                                                                                  (λ x7871
                                                                                                    x7869)))
                                                                                               (x7860
                                                                                                (letrec ((x7867
                                                                                                          (x3))
                                                                                                         (x7861
                                                                                                          (letrec ((x7864
                                                                                                                    (letrec ((x7866
                                                                                                                              (z))
                                                                                                                             (x7865
                                                                                                                              (z
                                                                                                                               x1
                                                                                                                               x2
                                                                                                                               x3)))
                                                                                                                      (λ x7866
                                                                                                                        x7865)))
                                                                                                                   (x7862
                                                                                                                    (letrec ((x7863
                                                                                                                              (y1
                                                                                                                               y2
                                                                                                                               y3)))
                                                                                                                      (λ x7863
                                                                                                                        y1))))
                                                                                                            (x7864
                                                                                                             x7862))))
                                                                                                  (λ x7867
                                                                                                    x7861))))
                                                                                        (x7868
                                                                                         x7860))))
                                                                              (λ x7872
                                                                                x7859))))
                                                                    (x7873
                                                                     x7858))))
                                                          (λ x7877 x7857))))
                                                (x7878 x7856))))
                                      g7855))))
                          g7344))))
              g7342)))
    g7341))
