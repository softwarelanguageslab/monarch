(letrec ((any? (lambda (v) (letrec ((g7334 #t)) g7334)))
         (meta (lambda (v) (letrec ((g7335 v)) g7335)))
         (member
          (lambda (v lst)
            (letrec ((g7336
                      (letrec ((g7337
                                (letrec ((x-e7338 lst))
                                  (match
                                   x-e7338
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7339 (eq? v v1)))
                                       (if x-cnd7339 #t (member v vs)))))))))
                        g7337)))
              g7336)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7340 (lambda (v) (letrec ((g7341 v)) g7341)))) g7340)))
         (nonzero?
          (lambda (v)
            (letrec ((g7342 (letrec ((x7343 (= v 0))) (not x7343)))) g7342))))
  (letrec ((g7344
            (letrec ((g7345
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7346 '())
                                 (g7347
                                  (letrec ((empty '())
                                           (real?/c
                                            (lambda (g7258 g7259 g7260)
                                              (letrec ((g7348
                                                        (letrec ((x-cnd7349
                                                                  (real?
                                                                   g7260)))
                                                          (if x-cnd7349
                                                            g7260
                                                            (blame
                                                             g7258
                                                             'real?)))))
                                                g7348)))
                                           (boolean?/c
                                            (lambda (g7261 g7262 g7263)
                                              (letrec ((g7350
                                                        (letrec ((x-cnd7351
                                                                  (boolean?
                                                                   g7263)))
                                                          (if x-cnd7351
                                                            g7263
                                                            (blame
                                                             g7261
                                                             'boolean?)))))
                                                g7350)))
                                           (number?/c
                                            (lambda (g7264 g7265 g7266)
                                              (letrec ((g7352
                                                        (letrec ((x-cnd7353
                                                                  (number?
                                                                   g7266)))
                                                          (if x-cnd7353
                                                            g7266
                                                            (blame
                                                             g7264
                                                             'number?)))))
                                                g7352)))
                                           (any/c
                                            (lambda (g7267 g7268 g7269)
                                              (letrec ((g7354
                                                        (letrec ((x-cnd7355
                                                                  ((lambda (v)
                                                                     (letrec ((g7356
                                                                               #t))
                                                                       g7356))
                                                                   g7269)))
                                                          (if x-cnd7355
                                                            g7269
                                                            (blame
                                                             g7267
                                                             '(lambda (v)
                                                                #t))))))
                                                g7354)))
                                           (any?/c
                                            (lambda (g7270 g7271 g7272)
                                              (letrec ((g7357
                                                        (letrec ((x-cnd7358
                                                                  ((lambda (v)
                                                                     (letrec ((g7359
                                                                               #t))
                                                                       g7359))
                                                                   g7272)))
                                                          (if x-cnd7358
                                                            g7272
                                                            (blame
                                                             g7270
                                                             '(lambda (v)
                                                                #t))))))
                                                g7357)))
                                           (cons?/c
                                            (lambda (g7273 g7274 g7275)
                                              (letrec ((g7360
                                                        (letrec ((x-cnd7361
                                                                  (pair?
                                                                   g7275)))
                                                          (if x-cnd7361
                                                            g7275
                                                            (blame
                                                             g7273
                                                             'pair?)))))
                                                g7360)))
                                           (pair?/c
                                            (lambda (g7276 g7277 g7278)
                                              (letrec ((g7362
                                                        (letrec ((x-cnd7363
                                                                  (pair?
                                                                   g7278)))
                                                          (if x-cnd7363
                                                            g7278
                                                            (blame
                                                             g7276
                                                             'pair?)))))
                                                g7362)))
                                           (integer?/c
                                            (lambda (g7279 g7280 g7281)
                                              (letrec ((g7364
                                                        (letrec ((x-cnd7365
                                                                  (integer?
                                                                   g7281)))
                                                          (if x-cnd7365
                                                            g7281
                                                            (blame
                                                             g7279
                                                             'integer?)))))
                                                g7364)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7366
                                                        (lambda (k j v)
                                                          (letrec ((g7367
                                                                    (letrec ((x-cnd7368
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7368
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7367))))
                                                g7366)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7369
                                                        (lambda (k j v)
                                                          (letrec ((g7370
                                                                    (letrec ((x-cnd7371
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7371
                                                                        '()
                                                                        (letrec ((x7375
                                                                                  (letrec ((x7376
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7376)))
                                                                                 (x7372
                                                                                  (letrec ((x7374
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7373
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7374
                                                                                     k
                                                                                     j
                                                                                     x7373))))
                                                                          (orig-cons
                                                                           x7375
                                                                           x7372))))))
                                                            g7370))))
                                                g7369)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7377 #t)) g7377)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7378
                                                        (letrec ((x7379
                                                                  (= v 0)))
                                                          (not x7379))))
                                                g7378)))
                                           (nonzero?/c
                                            (lambda (g7282 g7283 g7284)
                                              (letrec ((g7380
                                                        (letrec ((x-cnd7381
                                                                  ((lambda (v)
                                                                     (letrec ((g7382
                                                                               (letrec ((x7383
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7383))))
                                                                       g7382))
                                                                   g7284)))
                                                          (if x-cnd7381
                                                            g7284
                                                            (blame
                                                             g7282
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7380)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7384 v)) g7384)))
                                           (+
                                            ((lambda (j7287 k7288 f7289)
                                               (letrec ((g7386
                                                         (lambda (g7285 g7286)
                                                           (letrec ((g7387
                                                                     (letrec ((x7388
                                                                               (letrec ((x7390
                                                                                         (number?/c
                                                                                          j7287
                                                                                          k7288
                                                                                          g7285))
                                                                                        (x7389
                                                                                         (number?/c
                                                                                          j7287
                                                                                          k7288
                                                                                          g7286)))
                                                                                 (f7289
                                                                                  x7390
                                                                                  x7389))))
                                                                       (number?/c
                                                                        j7287
                                                                        k7288
                                                                        x7388))))
                                                             g7387))))
                                                 g7386))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7385 (orig-+ a b)))
                                                 g7385))))
                                           (-
                                            ((lambda (j7292 k7293 f7294)
                                               (letrec ((g7392
                                                         (lambda (g7290 g7291)
                                                           (letrec ((g7393
                                                                     (letrec ((x7394
                                                                               (letrec ((x7396
                                                                                         (number?/c
                                                                                          j7292
                                                                                          k7293
                                                                                          g7290))
                                                                                        (x7395
                                                                                         (number?/c
                                                                                          j7292
                                                                                          k7293
                                                                                          g7291)))
                                                                                 (f7294
                                                                                  x7396
                                                                                  x7395))))
                                                                       (number?/c
                                                                        j7292
                                                                        k7293
                                                                        x7394))))
                                                             g7393))))
                                                 g7392))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7391 (orig-- a b)))
                                                 g7391))))
                                           (*
                                            ((lambda (j7297 k7298 f7299)
                                               (letrec ((g7398
                                                         (lambda (g7295 g7296)
                                                           (letrec ((g7399
                                                                     (letrec ((x7400
                                                                               (letrec ((x7402
                                                                                         (number?/c
                                                                                          j7297
                                                                                          k7298
                                                                                          g7295))
                                                                                        (x7401
                                                                                         (number?/c
                                                                                          j7297
                                                                                          k7298
                                                                                          g7296)))
                                                                                 (f7299
                                                                                  x7402
                                                                                  x7401))))
                                                                       (number?/c
                                                                        j7297
                                                                        k7298
                                                                        x7400))))
                                                             g7399))))
                                                 g7398))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7397 (orig-* a b)))
                                                 g7397))))
                                           (/
                                            ((lambda (j7302 k7303 f7304)
                                               (letrec ((g7404
                                                         (lambda (g7300 g7301)
                                                           (letrec ((g7405
                                                                     (letrec ((x7406
                                                                               (letrec ((x7408
                                                                                         (number?/c
                                                                                          j7302
                                                                                          k7303
                                                                                          g7300))
                                                                                        (x7407
                                                                                         (number?/c
                                                                                          j7302
                                                                                          k7303
                                                                                          g7301)))
                                                                                 (f7304
                                                                                  x7408
                                                                                  x7407))))
                                                                       (number?/c
                                                                        j7302
                                                                        k7303
                                                                        x7406))))
                                                             g7405))))
                                                 g7404))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7403 (orig-/ a b)))
                                                 g7403))))
                                           (car
                                            ((lambda (j7306 k7307 f7308)
                                               (letrec ((g7410
                                                         (lambda (g7305)
                                                           (letrec ((g7411
                                                                     (letrec ((x7412
                                                                               (letrec ((x7413
                                                                                         (pair?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7305)))
                                                                                 (f7308
                                                                                  x7413))))
                                                                       (any/c
                                                                        j7306
                                                                        k7307
                                                                        x7412))))
                                                             g7411))))
                                                 g7410))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7409 (orig-car p)))
                                                 g7409))))
                                           (cdr
                                            ((lambda (j7310 k7311 f7312)
                                               (letrec ((g7415
                                                         (lambda (g7309)
                                                           (letrec ((g7416
                                                                     (letrec ((x7417
                                                                               (letrec ((x7418
                                                                                         (pair?/c
                                                                                          j7310
                                                                                          k7311
                                                                                          g7309)))
                                                                                 (f7312
                                                                                  x7418))))
                                                                       (any/c
                                                                        j7310
                                                                        k7311
                                                                        x7417))))
                                                             g7416))))
                                                 g7415))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7414 (orig-cdr p)))
                                                 g7414))))
                                           (cons
                                            ((lambda (j7315 k7316 f7317)
                                               (letrec ((g7420
                                                         (lambda (g7313 g7314)
                                                           (letrec ((g7421
                                                                     (letrec ((x7422
                                                                               (letrec ((x7424
                                                                                         (any/c
                                                                                          j7315
                                                                                          k7316
                                                                                          g7313))
                                                                                        (x7423
                                                                                         (any/c
                                                                                          j7315
                                                                                          k7316
                                                                                          g7314)))
                                                                                 (f7317
                                                                                  x7424
                                                                                  x7423))))
                                                                       (pair?/c
                                                                        j7315
                                                                        k7316
                                                                        x7422))))
                                                             g7421))))
                                                 g7420))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7419
                                                         (orig-cons a b)))
                                                 g7419))))
                                           (vector-ref
                                            ((lambda (j7319 k7320 f7321)
                                               (letrec ((g7426
                                                         (lambda (g7318)
                                                           (letrec ((g7427
                                                                     (letrec ((x7428
                                                                               (letrec ((x7429
                                                                                         (vector?/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7318)))
                                                                                 (f7321
                                                                                  x7429))))
                                                                       (integer?/c
                                                                        j7319
                                                                        k7320
                                                                        x7428))))
                                                             g7427))))
                                                 g7426))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7425
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7425))))
                                           (vector-set!
                                            ((lambda (j7324 k7325 f7326)
                                               (letrec ((g7431
                                                         (lambda (g7322 g7323)
                                                           (letrec ((g7432
                                                                     (letrec ((x7433
                                                                               (letrec ((x7435
                                                                                         (vector?/c
                                                                                          j7324
                                                                                          k7325
                                                                                          g7322))
                                                                                        (x7434
                                                                                         (integer?/c
                                                                                          j7324
                                                                                          k7325
                                                                                          g7323)))
                                                                                 (f7326
                                                                                  x7435
                                                                                  x7434))))
                                                                       (any/c
                                                                        j7324
                                                                        k7325
                                                                        x7433))))
                                                             g7432))))
                                                 g7431))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7430
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7430))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7436
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7436)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7437
                                                        (letrec ((x7438
                                                                  (letrec ((x7439
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7439))))
                                                          (cdr x7438))))
                                                g7437)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7440
                                                        (letrec ((x7443
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7443)))
                                                       (g7441
                                                        (letrec ((x7444
                                                                  (list? l)))
                                                          (assert x7444)))
                                                       (g7442
                                                        (letrec ((x-cnd7445
                                                                  (null? l)))
                                                          (if x-cnd7445
                                                            '()
                                                            (letrec ((x7448
                                                                      (letrec ((x7449
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7449)))
                                                                     (x7446
                                                                      (letrec ((x7447
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7447))))
                                                              (cons
                                                               x7448
                                                               x7446))))))
                                                g7442)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7450
                                                        (letrec ((x7451
                                                                  (car x)))
                                                          (cdr x7451))))
                                                g7450)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7452
                                                        (letrec ((x7453
                                                                  (letrec ((x7454
                                                                            (letrec ((x7455
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7455))))
                                                                    (cdr
                                                                     x7454))))
                                                          (car x7453))))
                                                g7452)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7456
                                                        (letrec ((x7457
                                                                  (letrec ((x7458
                                                                            (letrec ((x7459
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7459))))
                                                                    (car
                                                                     x7458))))
                                                          (cdr x7457))))
                                                g7456)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7460
                                                        (letrec ((x7463
                                                                  (string?
                                                                   filename)))
                                                          (assert x7463)))
                                                       (g7461
                                                        (letrec ((x7464
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7464)))
                                                       (g7462
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7465
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7466 res))
                                                            g7466))))
                                                g7462)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7467
                                                        (letrec ((x7468
                                                                  (letrec ((x7469
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7469))))
                                                          (car x7468))))
                                                g7467)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7470
                                                        (letrec ((x7471
                                                                  (letrec ((x7472
                                                                            (letrec ((x7473
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7473))))
                                                                    (car
                                                                     x7472))))
                                                          (cdr x7471))))
                                                g7470)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7474
                                                        (letrec ((x7476
                                                                  (list? l)))
                                                          (assert x7476)))
                                                       (g7475
                                                        (letrec ((x-cnd7477
                                                                  (null? l)))
                                                          (if x-cnd7477
                                                            #f
                                                            (letrec ((x-cnd7478
                                                                      (letrec ((x7479
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7479
                                                                         k))))
                                                              (if x-cnd7478
                                                                (car l)
                                                                (letrec ((x7480
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7480))))))))
                                                g7475)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7481
                                                        (letrec ((x7482
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7482))))
                                                g7481)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7483
                                                        (letrec ((x7485
                                                                  (list? l)))
                                                          (assert x7485)))
                                                       (g7484
                                                        (letrec ((x-cnd7486
                                                                  (null? l)))
                                                          (if x-cnd7486
                                                            ""
                                                            (letrec ((x7489
                                                                      (letrec ((x7490
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7490)))
                                                                     (x7487
                                                                      (letrec ((x7488
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7488))))
                                                              (string-append
                                                               x7489
                                                               x7487))))))
                                                g7484)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7491
                                                        (letrec ((x7494
                                                                  (char? c1)))
                                                          (assert x7494)))
                                                       (g7492
                                                        (letrec ((x7495
                                                                  (char? c2)))
                                                          (assert x7495)))
                                                       (g7493
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7496
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7496))))
                                                g7493)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7497
                                                        (letrec ((x7498
                                                                  (letrec ((x7499
                                                                            (letrec ((x7500
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7500))))
                                                                    (cdr
                                                                     x7499))))
                                                          (cdr x7498))))
                                                g7497)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7501
                                                        (letrec ((x7504
                                                                  (list? l)))
                                                          (assert x7504)))
                                                       (g7502
                                                        (letrec ((x7505
                                                                  (number?)))
                                                          (assert x7505)))
                                                       (g7503
                                                        (letrec ((x-cnd7506
                                                                  (zero? k)))
                                                          (if x-cnd7506
                                                            x
                                                            (letrec ((x7508
                                                                      (cdr x))
                                                                     (x7507
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7508
                                                               x7507))))))
                                                g7503)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7509 '())) g7509)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7510
                                                        (letrec ((x-cnd7511
                                                                  (letrec ((x7512
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7512))))
                                                          (if x-cnd7511
                                                            (letrec ((x7513
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7513))
                                                            #f))))
                                                g7510)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7514
                                                        (letrec ((x7516
                                                                  (number? x)))
                                                          (assert x7516)))
                                                       (g7515
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7517
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7518
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7518)))))
                                                            g7517))))
                                                g7515)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7519
                                                        (letrec ((val7244
                                                                  (letrec ((x7520
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7520
                                                                     9))))
                                                          (letrec ((g7521
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7522
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7522
                                                                                   10))))
                                                                        (letrec ((g7523
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7524
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7524
                                                                                       32)))))
                                                                          g7523)))))
                                                            g7521))))
                                                g7519)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7525
                                                        (letrec ((x7526
                                                                  (letrec ((x7527
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7527))))
                                                          (cdr x7526))))
                                                g7525)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7528
                                                        (letrec ((x7530
                                                                  (number? x)))
                                                          (assert x7530)))
                                                       (g7529 (> x 0)))
                                                g7529)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7531 #f)) g7531)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7532
                                                        (letrec ((x7533
                                                                  (cdr x)))
                                                          (cdr x7533))))
                                                g7532)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7534
                                                        (letrec ((x7536
                                                                  (number? x)))
                                                          (assert x7536)))
                                                       (g7535
                                                        (letrec ((x-cnd7537
                                                                  (< x 0)))
                                                          (if x-cnd7537
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7535)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7538
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7539
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x7541
                                                                                          (null?
                                                                                           a))
                                                                                         (x7540
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7541
                                                                                       x7540))))
                                                                        (letrec ((g7542
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x7545
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7544
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7543
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7545
                                                                                                     x7544
                                                                                                     x7543))))
                                                                                      (letrec ((g7546
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x7554
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7553
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7550
                                                                                                                      (letrec ((x7552
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7551
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7552
                                                                                                                         x7551)))
                                                                                                                     (x7547
                                                                                                                      (letrec ((x7549
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7548
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7549
                                                                                                                         x7548))))
                                                                                                              (and x7554
                                                                                                                   x7553
                                                                                                                   x7550
                                                                                                                   x7547))))
                                                                                                    (letrec ((g7555
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x7571
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7570
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7556
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7557
                                                                                                                                      (letrec ((x7568
                                                                                                                                                (letrec ((x7569
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7569
                                                                                                                                                   n)))
                                                                                                                                               (x7558
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7559
                                                                                                                                                                      (letrec ((x7566
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7560
                                                                                                                                                                                (letrec ((x7563
                                                                                                                                                                                          (letrec ((x7565
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7564
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7565
                                                                                                                                                                                             x7564)))
                                                                                                                                                                                         (x7561
                                                                                                                                                                                          (letrec ((x7562
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7562))))
                                                                                                                                                                                  (and x7563
                                                                                                                                                                                       x7561))))
                                                                                                                                                                        (or x7566
                                                                                                                                                                            x7560))))
                                                                                                                                                              g7559))))
                                                                                                                                                  (letrec ((g7567
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7567))))
                                                                                                                                        (and x7568
                                                                                                                                             x7558))))
                                                                                                                              g7557))))
                                                                                                                  (and x7571
                                                                                                                       x7570
                                                                                                                       x7556)))))
                                                                                                      g7555)))))
                                                                                        g7546)))))
                                                                          g7542)))))
                                                            g7539))))
                                                g7538)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7572
                                                        (letrec ((x7573
                                                                  (letrec ((x7574
                                                                            (letrec ((x7575
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7575))))
                                                                    (car
                                                                     x7574))))
                                                          (cdr x7573))))
                                                g7572)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7576
                                                        (letrec ((x7577
                                                                  (letrec ((x7578
                                                                            (letrec ((x7579
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7579))))
                                                                    (car
                                                                     x7578))))
                                                          (car x7577))))
                                                g7576)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7580 (eq? x y)))
                                                g7580)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7581
                                                        (letrec ((x7583
                                                                  (number? x)))
                                                          (assert x7583)))
                                                       (g7582
                                                        (letrec ((val7250
                                                                  (> x y)))
                                                          (letrec ((g7584
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7585
                                                                                  (if val7251
                                                                                    val7251
                                                                                    #f)))
                                                                          g7585)))))
                                                            g7584))))
                                                g7582)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7586
                                                        (letrec ((x7589
                                                                  (string?
                                                                   filename)))
                                                          (assert x7589)))
                                                       (g7587
                                                        (letrec ((x7590
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7590)))
                                                       (g7588
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7591
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7592 res))
                                                            g7592))))
                                                g7588)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7593 (cons x '())))
                                                g7593)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7594
                                                        (letrec ((x7597
                                                                  (char? c1)))
                                                          (assert x7597)))
                                                       (g7595
                                                        (letrec ((x7598
                                                                  (char? c2)))
                                                          (assert x7598)))
                                                       (g7596
                                                        (letrec ((val7252
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7599
                                                                    (if val7252
                                                                      val7252
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7599))))
                                                g7596)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7600
                                                        (letrec ((x7601
                                                                  (letrec ((x7602
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7602))))
                                                          (cdr x7601))))
                                                g7600)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7603
                                                        (letrec ((x7604
                                                                  (letrec ((x7605
                                                                            (letrec ((x7606
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7606))))
                                                                    (car
                                                                     x7605))))
                                                          (cdr x7604))))
                                                g7603)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7607
                                                        (letrec ((x7608
                                                                  (letrec ((x7609
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7609))))
                                                          (car x7608))))
                                                g7607)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7610
                                                        (letrec ((x7611
                                                                  (letrec ((x7612
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7612))))
                                                          (car x7611))))
                                                g7610)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7613
                                                        (letrec ((x7616
                                                                  (char? c1)))
                                                          (assert x7616)))
                                                       (g7614
                                                        (letrec ((x7617
                                                                  (char? c2)))
                                                          (assert x7617)))
                                                       (g7615
                                                        (letrec ((x7618
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7618))))
                                                g7615)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7619
                                                        (letrec ((x7620
                                                                  (letrec ((x7621
                                                                            (letrec ((x7622
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7622))))
                                                                    (car
                                                                     x7621))))
                                                          (car x7620))))
                                                g7619)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7623
                                                        (letrec ((x7625
                                                                  (number? x)))
                                                          (assert x7625)))
                                                       (g7624 (< x 0)))
                                                g7624)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7626 (memq e l)))
                                                g7626)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7627
                                                        (letrec ((x7628
                                                                  (letrec ((x7629
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7629))))
                                                          (car x7628))))
                                                g7627)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7630 '())) g7630)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7631
                                                        (letrec ((x7633
                                                                  (list? l)))
                                                          (assert x7633)))
                                                       (g7632
                                                        (letrec ((x-cnd7634
                                                                  (null? l)))
                                                          (if x-cnd7634
                                                            '()
                                                            (letrec ((x7637
                                                                      (letrec ((x7638
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7638)))
                                                                     (x7635
                                                                      (letrec ((x7636
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7636))))
                                                              (append
                                                               x7637
                                                               x7635))))))
                                                g7632)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7639
                                                        (letrec ((x7640
                                                                  (letrec ((x7641
                                                                            (letrec ((x7642
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7642))))
                                                                    (car
                                                                     x7641))))
                                                          (car x7640))))
                                                g7639)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7643
                                                        (letrec ((x7644
                                                                  (letrec ((x7645
                                                                            (letrec ((x7646
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7646))))
                                                                    (cdr
                                                                     x7645))))
                                                          (cdr x7644))))
                                                g7643)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7647
                                                        (letrec ((x7649
                                                                  (number? x)))
                                                          (assert x7649)))
                                                       (g7648
                                                        (letrec ((x7650
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7650))))
                                                g7648)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7651
                                                        (letrec ((x7652
                                                                  (letrec ((x7653
                                                                            (letrec ((x7654
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7654))))
                                                                    (car
                                                                     x7653))))
                                                          (car x7652))))
                                                g7651)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7655
                                                        (letrec ((x7658
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7658)))
                                                       (g7656
                                                        (letrec ((x7659
                                                                  (list?
                                                                   args)))
                                                          (assert x7659)))
                                                       (g7657
                                                        (if cnd
                                                          (letrec ((g7660
                                                                    (proc)))
                                                            g7660)
                                                          (if cnd
                                                            (letrec ((g7661
                                                                      (letrec ((x7662
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7662))))
                                                              g7661)
                                                            (if cnd
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
                                                              (if cnd
                                                                (letrec ((g7666
                                                                          (letrec ((x7669
                                                                                    (car
                                                                                     args))
                                                                                   (x7668
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7667
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7669
                                                                             x7668
                                                                             x7667))))
                                                                  g7666)
                                                                (if cnd
                                                                  (letrec ((g7670
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
                                                                                       args)))
                                                                              (proc
                                                                               x7674
                                                                               x7673
                                                                               x7672
                                                                               x7671))))
                                                                    g7670)
                                                                  (if cnd
                                                                    (letrec ((g7675
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
                                                                                         args))
                                                                                       (x7676
                                                                                        (letrec ((x7677
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7677))))
                                                                                (proc
                                                                                 x7681
                                                                                 x7680
                                                                                 x7679
                                                                                 x7678
                                                                                 x7676))))
                                                                      g7675)
                                                                    (if cnd
                                                                      (letrec ((g7682
                                                                                (letrec ((x7690
                                                                                          (car
                                                                                           args))
                                                                                         (x7689
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7688
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7687
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7685
                                                                                          (letrec ((x7686
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7686)))
                                                                                         (x7683
                                                                                          (letrec ((x7684
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7684))))
                                                                                  (proc
                                                                                   x7690
                                                                                   x7689
                                                                                   x7688
                                                                                   x7687
                                                                                   x7685
                                                                                   x7683))))
                                                                        g7682)
                                                                      (if cnd
                                                                        (letrec ((g7691
                                                                                  (letrec ((x7701
                                                                                            (car
                                                                                             args))
                                                                                           (x7700
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7699
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7698
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7696
                                                                                            (letrec ((x7697
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7697)))
                                                                                           (x7694
                                                                                            (letrec ((x7695
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7695)))
                                                                                           (x7692
                                                                                            (letrec ((x7693
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7693))))
                                                                                    (proc
                                                                                     x7701
                                                                                     x7700
                                                                                     x7699
                                                                                     x7698
                                                                                     x7696
                                                                                     x7694
                                                                                     x7692))))
                                                                          g7691)
                                                                        (letrec ((g7702
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7702)))))))))))
                                                g7657)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7703
                                                        (letrec ((x7705
                                                                  (list? l)))
                                                          (assert x7705)))
                                                       (g7704
                                                        (letrec ((x-cnd7706
                                                                  (null? l)))
                                                          (if x-cnd7706
                                                            #f
                                                            (letrec ((x-cnd7707
                                                                      (letrec ((x7708
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7708
                                                                         e))))
                                                              (if x-cnd7707
                                                                l
                                                                (letrec ((x7709
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7709))))))))
                                                g7704)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7710
                                                        (letrec ((x7711
                                                                  (letrec ((x7712
                                                                            (letrec ((x7713
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7713))))
                                                                    (cdr
                                                                     x7712))))
                                                          (cdr x7711))))
                                                g7710)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7714
                                                        (letrec ((x7715
                                                                  (letrec ((x7716
                                                                            (letrec ((x7717
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7717))))
                                                                    (cdr
                                                                     x7716))))
                                                          (car x7715))))
                                                g7714)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7718 (random 42)))
                                                g7718)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7719
                                                        (letrec ((x7721
                                                                  (number? x)))
                                                          (assert x7721)))
                                                       (g7720 (= x 0)))
                                                g7720)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7722
                                                        (letrec ((val7253
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7723
                                                                    (if val7253
                                                                      val7253
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7723))))
                                                g7722)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7724
                                                        (letrec ((x7725
                                                                  (cdr x)))
                                                          (car x7725))))
                                                g7724)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7726
                                                        (letrec ((val7254
                                                                  (letrec ((x7729
                                                                            (pair?
                                                                             l))
                                                                           (x7727
                                                                            (letrec ((x7728
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7728))))
                                                                    (and x7729
                                                                         x7727))))
                                                          (letrec ((g7730
                                                                    (if val7254
                                                                      val7254
                                                                      (null?
                                                                       l))))
                                                            g7730))))
                                                g7726)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7731
                                                        (letrec ((x7732
                                                                  (letrec ((x7733
                                                                            (letrec ((x7734
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7734))))
                                                                    (cdr
                                                                     x7733))))
                                                          (cdr x7732))))
                                                g7731)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7735
                                                        (letrec ((x-cnd7736
                                                                  (letrec ((x7737
                                                                            #\0))
                                                                    (char<=?
                                                                     x7737
                                                                     c))))
                                                          (if x-cnd7736
                                                            (letrec ((x7738
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7738))
                                                            #f))))
                                                g7735)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7739
                                                        (letrec ((x7741
                                                                  (list? l)))
                                                          (assert x7741)))
                                                       (g7740
                                                        (letrec ((x-cnd7742
                                                                  (null? l)))
                                                          (if x-cnd7742
                                                            #f
                                                            (letrec ((x-cnd7743
                                                                      (letrec ((x7744
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7744
                                                                         k))))
                                                              (if x-cnd7743
                                                                (car l)
                                                                (letrec ((x7745
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7745))))))))
                                                g7740)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7746 (if x #f #t)))
                                                g7746)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7747 (append l1 l2)))
                                                g7747)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7748
                                                        (letrec ((x7750
                                                                  (list? l)))
                                                          (assert x7750)))
                                                       (g7749
                                                        (letrec ((x-cnd7751
                                                                  (null? l)))
                                                          (if x-cnd7751
                                                            #f
                                                            (letrec ((x-cnd7752
                                                                      (letrec ((x7753
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7753
                                                                         e))))
                                                              (if x-cnd7752
                                                                l
                                                                (letrec ((x7754
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7754))))))))
                                                g7749)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7755
                                                        (letrec ((x7756
                                                                  (letrec ((x7757
                                                                            (letrec ((x7758
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7758))))
                                                                    (cdr
                                                                     x7757))))
                                                          (car x7756))))
                                                g7755)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7759
                                                        (letrec ((x7761
                                                                  (list? l)))
                                                          (assert x7761)))
                                                       (g7760
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7762
                                                                              (letrec ((x-cnd7763
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7763
                                                                                  0
                                                                                  (letrec ((x7764
                                                                                            (letrec ((x7765
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7765))))
                                                                                    (+
                                                                                     1
                                                                                     x7764))))))
                                                                      g7762))))
                                                          (letrec ((g7766
                                                                    (rec l)))
                                                            g7766))))
                                                g7760)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7767
                                                        (letrec ((x7770
                                                                  (char? c1)))
                                                          (assert x7770)))
                                                       (g7768
                                                        (letrec ((x7771
                                                                  (char? c2)))
                                                          (assert x7771)))
                                                       (g7769
                                                        (letrec ((val7255
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7772
                                                                    (if val7255
                                                                      val7255
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7772))))
                                                g7769)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7773
                                                        (letrec ((x7774
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7774))))
                                                g7773)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7775
                                                        (letrec ((x7776
                                                                  (letrec ((x7777
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7777))))
                                                          (cdr x7776))))
                                                g7775)))
                                           (assoc
                                            (lambda (k l)
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
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7783
                                                                         k))))
                                                              (if x-cnd7782
                                                                (car l)
                                                                (letrec ((x7784
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7784))))))))
                                                g7779)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7785
                                                        (letrec ((x7786
                                                                  (car x)))
                                                          (car x7786))))
                                                g7785)))
                                           (char>?
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
                                                        (letrec ((x7792
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7792))))
                                                g7789)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7793
                                                        (letrec ((val7256
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7794
                                                                    (if val7256
                                                                      val7256
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7794))))
                                                g7793)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7795
                                                        (letrec ((x7798
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7798)))
                                                       (g7796
                                                        (letrec ((x7799
                                                                  (list? l)))
                                                          (assert x7799)))
                                                       (g7797
                                                        (letrec ((x-cnd7800
                                                                  (null? l)))
                                                          (if x-cnd7800
                                                            #t
                                                            (letrec ((x-cnd7801
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7801
                                                                (letrec ((g7802
                                                                          (letrec ((x7804
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7804)))
                                                                         (g7803
                                                                          (letrec ((x7805
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7805))))
                                                                  g7803)
                                                                '()))))))
                                                g7797)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7806
                                                        (letrec ((x7808
                                                                  (number? x)))
                                                          (assert x7808)))
                                                       (g7807
                                                        (letrec ((x-cnd7809
                                                                  (< x 0)))
                                                          (if x-cnd7809
                                                            (- 0 x)
                                                            x))))
                                                g7807)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7810
                                                        (letrec ((x7813
                                                                  (char? c1)))
                                                          (assert x7813)))
                                                       (g7811
                                                        (letrec ((x7814
                                                                  (char? c2)))
                                                          (assert x7814)))
                                                       (g7812
                                                        (letrec ((val7257
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7815
                                                                    (if val7257
                                                                      val7257
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7815))))
                                                g7812)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7816
                                                        (letrec ((x7817
                                                                  (letrec ((x7818
                                                                            (letrec ((x7819
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7819))))
                                                                    (cdr
                                                                     x7818))))
                                                          (car x7817))))
                                                g7816)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7820 #f)) g7820)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7821
                                                        (letrec ((x7823
                                                                  (letrec ((x7824
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7824)))
                                                                 (x7822
                                                                  (gcd m n)))
                                                          (/ x7823 x7822))))
                                                g7821)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7825
                                                        (letrec ((x7827
                                                                  (number? x)))
                                                          (assert x7827)))
                                                       (g7826
                                                        (letrec ((x7828
                                                                  (<= x y)))
                                                          (not x7828))))
                                                g7826)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7829
                                                        (letrec ((x7833
                                                                  (list? l)))
                                                          (assert x7833)))
                                                       (g7830
                                                        (letrec ((x7834
                                                                  (number?
                                                                   index)))
                                                          (assert x7834)))
                                                       (g7831
                                                        (letrec ((x7835
                                                                  (letrec ((x7836
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7836))))
                                                          (assert x7835)))
                                                       (g7832
                                                        (letrec ((x-cnd7837
                                                                  (= index 0)))
                                                          (if x-cnd7837
                                                            (car l)
                                                            (letrec ((x7839
                                                                      (cdr l))
                                                                     (x7838
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7839
                                                               x7838))))))
                                                g7832)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7840
                                                        (letrec ((x-cnd7841
                                                                  (= b 0)))
                                                          (if x-cnd7841
                                                            a
                                                            (letrec ((x7842
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7842))))))
                                                g7840)))
                                           (recursive-div2
                                            (lambda (l)
                                              (letrec ((g7843
                                                        (letrec ((x-cnd7844
                                                                  (empty? l)))
                                                          (if x-cnd7844
                                                            empty
                                                            (letrec ((x7848
                                                                      (car l))
                                                                     (x7845
                                                                      (letrec ((x7846
                                                                                (letrec ((x7847
                                                                                          (cdr
                                                                                           l)))
                                                                                  (cdr
                                                                                   x7847))))
                                                                        (recursive-div2
                                                                         x7846))))
                                                              (cons
                                                               x7848
                                                               x7845))))))
                                                g7843)))
                                           (even-list/c
                                            (lambda (g7327 g7328 g7329)
                                              (letrec ((g7849
                                                        (letrec ((x-cnd7850
                                                                  ((lambda ()
                                                                     (letrec ((g7851
                                                                               (letrec ((x7852
                                                                                         (letrec ((x7853
                                                                                                   (cons/c
                                                                                                    any/c
                                                                                                    even-list/c)))
                                                                                           (cons/c
                                                                                            any/c
                                                                                            x7853))))
                                                                                 (or/c
                                                                                  null?
                                                                                  x7852))))
                                                                       g7851))
                                                                   g7329)))
                                                          (if x-cnd7850
                                                            g7329
                                                            (blame
                                                             g7327
                                                             '(lambda ()
                                                                (or/c
                                                                 null?
                                                                 (cons/c
                                                                  any/c
                                                                  (cons/c
                                                                   any/c
                                                                   even-list/c)))))))))
                                                g7849))))
                                    (letrec ((g7854
                                              (letrec ((x7856
                                                        ((lambda (j7331
                                                                  k7332
                                                                  f7333)
                                                           (letrec ((g7857
                                                                     (lambda (g7330)
                                                                       (letrec ((g7858
                                                                                 (letrec ((x7862
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7859
                                                                                           (letrec ((x7860
                                                                                                     (letrec ((x7861
                                                                                                               (even-list/c)))
                                                                                                       (x7861
                                                                                                        j7331
                                                                                                        k7332
                                                                                                        g7330))))
                                                                                             (f7333
                                                                                              x7860))))
                                                                                   (x7862
                                                                                    j7331
                                                                                    k7332
                                                                                    x7859))))
                                                                         g7858))))
                                                             g7857))
                                                         'module
                                                         'importer
                                                         recursive-div2))
                                                       (x7855 (input)))
                                                (x7856 x7855))))
                                      g7854))))
                          g7347))))
              g7345)))
    g7344))
