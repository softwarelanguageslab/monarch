(letrec ((any? (lambda (v) (letrec ((g7327 #t)) g7327)))
         (meta (lambda (v) (letrec ((g7328 v)) g7328)))
         (member
          (lambda (v lst)
            (letrec ((g7329
                      (letrec ((g7330
                                (letrec ((x-e7331 lst))
                                  (match
                                   x-e7331
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7332 (eq? v v1)))
                                       (if x-cnd7332 #t (member v vs)))))))))
                        g7330)))
              g7329)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7333 (lambda (v) (letrec ((g7334 v)) g7334)))) g7333)))
         (nonzero?
          (lambda (v)
            (letrec ((g7335 (letrec ((x7336 (= v 0))) (not x7336)))) g7335))))
  (letrec ((g7337
            (letrec ((g7338
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7339 '())
                                 (g7340
                                  (letrec ((empty '())
                                           (real?/c
                                            (lambda (g7258 g7259 g7260)
                                              (letrec ((g7341
                                                        (letrec ((x-cnd7342
                                                                  (real?
                                                                   g7260)))
                                                          (if x-cnd7342
                                                            g7260
                                                            (blame
                                                             g7258
                                                             'real?)))))
                                                g7341)))
                                           (boolean?/c
                                            (lambda (g7261 g7262 g7263)
                                              (letrec ((g7343
                                                        (letrec ((x-cnd7344
                                                                  (boolean?
                                                                   g7263)))
                                                          (if x-cnd7344
                                                            g7263
                                                            (blame
                                                             g7261
                                                             'boolean?)))))
                                                g7343)))
                                           (number?/c
                                            (lambda (g7264 g7265 g7266)
                                              (letrec ((g7345
                                                        (letrec ((x-cnd7346
                                                                  (number?
                                                                   g7266)))
                                                          (if x-cnd7346
                                                            g7266
                                                            (blame
                                                             g7264
                                                             'number?)))))
                                                g7345)))
                                           (any/c
                                            (lambda (g7267 g7268 g7269)
                                              (letrec ((g7347
                                                        (letrec ((x-cnd7348
                                                                  ((lambda (v)
                                                                     (letrec ((g7349
                                                                               #t))
                                                                       g7349))
                                                                   g7269)))
                                                          (if x-cnd7348
                                                            g7269
                                                            (blame
                                                             g7267
                                                             '(lambda (v)
                                                                #t))))))
                                                g7347)))
                                           (any?/c
                                            (lambda (g7270 g7271 g7272)
                                              (letrec ((g7350
                                                        (letrec ((x-cnd7351
                                                                  ((lambda (v)
                                                                     (letrec ((g7352
                                                                               #t))
                                                                       g7352))
                                                                   g7272)))
                                                          (if x-cnd7351
                                                            g7272
                                                            (blame
                                                             g7270
                                                             '(lambda (v)
                                                                #t))))))
                                                g7350)))
                                           (cons?/c
                                            (lambda (g7273 g7274 g7275)
                                              (letrec ((g7353
                                                        (letrec ((x-cnd7354
                                                                  (pair?
                                                                   g7275)))
                                                          (if x-cnd7354
                                                            g7275
                                                            (blame
                                                             g7273
                                                             'pair?)))))
                                                g7353)))
                                           (pair?/c
                                            (lambda (g7276 g7277 g7278)
                                              (letrec ((g7355
                                                        (letrec ((x-cnd7356
                                                                  (pair?
                                                                   g7278)))
                                                          (if x-cnd7356
                                                            g7278
                                                            (blame
                                                             g7276
                                                             'pair?)))))
                                                g7355)))
                                           (integer?/c
                                            (lambda (g7279 g7280 g7281)
                                              (letrec ((g7357
                                                        (letrec ((x-cnd7358
                                                                  (integer?
                                                                   g7281)))
                                                          (if x-cnd7358
                                                            g7281
                                                            (blame
                                                             g7279
                                                             'integer?)))))
                                                g7357)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7359
                                                        (lambda (k j v)
                                                          (letrec ((g7360
                                                                    (letrec ((x-cnd7361
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7361
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7360))))
                                                g7359)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7362
                                                        (lambda (k j v)
                                                          (letrec ((g7363
                                                                    (letrec ((x-cnd7364
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7364
                                                                        '()
                                                                        (letrec ((x7368
                                                                                  (letrec ((x7369
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7369)))
                                                                                 (x7365
                                                                                  (letrec ((x7367
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7366
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7367
                                                                                     k
                                                                                     j
                                                                                     x7366))))
                                                                          (orig-cons
                                                                           x7368
                                                                           x7365))))))
                                                            g7363))))
                                                g7362)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7370 #t)) g7370)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7371
                                                        (letrec ((x7372
                                                                  (= v 0)))
                                                          (not x7372))))
                                                g7371)))
                                           (nonzero?/c
                                            (lambda (g7282 g7283 g7284)
                                              (letrec ((g7373
                                                        (letrec ((x-cnd7374
                                                                  ((lambda (v)
                                                                     (letrec ((g7375
                                                                               (letrec ((x7376
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7376))))
                                                                       g7375))
                                                                   g7284)))
                                                          (if x-cnd7374
                                                            g7284
                                                            (blame
                                                             g7282
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7373)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7377 v)) g7377)))
                                           (+
                                            ((lambda (j7287 k7288 f7289)
                                               (letrec ((g7379
                                                         (lambda (g7285 g7286)
                                                           (letrec ((g7380
                                                                     (letrec ((x7381
                                                                               (letrec ((x7383
                                                                                         (number?/c
                                                                                          j7287
                                                                                          k7288
                                                                                          g7285))
                                                                                        (x7382
                                                                                         (number?/c
                                                                                          j7287
                                                                                          k7288
                                                                                          g7286)))
                                                                                 (f7289
                                                                                  x7383
                                                                                  x7382))))
                                                                       (number?/c
                                                                        j7287
                                                                        k7288
                                                                        x7381))))
                                                             g7380))))
                                                 g7379))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7378 (orig-+ a b)))
                                                 g7378))))
                                           (-
                                            ((lambda (j7292 k7293 f7294)
                                               (letrec ((g7385
                                                         (lambda (g7290 g7291)
                                                           (letrec ((g7386
                                                                     (letrec ((x7387
                                                                               (letrec ((x7389
                                                                                         (number?/c
                                                                                          j7292
                                                                                          k7293
                                                                                          g7290))
                                                                                        (x7388
                                                                                         (number?/c
                                                                                          j7292
                                                                                          k7293
                                                                                          g7291)))
                                                                                 (f7294
                                                                                  x7389
                                                                                  x7388))))
                                                                       (number?/c
                                                                        j7292
                                                                        k7293
                                                                        x7387))))
                                                             g7386))))
                                                 g7385))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7384 (orig-- a b)))
                                                 g7384))))
                                           (*
                                            ((lambda (j7297 k7298 f7299)
                                               (letrec ((g7391
                                                         (lambda (g7295 g7296)
                                                           (letrec ((g7392
                                                                     (letrec ((x7393
                                                                               (letrec ((x7395
                                                                                         (number?/c
                                                                                          j7297
                                                                                          k7298
                                                                                          g7295))
                                                                                        (x7394
                                                                                         (number?/c
                                                                                          j7297
                                                                                          k7298
                                                                                          g7296)))
                                                                                 (f7299
                                                                                  x7395
                                                                                  x7394))))
                                                                       (number?/c
                                                                        j7297
                                                                        k7298
                                                                        x7393))))
                                                             g7392))))
                                                 g7391))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7390 (orig-* a b)))
                                                 g7390))))
                                           (/
                                            ((lambda (j7302 k7303 f7304)
                                               (letrec ((g7397
                                                         (lambda (g7300 g7301)
                                                           (letrec ((g7398
                                                                     (letrec ((x7399
                                                                               (letrec ((x7401
                                                                                         (number?/c
                                                                                          j7302
                                                                                          k7303
                                                                                          g7300))
                                                                                        (x7400
                                                                                         (number?/c
                                                                                          j7302
                                                                                          k7303
                                                                                          g7301)))
                                                                                 (f7304
                                                                                  x7401
                                                                                  x7400))))
                                                                       (number?/c
                                                                        j7302
                                                                        k7303
                                                                        x7399))))
                                                             g7398))))
                                                 g7397))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7396 (orig-/ a b)))
                                                 g7396))))
                                           (car
                                            ((lambda (j7306 k7307 f7308)
                                               (letrec ((g7403
                                                         (lambda (g7305)
                                                           (letrec ((g7404
                                                                     (letrec ((x7405
                                                                               (letrec ((x7406
                                                                                         (pair?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7305)))
                                                                                 (f7308
                                                                                  x7406))))
                                                                       (any/c
                                                                        j7306
                                                                        k7307
                                                                        x7405))))
                                                             g7404))))
                                                 g7403))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7402 (orig-car p)))
                                                 g7402))))
                                           (cdr
                                            ((lambda (j7310 k7311 f7312)
                                               (letrec ((g7408
                                                         (lambda (g7309)
                                                           (letrec ((g7409
                                                                     (letrec ((x7410
                                                                               (letrec ((x7411
                                                                                         (pair?/c
                                                                                          j7310
                                                                                          k7311
                                                                                          g7309)))
                                                                                 (f7312
                                                                                  x7411))))
                                                                       (any/c
                                                                        j7310
                                                                        k7311
                                                                        x7410))))
                                                             g7409))))
                                                 g7408))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7407 (orig-cdr p)))
                                                 g7407))))
                                           (cons
                                            ((lambda (j7315 k7316 f7317)
                                               (letrec ((g7413
                                                         (lambda (g7313 g7314)
                                                           (letrec ((g7414
                                                                     (letrec ((x7415
                                                                               (letrec ((x7417
                                                                                         (any/c
                                                                                          j7315
                                                                                          k7316
                                                                                          g7313))
                                                                                        (x7416
                                                                                         (any/c
                                                                                          j7315
                                                                                          k7316
                                                                                          g7314)))
                                                                                 (f7317
                                                                                  x7417
                                                                                  x7416))))
                                                                       (pair?/c
                                                                        j7315
                                                                        k7316
                                                                        x7415))))
                                                             g7414))))
                                                 g7413))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7412
                                                         (orig-cons a b)))
                                                 g7412))))
                                           (vector-ref
                                            ((lambda (j7319 k7320 f7321)
                                               (letrec ((g7419
                                                         (lambda (g7318)
                                                           (letrec ((g7420
                                                                     (letrec ((x7421
                                                                               (letrec ((x7422
                                                                                         (vector?/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7318)))
                                                                                 (f7321
                                                                                  x7422))))
                                                                       (integer?/c
                                                                        j7319
                                                                        k7320
                                                                        x7421))))
                                                             g7420))))
                                                 g7419))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7418
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7418))))
                                           (vector-set!
                                            ((lambda (j7324 k7325 f7326)
                                               (letrec ((g7424
                                                         (lambda (g7322 g7323)
                                                           (letrec ((g7425
                                                                     (letrec ((x7426
                                                                               (letrec ((x7428
                                                                                         (vector?/c
                                                                                          j7324
                                                                                          k7325
                                                                                          g7322))
                                                                                        (x7427
                                                                                         (integer?/c
                                                                                          j7324
                                                                                          k7325
                                                                                          g7323)))
                                                                                 (f7326
                                                                                  x7428
                                                                                  x7427))))
                                                                       (any/c
                                                                        j7324
                                                                        k7325
                                                                        x7426))))
                                                             g7425))))
                                                 g7424))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7423
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7423))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7429
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7429)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7430
                                                        (letrec ((x7431
                                                                  (letrec ((x7432
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7432))))
                                                          (cdr x7431))))
                                                g7430)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7433
                                                        (letrec ((x7436
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7436)))
                                                       (g7434
                                                        (letrec ((x7437
                                                                  (list? l)))
                                                          (assert x7437)))
                                                       (g7435
                                                        (letrec ((x-cnd7438
                                                                  (null? l)))
                                                          (if x-cnd7438
                                                            '()
                                                            (letrec ((x7441
                                                                      (letrec ((x7442
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7442)))
                                                                     (x7439
                                                                      (letrec ((x7440
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7440))))
                                                              (cons
                                                               x7441
                                                               x7439))))))
                                                g7435)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7443
                                                        (letrec ((x7444
                                                                  (car x)))
                                                          (cdr x7444))))
                                                g7443)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7445
                                                        (letrec ((x7446
                                                                  (letrec ((x7447
                                                                            (letrec ((x7448
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7448))))
                                                                    (cdr
                                                                     x7447))))
                                                          (car x7446))))
                                                g7445)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7449
                                                        (letrec ((x7450
                                                                  (letrec ((x7451
                                                                            (letrec ((x7452
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7452))))
                                                                    (car
                                                                     x7451))))
                                                          (cdr x7450))))
                                                g7449)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7453
                                                        (letrec ((x7456
                                                                  (string?
                                                                   filename)))
                                                          (assert x7456)))
                                                       (g7454
                                                        (letrec ((x7457
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7457)))
                                                       (g7455
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7458
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7459 res))
                                                            g7459))))
                                                g7455)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7460
                                                        (letrec ((x7461
                                                                  (letrec ((x7462
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7462))))
                                                          (car x7461))))
                                                g7460)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7463
                                                        (letrec ((x7464
                                                                  (letrec ((x7465
                                                                            (letrec ((x7466
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7466))))
                                                                    (car
                                                                     x7465))))
                                                          (cdr x7464))))
                                                g7463)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7467
                                                        (letrec ((x7469
                                                                  (list? l)))
                                                          (assert x7469)))
                                                       (g7468
                                                        (letrec ((x-cnd7470
                                                                  (null? l)))
                                                          (if x-cnd7470
                                                            #f
                                                            (letrec ((x-cnd7471
                                                                      (letrec ((x7472
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7472
                                                                         k))))
                                                              (if x-cnd7471
                                                                (car l)
                                                                (letrec ((x7473
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7473))))))))
                                                g7468)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7474
                                                        (letrec ((x7475
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7475))))
                                                g7474)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7476
                                                        (letrec ((x7478
                                                                  (list? l)))
                                                          (assert x7478)))
                                                       (g7477
                                                        (letrec ((x-cnd7479
                                                                  (null? l)))
                                                          (if x-cnd7479
                                                            ""
                                                            (letrec ((x7482
                                                                      (letrec ((x7483
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7483)))
                                                                     (x7480
                                                                      (letrec ((x7481
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7481))))
                                                              (string-append
                                                               x7482
                                                               x7480))))))
                                                g7477)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7484
                                                        (letrec ((x7487
                                                                  (char? c1)))
                                                          (assert x7487)))
                                                       (g7485
                                                        (letrec ((x7488
                                                                  (char? c2)))
                                                          (assert x7488)))
                                                       (g7486
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7489
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7489))))
                                                g7486)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7490
                                                        (letrec ((x7491
                                                                  (letrec ((x7492
                                                                            (letrec ((x7493
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7493))))
                                                                    (cdr
                                                                     x7492))))
                                                          (cdr x7491))))
                                                g7490)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7494
                                                        (letrec ((x7497
                                                                  (list? l)))
                                                          (assert x7497)))
                                                       (g7495
                                                        (letrec ((x7498
                                                                  (number?)))
                                                          (assert x7498)))
                                                       (g7496
                                                        (letrec ((x-cnd7499
                                                                  (zero? k)))
                                                          (if x-cnd7499
                                                            x
                                                            (letrec ((x7501
                                                                      (cdr x))
                                                                     (x7500
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7501
                                                               x7500))))))
                                                g7496)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7502 '())) g7502)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7503
                                                        (letrec ((x-cnd7504
                                                                  (letrec ((x7505
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7505))))
                                                          (if x-cnd7504
                                                            (letrec ((x7506
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7506))
                                                            #f))))
                                                g7503)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7507
                                                        (letrec ((x7509
                                                                  (number? x)))
                                                          (assert x7509)))
                                                       (g7508
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7510
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7511
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7511)))))
                                                            g7510))))
                                                g7508)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7512
                                                        (letrec ((val7244
                                                                  (letrec ((x7513
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7513
                                                                     9))))
                                                          (letrec ((g7514
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7515
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7515
                                                                                   10))))
                                                                        (letrec ((g7516
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7517
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7517
                                                                                       32)))))
                                                                          g7516)))))
                                                            g7514))))
                                                g7512)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7518
                                                        (letrec ((x7519
                                                                  (letrec ((x7520
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7520))))
                                                          (cdr x7519))))
                                                g7518)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7521
                                                        (letrec ((x7523
                                                                  (number? x)))
                                                          (assert x7523)))
                                                       (g7522 (> x 0)))
                                                g7522)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7524 #f)) g7524)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7525
                                                        (letrec ((x7526
                                                                  (cdr x)))
                                                          (cdr x7526))))
                                                g7525)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7527
                                                        (letrec ((x7529
                                                                  (number? x)))
                                                          (assert x7529)))
                                                       (g7528
                                                        (letrec ((x-cnd7530
                                                                  (< x 0)))
                                                          (if x-cnd7530
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7528)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7531
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7532
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x7534
                                                                                          (null?
                                                                                           a))
                                                                                         (x7533
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7534
                                                                                       x7533))))
                                                                        (letrec ((g7535
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x7538
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7537
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7536
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7538
                                                                                                     x7537
                                                                                                     x7536))))
                                                                                      (letrec ((g7539
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x7547
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7546
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7543
                                                                                                                      (letrec ((x7545
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7544
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7545
                                                                                                                         x7544)))
                                                                                                                     (x7540
                                                                                                                      (letrec ((x7542
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7541
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7542
                                                                                                                         x7541))))
                                                                                                              (and x7547
                                                                                                                   x7546
                                                                                                                   x7543
                                                                                                                   x7540))))
                                                                                                    (letrec ((g7548
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x7564
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7563
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7549
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7550
                                                                                                                                      (letrec ((x7561
                                                                                                                                                (letrec ((x7562
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7562
                                                                                                                                                   n)))
                                                                                                                                               (x7551
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7552
                                                                                                                                                                      (letrec ((x7559
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7553
                                                                                                                                                                                (letrec ((x7556
                                                                                                                                                                                          (letrec ((x7558
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7557
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7558
                                                                                                                                                                                             x7557)))
                                                                                                                                                                                         (x7554
                                                                                                                                                                                          (letrec ((x7555
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7555))))
                                                                                                                                                                                  (and x7556
                                                                                                                                                                                       x7554))))
                                                                                                                                                                        (or x7559
                                                                                                                                                                            x7553))))
                                                                                                                                                              g7552))))
                                                                                                                                                  (letrec ((g7560
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7560))))
                                                                                                                                        (and x7561
                                                                                                                                             x7551))))
                                                                                                                              g7550))))
                                                                                                                  (and x7564
                                                                                                                       x7563
                                                                                                                       x7549)))))
                                                                                                      g7548)))))
                                                                                        g7539)))))
                                                                          g7535)))))
                                                            g7532))))
                                                g7531)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7565
                                                        (letrec ((x7566
                                                                  (letrec ((x7567
                                                                            (letrec ((x7568
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7568))))
                                                                    (car
                                                                     x7567))))
                                                          (cdr x7566))))
                                                g7565)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7569
                                                        (letrec ((x7570
                                                                  (letrec ((x7571
                                                                            (letrec ((x7572
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7572))))
                                                                    (car
                                                                     x7571))))
                                                          (car x7570))))
                                                g7569)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7573 (eq? x y)))
                                                g7573)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7574
                                                        (letrec ((x7576
                                                                  (number? x)))
                                                          (assert x7576)))
                                                       (g7575
                                                        (letrec ((val7250
                                                                  (> x y)))
                                                          (letrec ((g7577
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7578
                                                                                  (if val7251
                                                                                    val7251
                                                                                    #f)))
                                                                          g7578)))))
                                                            g7577))))
                                                g7575)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7579
                                                        (letrec ((x7582
                                                                  (string?
                                                                   filename)))
                                                          (assert x7582)))
                                                       (g7580
                                                        (letrec ((x7583
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7583)))
                                                       (g7581
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7584
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7585 res))
                                                            g7585))))
                                                g7581)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7586 (cons x '())))
                                                g7586)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7587
                                                        (letrec ((x7590
                                                                  (char? c1)))
                                                          (assert x7590)))
                                                       (g7588
                                                        (letrec ((x7591
                                                                  (char? c2)))
                                                          (assert x7591)))
                                                       (g7589
                                                        (letrec ((val7252
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7592
                                                                    (if val7252
                                                                      val7252
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7592))))
                                                g7589)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7593
                                                        (letrec ((x7594
                                                                  (letrec ((x7595
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7595))))
                                                          (cdr x7594))))
                                                g7593)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7596
                                                        (letrec ((x7597
                                                                  (letrec ((x7598
                                                                            (letrec ((x7599
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7599))))
                                                                    (car
                                                                     x7598))))
                                                          (cdr x7597))))
                                                g7596)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7600
                                                        (letrec ((x7601
                                                                  (letrec ((x7602
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7602))))
                                                          (car x7601))))
                                                g7600)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7603
                                                        (letrec ((x7604
                                                                  (letrec ((x7605
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7605))))
                                                          (car x7604))))
                                                g7603)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7606
                                                        (letrec ((x7609
                                                                  (char? c1)))
                                                          (assert x7609)))
                                                       (g7607
                                                        (letrec ((x7610
                                                                  (char? c2)))
                                                          (assert x7610)))
                                                       (g7608
                                                        (letrec ((x7611
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7611))))
                                                g7608)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7612
                                                        (letrec ((x7613
                                                                  (letrec ((x7614
                                                                            (letrec ((x7615
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7615))))
                                                                    (car
                                                                     x7614))))
                                                          (car x7613))))
                                                g7612)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7616
                                                        (letrec ((x7618
                                                                  (number? x)))
                                                          (assert x7618)))
                                                       (g7617 (< x 0)))
                                                g7617)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7619 (memq e l)))
                                                g7619)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7620
                                                        (letrec ((x7621
                                                                  (letrec ((x7622
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7622))))
                                                          (car x7621))))
                                                g7620)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7623 '())) g7623)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7624
                                                        (letrec ((x7626
                                                                  (list? l)))
                                                          (assert x7626)))
                                                       (g7625
                                                        (letrec ((x-cnd7627
                                                                  (null? l)))
                                                          (if x-cnd7627
                                                            '()
                                                            (letrec ((x7630
                                                                      (letrec ((x7631
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7631)))
                                                                     (x7628
                                                                      (letrec ((x7629
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7629))))
                                                              (append
                                                               x7630
                                                               x7628))))))
                                                g7625)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7632
                                                        (letrec ((x7633
                                                                  (letrec ((x7634
                                                                            (letrec ((x7635
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7635))))
                                                                    (car
                                                                     x7634))))
                                                          (car x7633))))
                                                g7632)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7636
                                                        (letrec ((x7637
                                                                  (letrec ((x7638
                                                                            (letrec ((x7639
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7639))))
                                                                    (cdr
                                                                     x7638))))
                                                          (cdr x7637))))
                                                g7636)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7640
                                                        (letrec ((x7642
                                                                  (number? x)))
                                                          (assert x7642)))
                                                       (g7641
                                                        (letrec ((x7643
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7643))))
                                                g7641)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7644
                                                        (letrec ((x7645
                                                                  (letrec ((x7646
                                                                            (letrec ((x7647
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7647))))
                                                                    (car
                                                                     x7646))))
                                                          (car x7645))))
                                                g7644)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7648
                                                        (letrec ((x7651
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7651)))
                                                       (g7649
                                                        (letrec ((x7652
                                                                  (list?
                                                                   args)))
                                                          (assert x7652)))
                                                       (g7650
                                                        (if cnd
                                                          (letrec ((g7653
                                                                    (proc)))
                                                            g7653)
                                                          (if cnd
                                                            (letrec ((g7654
                                                                      (letrec ((x7655
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7655))))
                                                              g7654)
                                                            (if cnd
                                                              (letrec ((g7656
                                                                        (letrec ((x7658
                                                                                  (car
                                                                                   args))
                                                                                 (x7657
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7658
                                                                           x7657))))
                                                                g7656)
                                                              (if cnd
                                                                (letrec ((g7659
                                                                          (letrec ((x7662
                                                                                    (car
                                                                                     args))
                                                                                   (x7661
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7660
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7662
                                                                             x7661
                                                                             x7660))))
                                                                  g7659)
                                                                (if cnd
                                                                  (letrec ((g7663
                                                                            (letrec ((x7667
                                                                                      (car
                                                                                       args))
                                                                                     (x7666
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7665
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7664
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7667
                                                                               x7666
                                                                               x7665
                                                                               x7664))))
                                                                    g7663)
                                                                  (if cnd
                                                                    (letrec ((g7668
                                                                              (letrec ((x7674
                                                                                        (car
                                                                                         args))
                                                                                       (x7673
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7672
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7671
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7669
                                                                                        (letrec ((x7670
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7670))))
                                                                                (proc
                                                                                 x7674
                                                                                 x7673
                                                                                 x7672
                                                                                 x7671
                                                                                 x7669))))
                                                                      g7668)
                                                                    (if cnd
                                                                      (letrec ((g7675
                                                                                (letrec ((x7683
                                                                                          (car
                                                                                           args))
                                                                                         (x7682
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7681
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7680
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7678
                                                                                          (letrec ((x7679
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7679)))
                                                                                         (x7676
                                                                                          (letrec ((x7677
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7677))))
                                                                                  (proc
                                                                                   x7683
                                                                                   x7682
                                                                                   x7681
                                                                                   x7680
                                                                                   x7678
                                                                                   x7676))))
                                                                        g7675)
                                                                      (if cnd
                                                                        (letrec ((g7684
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
                                                                                               x7690)))
                                                                                           (x7687
                                                                                            (letrec ((x7688
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7688)))
                                                                                           (x7685
                                                                                            (letrec ((x7686
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7686))))
                                                                                    (proc
                                                                                     x7694
                                                                                     x7693
                                                                                     x7692
                                                                                     x7691
                                                                                     x7689
                                                                                     x7687
                                                                                     x7685))))
                                                                          g7684)
                                                                        (letrec ((g7695
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7695)))))))))))
                                                g7650)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7696
                                                        (letrec ((x7698
                                                                  (list? l)))
                                                          (assert x7698)))
                                                       (g7697
                                                        (letrec ((x-cnd7699
                                                                  (null? l)))
                                                          (if x-cnd7699
                                                            #f
                                                            (letrec ((x-cnd7700
                                                                      (letrec ((x7701
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7701
                                                                         e))))
                                                              (if x-cnd7700
                                                                l
                                                                (letrec ((x7702
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7702))))))))
                                                g7697)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7703
                                                        (letrec ((x7704
                                                                  (letrec ((x7705
                                                                            (letrec ((x7706
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7706))))
                                                                    (cdr
                                                                     x7705))))
                                                          (cdr x7704))))
                                                g7703)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7707
                                                        (letrec ((x7708
                                                                  (letrec ((x7709
                                                                            (letrec ((x7710
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7710))))
                                                                    (cdr
                                                                     x7709))))
                                                          (car x7708))))
                                                g7707)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7711 (random 42)))
                                                g7711)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7712
                                                        (letrec ((x7714
                                                                  (number? x)))
                                                          (assert x7714)))
                                                       (g7713 (= x 0)))
                                                g7713)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7715
                                                        (letrec ((val7253
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7716
                                                                    (if val7253
                                                                      val7253
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7716))))
                                                g7715)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7717
                                                        (letrec ((x7718
                                                                  (cdr x)))
                                                          (car x7718))))
                                                g7717)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7719
                                                        (letrec ((val7254
                                                                  (letrec ((x7722
                                                                            (pair?
                                                                             l))
                                                                           (x7720
                                                                            (letrec ((x7721
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7721))))
                                                                    (and x7722
                                                                         x7720))))
                                                          (letrec ((g7723
                                                                    (if val7254
                                                                      val7254
                                                                      (null?
                                                                       l))))
                                                            g7723))))
                                                g7719)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7724
                                                        (letrec ((x7725
                                                                  (letrec ((x7726
                                                                            (letrec ((x7727
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7727))))
                                                                    (cdr
                                                                     x7726))))
                                                          (cdr x7725))))
                                                g7724)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7728
                                                        (letrec ((x-cnd7729
                                                                  (letrec ((x7730
                                                                            #\0))
                                                                    (char<=?
                                                                     x7730
                                                                     c))))
                                                          (if x-cnd7729
                                                            (letrec ((x7731
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7731))
                                                            #f))))
                                                g7728)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7732
                                                        (letrec ((x7734
                                                                  (list? l)))
                                                          (assert x7734)))
                                                       (g7733
                                                        (letrec ((x-cnd7735
                                                                  (null? l)))
                                                          (if x-cnd7735
                                                            #f
                                                            (letrec ((x-cnd7736
                                                                      (letrec ((x7737
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7737
                                                                         k))))
                                                              (if x-cnd7736
                                                                (car l)
                                                                (letrec ((x7738
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7738))))))))
                                                g7733)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7739 (if x #f #t)))
                                                g7739)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7740 (append l1 l2)))
                                                g7740)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7741
                                                        (letrec ((x7743
                                                                  (list? l)))
                                                          (assert x7743)))
                                                       (g7742
                                                        (letrec ((x-cnd7744
                                                                  (null? l)))
                                                          (if x-cnd7744
                                                            #f
                                                            (letrec ((x-cnd7745
                                                                      (letrec ((x7746
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7746
                                                                         e))))
                                                              (if x-cnd7745
                                                                l
                                                                (letrec ((x7747
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7747))))))))
                                                g7742)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7748
                                                        (letrec ((x7749
                                                                  (letrec ((x7750
                                                                            (letrec ((x7751
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7751))))
                                                                    (cdr
                                                                     x7750))))
                                                          (car x7749))))
                                                g7748)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7752
                                                        (letrec ((x7754
                                                                  (list? l)))
                                                          (assert x7754)))
                                                       (g7753
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7755
                                                                              (letrec ((x-cnd7756
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7756
                                                                                  0
                                                                                  (letrec ((x7757
                                                                                            (letrec ((x7758
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7758))))
                                                                                    (+
                                                                                     1
                                                                                     x7757))))))
                                                                      g7755))))
                                                          (letrec ((g7759
                                                                    (rec l)))
                                                            g7759))))
                                                g7753)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7760
                                                        (letrec ((x7763
                                                                  (char? c1)))
                                                          (assert x7763)))
                                                       (g7761
                                                        (letrec ((x7764
                                                                  (char? c2)))
                                                          (assert x7764)))
                                                       (g7762
                                                        (letrec ((val7255
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7765
                                                                    (if val7255
                                                                      val7255
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7765))))
                                                g7762)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7766
                                                        (letrec ((x7767
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7767))))
                                                g7766)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7768
                                                        (letrec ((x7769
                                                                  (letrec ((x7770
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7770))))
                                                          (cdr x7769))))
                                                g7768)))
                                           (assoc
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
                                                                        (equal?
                                                                         x7776
                                                                         k))))
                                                              (if x-cnd7775
                                                                (car l)
                                                                (letrec ((x7777
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7777))))))))
                                                g7772)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7778
                                                        (letrec ((x7779
                                                                  (car x)))
                                                          (car x7779))))
                                                g7778)))
                                           (char>?
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
                                                        (letrec ((x7785
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7785))))
                                                g7782)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7786
                                                        (letrec ((val7256
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7787
                                                                    (if val7256
                                                                      val7256
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7787))))
                                                g7786)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7788
                                                        (letrec ((x7791
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7791)))
                                                       (g7789
                                                        (letrec ((x7792
                                                                  (list? l)))
                                                          (assert x7792)))
                                                       (g7790
                                                        (letrec ((x-cnd7793
                                                                  (null? l)))
                                                          (if x-cnd7793
                                                            #t
                                                            (letrec ((x-cnd7794
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7794
                                                                (letrec ((g7795
                                                                          (letrec ((x7797
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7797)))
                                                                         (g7796
                                                                          (letrec ((x7798
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7798))))
                                                                  g7796)
                                                                '()))))))
                                                g7790)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7799
                                                        (letrec ((x7801
                                                                  (number? x)))
                                                          (assert x7801)))
                                                       (g7800
                                                        (letrec ((x-cnd7802
                                                                  (< x 0)))
                                                          (if x-cnd7802
                                                            (- 0 x)
                                                            x))))
                                                g7800)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7803
                                                        (letrec ((x7806
                                                                  (char? c1)))
                                                          (assert x7806)))
                                                       (g7804
                                                        (letrec ((x7807
                                                                  (char? c2)))
                                                          (assert x7807)))
                                                       (g7805
                                                        (letrec ((val7257
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7808
                                                                    (if val7257
                                                                      val7257
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7808))))
                                                g7805)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7809
                                                        (letrec ((x7810
                                                                  (letrec ((x7811
                                                                            (letrec ((x7812
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7812))))
                                                                    (cdr
                                                                     x7811))))
                                                          (car x7810))))
                                                g7809)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7813 #f)) g7813)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7814
                                                        (letrec ((x7816
                                                                  (letrec ((x7817
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7817)))
                                                                 (x7815
                                                                  (gcd m n)))
                                                          (/ x7816 x7815))))
                                                g7814)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7818
                                                        (letrec ((x7820
                                                                  (number? x)))
                                                          (assert x7820)))
                                                       (g7819
                                                        (letrec ((x7821
                                                                  (<= x y)))
                                                          (not x7821))))
                                                g7819)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7822
                                                        (letrec ((x7826
                                                                  (list? l)))
                                                          (assert x7826)))
                                                       (g7823
                                                        (letrec ((x7827
                                                                  (number?
                                                                   index)))
                                                          (assert x7827)))
                                                       (g7824
                                                        (letrec ((x7828
                                                                  (letrec ((x7829
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7829))))
                                                          (assert x7828)))
                                                       (g7825
                                                        (letrec ((x-cnd7830
                                                                  (= index 0)))
                                                          (if x-cnd7830
                                                            (car l)
                                                            (letrec ((x7832
                                                                      (cdr l))
                                                                     (x7831
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7832
                                                               x7831))))))
                                                g7825)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7833
                                                        (letrec ((x-cnd7834
                                                                  (= b 0)))
                                                          (if x-cnd7834
                                                            a
                                                            (letrec ((x7835
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7835))))))
                                                g7833))))
                                    (letrec ((g7836
                                              (letrec ((x7859
                                                        (letrec ((x7862 (f1))
                                                                 (x7860
                                                                  (letrec ((a
                                                                            (f1
                                                                             #t)))
                                                                    (letrec ((g7861
                                                                              (f1
                                                                               #f)))
                                                                      g7861))))
                                                          (λ x7862 x7860)))
                                                       (x7837
                                                        (letrec ((x7858 (x1))
                                                                 (x7838
                                                                  (letrec ((x7854
                                                                            (letrec ((x7857
                                                                                      (f2))
                                                                                     (x7855
                                                                                      (letrec ((b
                                                                                                (f2
                                                                                                 #t)))
                                                                                        (letrec ((g7856
                                                                                                  (f2
                                                                                                   #f)))
                                                                                          g7856))))
                                                                              (λ x7857
                                                                                x7855)))
                                                                           (x7839
                                                                            (letrec ((x7853
                                                                                      (x2))
                                                                                     (x7840
                                                                                      (letrec ((x7849
                                                                                                (letrec ((x7852
                                                                                                          (f3))
                                                                                                         (x7850
                                                                                                          (letrec ((c
                                                                                                                    (f3
                                                                                                                     #t)))
                                                                                                            (letrec ((g7851
                                                                                                                      (f3
                                                                                                                       #f)))
                                                                                                              g7851))))
                                                                                                  (λ x7852
                                                                                                    x7850)))
                                                                                               (x7841
                                                                                                (letrec ((x7848
                                                                                                          (x3))
                                                                                                         (x7842
                                                                                                          (letrec ((x7845
                                                                                                                    (letrec ((x7847
                                                                                                                              (z))
                                                                                                                             (x7846
                                                                                                                              (z
                                                                                                                               x1
                                                                                                                               x2
                                                                                                                               x3)))
                                                                                                                      (λ x7847
                                                                                                                        x7846)))
                                                                                                                   (x7843
                                                                                                                    (letrec ((x7844
                                                                                                                              (y1
                                                                                                                               y2
                                                                                                                               y3)))
                                                                                                                      (λ x7844
                                                                                                                        y1))))
                                                                                                            (x7845
                                                                                                             x7843))))
                                                                                                  (λ x7848
                                                                                                    x7842))))
                                                                                        (x7849
                                                                                         x7841))))
                                                                              (λ x7853
                                                                                x7840))))
                                                                    (x7854
                                                                     x7839))))
                                                          (λ x7858 x7838))))
                                                (x7859 x7837))))
                                      g7836))))
                          g7340))))
              g7338)))
    g7337))
