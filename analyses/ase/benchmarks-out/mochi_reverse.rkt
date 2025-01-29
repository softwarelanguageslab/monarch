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
                                           (real?/c
                                            (lambda (g7258 g7259 g7260)
                                              (letrec ((g7345
                                                        (letrec ((x-cnd7346
                                                                  (real?
                                                                   g7260)))
                                                          (if x-cnd7346
                                                            g7260
                                                            (blame
                                                             g7258
                                                             'real?)))))
                                                g7345)))
                                           (boolean?/c
                                            (lambda (g7261 g7262 g7263)
                                              (letrec ((g7347
                                                        (letrec ((x-cnd7348
                                                                  (boolean?
                                                                   g7263)))
                                                          (if x-cnd7348
                                                            g7263
                                                            (blame
                                                             g7261
                                                             'boolean?)))))
                                                g7347)))
                                           (number?/c
                                            (lambda (g7264 g7265 g7266)
                                              (letrec ((g7349
                                                        (letrec ((x-cnd7350
                                                                  (number?
                                                                   g7266)))
                                                          (if x-cnd7350
                                                            g7266
                                                            (blame
                                                             g7264
                                                             'number?)))))
                                                g7349)))
                                           (any/c
                                            (lambda (g7267 g7268 g7269)
                                              (letrec ((g7351
                                                        (letrec ((x-cnd7352
                                                                  ((lambda (v)
                                                                     (letrec ((g7353
                                                                               #t))
                                                                       g7353))
                                                                   g7269)))
                                                          (if x-cnd7352
                                                            g7269
                                                            (blame
                                                             g7267
                                                             '(lambda (v)
                                                                #t))))))
                                                g7351)))
                                           (any?/c
                                            (lambda (g7270 g7271 g7272)
                                              (letrec ((g7354
                                                        (letrec ((x-cnd7355
                                                                  ((lambda (v)
                                                                     (letrec ((g7356
                                                                               #t))
                                                                       g7356))
                                                                   g7272)))
                                                          (if x-cnd7355
                                                            g7272
                                                            (blame
                                                             g7270
                                                             '(lambda (v)
                                                                #t))))))
                                                g7354)))
                                           (cons?/c
                                            (lambda (g7273 g7274 g7275)
                                              (letrec ((g7357
                                                        (letrec ((x-cnd7358
                                                                  (pair?
                                                                   g7275)))
                                                          (if x-cnd7358
                                                            g7275
                                                            (blame
                                                             g7273
                                                             'pair?)))))
                                                g7357)))
                                           (pair?/c
                                            (lambda (g7276 g7277 g7278)
                                              (letrec ((g7359
                                                        (letrec ((x-cnd7360
                                                                  (pair?
                                                                   g7278)))
                                                          (if x-cnd7360
                                                            g7278
                                                            (blame
                                                             g7276
                                                             'pair?)))))
                                                g7359)))
                                           (integer?/c
                                            (lambda (g7279 g7280 g7281)
                                              (letrec ((g7361
                                                        (letrec ((x-cnd7362
                                                                  (integer?
                                                                   g7281)))
                                                          (if x-cnd7362
                                                            g7281
                                                            (blame
                                                             g7279
                                                             'integer?)))))
                                                g7361)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7363
                                                        (lambda (k j v)
                                                          (letrec ((g7364
                                                                    (letrec ((x-cnd7365
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7365
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7364))))
                                                g7363)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7366
                                                        (lambda (k j v)
                                                          (letrec ((g7367
                                                                    (letrec ((x-cnd7368
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7368
                                                                        '()
                                                                        (letrec ((x7372
                                                                                  (letrec ((x7373
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7373)))
                                                                                 (x7369
                                                                                  (letrec ((x7371
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7370
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7371
                                                                                     k
                                                                                     j
                                                                                     x7370))))
                                                                          (orig-cons
                                                                           x7372
                                                                           x7369))))))
                                                            g7367))))
                                                g7366)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7374 #t)) g7374)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7375
                                                        (letrec ((x7376
                                                                  (= v 0)))
                                                          (not x7376))))
                                                g7375)))
                                           (nonzero?/c
                                            (lambda (g7282 g7283 g7284)
                                              (letrec ((g7377
                                                        (letrec ((x-cnd7378
                                                                  ((lambda (v)
                                                                     (letrec ((g7379
                                                                               (letrec ((x7380
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7380))))
                                                                       g7379))
                                                                   g7284)))
                                                          (if x-cnd7378
                                                            g7284
                                                            (blame
                                                             g7282
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7377)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7381 v)) g7381)))
                                           (+
                                            ((lambda (j7287 k7288 f7289)
                                               (letrec ((g7383
                                                         (lambda (g7285 g7286)
                                                           (letrec ((g7384
                                                                     (letrec ((x7385
                                                                               (letrec ((x7387
                                                                                         (number?/c
                                                                                          j7287
                                                                                          k7288
                                                                                          g7285))
                                                                                        (x7386
                                                                                         (number?/c
                                                                                          j7287
                                                                                          k7288
                                                                                          g7286)))
                                                                                 (f7289
                                                                                  x7387
                                                                                  x7386))))
                                                                       (number?/c
                                                                        j7287
                                                                        k7288
                                                                        x7385))))
                                                             g7384))))
                                                 g7383))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7382 (orig-+ a b)))
                                                 g7382))))
                                           (-
                                            ((lambda (j7292 k7293 f7294)
                                               (letrec ((g7389
                                                         (lambda (g7290 g7291)
                                                           (letrec ((g7390
                                                                     (letrec ((x7391
                                                                               (letrec ((x7393
                                                                                         (number?/c
                                                                                          j7292
                                                                                          k7293
                                                                                          g7290))
                                                                                        (x7392
                                                                                         (number?/c
                                                                                          j7292
                                                                                          k7293
                                                                                          g7291)))
                                                                                 (f7294
                                                                                  x7393
                                                                                  x7392))))
                                                                       (number?/c
                                                                        j7292
                                                                        k7293
                                                                        x7391))))
                                                             g7390))))
                                                 g7389))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7388 (orig-- a b)))
                                                 g7388))))
                                           (*
                                            ((lambda (j7297 k7298 f7299)
                                               (letrec ((g7395
                                                         (lambda (g7295 g7296)
                                                           (letrec ((g7396
                                                                     (letrec ((x7397
                                                                               (letrec ((x7399
                                                                                         (number?/c
                                                                                          j7297
                                                                                          k7298
                                                                                          g7295))
                                                                                        (x7398
                                                                                         (number?/c
                                                                                          j7297
                                                                                          k7298
                                                                                          g7296)))
                                                                                 (f7299
                                                                                  x7399
                                                                                  x7398))))
                                                                       (number?/c
                                                                        j7297
                                                                        k7298
                                                                        x7397))))
                                                             g7396))))
                                                 g7395))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7394 (orig-* a b)))
                                                 g7394))))
                                           (/
                                            ((lambda (j7302 k7303 f7304)
                                               (letrec ((g7401
                                                         (lambda (g7300 g7301)
                                                           (letrec ((g7402
                                                                     (letrec ((x7403
                                                                               (letrec ((x7405
                                                                                         (number?/c
                                                                                          j7302
                                                                                          k7303
                                                                                          g7300))
                                                                                        (x7404
                                                                                         (number?/c
                                                                                          j7302
                                                                                          k7303
                                                                                          g7301)))
                                                                                 (f7304
                                                                                  x7405
                                                                                  x7404))))
                                                                       (number?/c
                                                                        j7302
                                                                        k7303
                                                                        x7403))))
                                                             g7402))))
                                                 g7401))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7400 (orig-/ a b)))
                                                 g7400))))
                                           (car
                                            ((lambda (j7306 k7307 f7308)
                                               (letrec ((g7407
                                                         (lambda (g7305)
                                                           (letrec ((g7408
                                                                     (letrec ((x7409
                                                                               (letrec ((x7410
                                                                                         (pair?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7305)))
                                                                                 (f7308
                                                                                  x7410))))
                                                                       (any/c
                                                                        j7306
                                                                        k7307
                                                                        x7409))))
                                                             g7408))))
                                                 g7407))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7406 (orig-car p)))
                                                 g7406))))
                                           (cdr
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
                                               (letrec ((g7411 (orig-cdr p)))
                                                 g7411))))
                                           (cons
                                            ((lambda (j7315 k7316 f7317)
                                               (letrec ((g7417
                                                         (lambda (g7313 g7314)
                                                           (letrec ((g7418
                                                                     (letrec ((x7419
                                                                               (letrec ((x7421
                                                                                         (any/c
                                                                                          j7315
                                                                                          k7316
                                                                                          g7313))
                                                                                        (x7420
                                                                                         (any/c
                                                                                          j7315
                                                                                          k7316
                                                                                          g7314)))
                                                                                 (f7317
                                                                                  x7421
                                                                                  x7420))))
                                                                       (pair?/c
                                                                        j7315
                                                                        k7316
                                                                        x7419))))
                                                             g7418))))
                                                 g7417))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7416
                                                         (orig-cons a b)))
                                                 g7416))))
                                           (vector-ref
                                            ((lambda (j7319 k7320 f7321)
                                               (letrec ((g7423
                                                         (lambda (g7318)
                                                           (letrec ((g7424
                                                                     (letrec ((x7425
                                                                               (letrec ((x7426
                                                                                         (vector?/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7318)))
                                                                                 (f7321
                                                                                  x7426))))
                                                                       (integer?/c
                                                                        j7319
                                                                        k7320
                                                                        x7425))))
                                                             g7424))))
                                                 g7423))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7422
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7422))))
                                           (vector-set!
                                            ((lambda (j7324 k7325 f7326)
                                               (letrec ((g7428
                                                         (lambda (g7322 g7323)
                                                           (letrec ((g7429
                                                                     (letrec ((x7430
                                                                               (letrec ((x7432
                                                                                         (vector?/c
                                                                                          j7324
                                                                                          k7325
                                                                                          g7322))
                                                                                        (x7431
                                                                                         (integer?/c
                                                                                          j7324
                                                                                          k7325
                                                                                          g7323)))
                                                                                 (f7326
                                                                                  x7432
                                                                                  x7431))))
                                                                       (any/c
                                                                        j7324
                                                                        k7325
                                                                        x7430))))
                                                             g7429))))
                                                 g7428))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7427
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7427))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7433
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7433)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7434
                                                        (letrec ((x7435
                                                                  (letrec ((x7436
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7436))))
                                                          (cdr x7435))))
                                                g7434)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7437
                                                        (letrec ((x7440
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7440)))
                                                       (g7438
                                                        (letrec ((x7441
                                                                  (list? l)))
                                                          (assert x7441)))
                                                       (g7439
                                                        (letrec ((x-cnd7442
                                                                  (null? l)))
                                                          (if x-cnd7442
                                                            '()
                                                            (letrec ((x7445
                                                                      (letrec ((x7446
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7446)))
                                                                     (x7443
                                                                      (letrec ((x7444
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7444))))
                                                              (cons
                                                               x7445
                                                               x7443))))))
                                                g7439)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7447
                                                        (letrec ((x7448
                                                                  (car x)))
                                                          (cdr x7448))))
                                                g7447)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7449
                                                        (letrec ((x7450
                                                                  (letrec ((x7451
                                                                            (letrec ((x7452
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7452))))
                                                                    (cdr
                                                                     x7451))))
                                                          (car x7450))))
                                                g7449)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7453
                                                        (letrec ((x7454
                                                                  (letrec ((x7455
                                                                            (letrec ((x7456
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7456))))
                                                                    (car
                                                                     x7455))))
                                                          (cdr x7454))))
                                                g7453)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7457
                                                        (letrec ((x7460
                                                                  (string?
                                                                   filename)))
                                                          (assert x7460)))
                                                       (g7458
                                                        (letrec ((x7461
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7461)))
                                                       (g7459
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7462
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7463 res))
                                                            g7463))))
                                                g7459)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7464
                                                        (letrec ((x7465
                                                                  (letrec ((x7466
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7466))))
                                                          (car x7465))))
                                                g7464)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7467
                                                        (letrec ((x7468
                                                                  (letrec ((x7469
                                                                            (letrec ((x7470
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7470))))
                                                                    (car
                                                                     x7469))))
                                                          (cdr x7468))))
                                                g7467)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7471
                                                        (letrec ((x7473
                                                                  (list? l)))
                                                          (assert x7473)))
                                                       (g7472
                                                        (letrec ((x-cnd7474
                                                                  (null? l)))
                                                          (if x-cnd7474
                                                            #f
                                                            (letrec ((x-cnd7475
                                                                      (letrec ((x7476
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7476
                                                                         k))))
                                                              (if x-cnd7475
                                                                (car l)
                                                                (letrec ((x7477
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7477))))))))
                                                g7472)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7478
                                                        (letrec ((x7479
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7479))))
                                                g7478)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7480
                                                        (letrec ((x7482
                                                                  (list? l)))
                                                          (assert x7482)))
                                                       (g7481
                                                        (letrec ((x-cnd7483
                                                                  (null? l)))
                                                          (if x-cnd7483
                                                            ""
                                                            (letrec ((x7486
                                                                      (letrec ((x7487
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7487)))
                                                                     (x7484
                                                                      (letrec ((x7485
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7485))))
                                                              (string-append
                                                               x7486
                                                               x7484))))))
                                                g7481)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7488
                                                        (letrec ((x7491
                                                                  (char? c1)))
                                                          (assert x7491)))
                                                       (g7489
                                                        (letrec ((x7492
                                                                  (char? c2)))
                                                          (assert x7492)))
                                                       (g7490
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7493
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7493))))
                                                g7490)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7494
                                                        (letrec ((x7495
                                                                  (letrec ((x7496
                                                                            (letrec ((x7497
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7497))))
                                                                    (cdr
                                                                     x7496))))
                                                          (cdr x7495))))
                                                g7494)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7498
                                                        (letrec ((x7501
                                                                  (list? l)))
                                                          (assert x7501)))
                                                       (g7499
                                                        (letrec ((x7502
                                                                  (number?)))
                                                          (assert x7502)))
                                                       (g7500
                                                        (letrec ((x-cnd7503
                                                                  (zero? k)))
                                                          (if x-cnd7503
                                                            x
                                                            (letrec ((x7505
                                                                      (cdr x))
                                                                     (x7504
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7505
                                                               x7504))))))
                                                g7500)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7506 '())) g7506)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7507
                                                        (letrec ((x-cnd7508
                                                                  (letrec ((x7509
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7509))))
                                                          (if x-cnd7508
                                                            (letrec ((x7510
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7510))
                                                            #f))))
                                                g7507)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7511
                                                        (letrec ((x7513
                                                                  (number? x)))
                                                          (assert x7513)))
                                                       (g7512
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7514
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7515
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7515)))))
                                                            g7514))))
                                                g7512)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7516
                                                        (letrec ((val7244
                                                                  (letrec ((x7517
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7517
                                                                     9))))
                                                          (letrec ((g7518
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7519
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7519
                                                                                   10))))
                                                                        (letrec ((g7520
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7521
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7521
                                                                                       32)))))
                                                                          g7520)))))
                                                            g7518))))
                                                g7516)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7522
                                                        (letrec ((x7523
                                                                  (letrec ((x7524
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7524))))
                                                          (cdr x7523))))
                                                g7522)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7525
                                                        (letrec ((x7527
                                                                  (number? x)))
                                                          (assert x7527)))
                                                       (g7526 (> x 0)))
                                                g7526)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7528 #f)) g7528)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7529
                                                        (letrec ((x7530
                                                                  (cdr x)))
                                                          (cdr x7530))))
                                                g7529)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7531
                                                        (letrec ((x7533
                                                                  (number? x)))
                                                          (assert x7533)))
                                                       (g7532
                                                        (letrec ((x-cnd7534
                                                                  (< x 0)))
                                                          (if x-cnd7534
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7532)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7535
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7536
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x7538
                                                                                          (null?
                                                                                           a))
                                                                                         (x7537
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7538
                                                                                       x7537))))
                                                                        (letrec ((g7539
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x7542
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7541
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7540
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7542
                                                                                                     x7541
                                                                                                     x7540))))
                                                                                      (letrec ((g7543
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x7551
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7550
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7547
                                                                                                                      (letrec ((x7549
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7548
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7549
                                                                                                                         x7548)))
                                                                                                                     (x7544
                                                                                                                      (letrec ((x7546
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7545
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7546
                                                                                                                         x7545))))
                                                                                                              (and x7551
                                                                                                                   x7550
                                                                                                                   x7547
                                                                                                                   x7544))))
                                                                                                    (letrec ((g7552
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x7568
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7567
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7553
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7554
                                                                                                                                      (letrec ((x7565
                                                                                                                                                (letrec ((x7566
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7566
                                                                                                                                                   n)))
                                                                                                                                               (x7555
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7556
                                                                                                                                                                      (letrec ((x7563
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7557
                                                                                                                                                                                (letrec ((x7560
                                                                                                                                                                                          (letrec ((x7562
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7561
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7562
                                                                                                                                                                                             x7561)))
                                                                                                                                                                                         (x7558
                                                                                                                                                                                          (letrec ((x7559
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7559))))
                                                                                                                                                                                  (and x7560
                                                                                                                                                                                       x7558))))
                                                                                                                                                                        (or x7563
                                                                                                                                                                            x7557))))
                                                                                                                                                              g7556))))
                                                                                                                                                  (letrec ((g7564
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7564))))
                                                                                                                                        (and x7565
                                                                                                                                             x7555))))
                                                                                                                              g7554))))
                                                                                                                  (and x7568
                                                                                                                       x7567
                                                                                                                       x7553)))))
                                                                                                      g7552)))))
                                                                                        g7543)))))
                                                                          g7539)))))
                                                            g7536))))
                                                g7535)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7569
                                                        (letrec ((x7570
                                                                  (letrec ((x7571
                                                                            (letrec ((x7572
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7572))))
                                                                    (car
                                                                     x7571))))
                                                          (cdr x7570))))
                                                g7569)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7573
                                                        (letrec ((x7574
                                                                  (letrec ((x7575
                                                                            (letrec ((x7576
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7576))))
                                                                    (car
                                                                     x7575))))
                                                          (car x7574))))
                                                g7573)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7577 (eq? x y)))
                                                g7577)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7578
                                                        (letrec ((x7580
                                                                  (number? x)))
                                                          (assert x7580)))
                                                       (g7579
                                                        (letrec ((val7250
                                                                  (> x y)))
                                                          (letrec ((g7581
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7582
                                                                                  (if val7251
                                                                                    val7251
                                                                                    #f)))
                                                                          g7582)))))
                                                            g7581))))
                                                g7579)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7583
                                                        (letrec ((x7586
                                                                  (string?
                                                                   filename)))
                                                          (assert x7586)))
                                                       (g7584
                                                        (letrec ((x7587
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7587)))
                                                       (g7585
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7588
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7589 res))
                                                            g7589))))
                                                g7585)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7590 (cons x '())))
                                                g7590)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7591
                                                        (letrec ((x7594
                                                                  (char? c1)))
                                                          (assert x7594)))
                                                       (g7592
                                                        (letrec ((x7595
                                                                  (char? c2)))
                                                          (assert x7595)))
                                                       (g7593
                                                        (letrec ((val7252
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7596
                                                                    (if val7252
                                                                      val7252
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7596))))
                                                g7593)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7597
                                                        (letrec ((x7598
                                                                  (letrec ((x7599
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7599))))
                                                          (cdr x7598))))
                                                g7597)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7600
                                                        (letrec ((x7601
                                                                  (letrec ((x7602
                                                                            (letrec ((x7603
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7603))))
                                                                    (car
                                                                     x7602))))
                                                          (cdr x7601))))
                                                g7600)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7604
                                                        (letrec ((x7605
                                                                  (letrec ((x7606
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7606))))
                                                          (car x7605))))
                                                g7604)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7607
                                                        (letrec ((x7608
                                                                  (letrec ((x7609
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7609))))
                                                          (car x7608))))
                                                g7607)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7610
                                                        (letrec ((x7613
                                                                  (char? c1)))
                                                          (assert x7613)))
                                                       (g7611
                                                        (letrec ((x7614
                                                                  (char? c2)))
                                                          (assert x7614)))
                                                       (g7612
                                                        (letrec ((x7615
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7615))))
                                                g7612)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7616
                                                        (letrec ((x7617
                                                                  (letrec ((x7618
                                                                            (letrec ((x7619
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7619))))
                                                                    (car
                                                                     x7618))))
                                                          (car x7617))))
                                                g7616)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7620
                                                        (letrec ((x7622
                                                                  (number? x)))
                                                          (assert x7622)))
                                                       (g7621 (< x 0)))
                                                g7621)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7623 (memq e l)))
                                                g7623)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7624
                                                        (letrec ((x7625
                                                                  (letrec ((x7626
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7626))))
                                                          (car x7625))))
                                                g7624)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7627 '())) g7627)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7628
                                                        (letrec ((x7630
                                                                  (list? l)))
                                                          (assert x7630)))
                                                       (g7629
                                                        (letrec ((x-cnd7631
                                                                  (null? l)))
                                                          (if x-cnd7631
                                                            '()
                                                            (letrec ((x7634
                                                                      (letrec ((x7635
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7635)))
                                                                     (x7632
                                                                      (letrec ((x7633
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7633))))
                                                              (append
                                                               x7634
                                                               x7632))))))
                                                g7629)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7636
                                                        (letrec ((x7637
                                                                  (letrec ((x7638
                                                                            (letrec ((x7639
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7639))))
                                                                    (car
                                                                     x7638))))
                                                          (car x7637))))
                                                g7636)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7640
                                                        (letrec ((x7641
                                                                  (letrec ((x7642
                                                                            (letrec ((x7643
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7643))))
                                                                    (cdr
                                                                     x7642))))
                                                          (cdr x7641))))
                                                g7640)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7644
                                                        (letrec ((x7646
                                                                  (number? x)))
                                                          (assert x7646)))
                                                       (g7645
                                                        (letrec ((x7647
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7647))))
                                                g7645)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7648
                                                        (letrec ((x7649
                                                                  (letrec ((x7650
                                                                            (letrec ((x7651
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7651))))
                                                                    (car
                                                                     x7650))))
                                                          (car x7649))))
                                                g7648)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7652
                                                        (letrec ((x7655
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7655)))
                                                       (g7653
                                                        (letrec ((x7656
                                                                  (list?
                                                                   args)))
                                                          (assert x7656)))
                                                       (g7654
                                                        (if cnd
                                                          (letrec ((g7657
                                                                    (proc)))
                                                            g7657)
                                                          (if cnd
                                                            (letrec ((g7658
                                                                      (letrec ((x7659
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7659))))
                                                              g7658)
                                                            (if cnd
                                                              (letrec ((g7660
                                                                        (letrec ((x7662
                                                                                  (car
                                                                                   args))
                                                                                 (x7661
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7662
                                                                           x7661))))
                                                                g7660)
                                                              (if cnd
                                                                (letrec ((g7663
                                                                          (letrec ((x7666
                                                                                    (car
                                                                                     args))
                                                                                   (x7665
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7664
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7666
                                                                             x7665
                                                                             x7664))))
                                                                  g7663)
                                                                (if cnd
                                                                  (letrec ((g7667
                                                                            (letrec ((x7671
                                                                                      (car
                                                                                       args))
                                                                                     (x7670
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7669
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7668
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7671
                                                                               x7670
                                                                               x7669
                                                                               x7668))))
                                                                    g7667)
                                                                  (if cnd
                                                                    (letrec ((g7672
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
                                                                                         args))
                                                                                       (x7673
                                                                                        (letrec ((x7674
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7674))))
                                                                                (proc
                                                                                 x7678
                                                                                 x7677
                                                                                 x7676
                                                                                 x7675
                                                                                 x7673))))
                                                                      g7672)
                                                                    (if cnd
                                                                      (letrec ((g7679
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
                                                                                           args))
                                                                                         (x7682
                                                                                          (letrec ((x7683
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7683)))
                                                                                         (x7680
                                                                                          (letrec ((x7681
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7681))))
                                                                                  (proc
                                                                                   x7687
                                                                                   x7686
                                                                                   x7685
                                                                                   x7684
                                                                                   x7682
                                                                                   x7680))))
                                                                        g7679)
                                                                      (if cnd
                                                                        (letrec ((g7688
                                                                                  (letrec ((x7698
                                                                                            (car
                                                                                             args))
                                                                                           (x7697
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7696
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7695
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7693
                                                                                            (letrec ((x7694
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7694)))
                                                                                           (x7691
                                                                                            (letrec ((x7692
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7692)))
                                                                                           (x7689
                                                                                            (letrec ((x7690
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7690))))
                                                                                    (proc
                                                                                     x7698
                                                                                     x7697
                                                                                     x7696
                                                                                     x7695
                                                                                     x7693
                                                                                     x7691
                                                                                     x7689))))
                                                                          g7688)
                                                                        (letrec ((g7699
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7699)))))))))))
                                                g7654)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7700
                                                        (letrec ((x7702
                                                                  (list? l)))
                                                          (assert x7702)))
                                                       (g7701
                                                        (letrec ((x-cnd7703
                                                                  (null? l)))
                                                          (if x-cnd7703
                                                            #f
                                                            (letrec ((x-cnd7704
                                                                      (letrec ((x7705
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7705
                                                                         e))))
                                                              (if x-cnd7704
                                                                l
                                                                (letrec ((x7706
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7706))))))))
                                                g7701)))
                                           (cddddr
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
                                                          (cdr x7708))))
                                                g7707)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7711
                                                        (letrec ((x7712
                                                                  (letrec ((x7713
                                                                            (letrec ((x7714
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7714))))
                                                                    (cdr
                                                                     x7713))))
                                                          (car x7712))))
                                                g7711)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7715 (random 42)))
                                                g7715)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7716
                                                        (letrec ((x7718
                                                                  (number? x)))
                                                          (assert x7718)))
                                                       (g7717 (= x 0)))
                                                g7717)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7719
                                                        (letrec ((val7253
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7720
                                                                    (if val7253
                                                                      val7253
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7720))))
                                                g7719)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7721
                                                        (letrec ((x7722
                                                                  (cdr x)))
                                                          (car x7722))))
                                                g7721)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7723
                                                        (letrec ((val7254
                                                                  (letrec ((x7726
                                                                            (pair?
                                                                             l))
                                                                           (x7724
                                                                            (letrec ((x7725
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7725))))
                                                                    (and x7726
                                                                         x7724))))
                                                          (letrec ((g7727
                                                                    (if val7254
                                                                      val7254
                                                                      (null?
                                                                       l))))
                                                            g7727))))
                                                g7723)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7728
                                                        (letrec ((x7729
                                                                  (letrec ((x7730
                                                                            (letrec ((x7731
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7731))))
                                                                    (cdr
                                                                     x7730))))
                                                          (cdr x7729))))
                                                g7728)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7732
                                                        (letrec ((x-cnd7733
                                                                  (letrec ((x7734
                                                                            #\0))
                                                                    (char<=?
                                                                     x7734
                                                                     c))))
                                                          (if x-cnd7733
                                                            (letrec ((x7735
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7735))
                                                            #f))))
                                                g7732)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7736
                                                        (letrec ((x7738
                                                                  (list? l)))
                                                          (assert x7738)))
                                                       (g7737
                                                        (letrec ((x-cnd7739
                                                                  (null? l)))
                                                          (if x-cnd7739
                                                            #f
                                                            (letrec ((x-cnd7740
                                                                      (letrec ((x7741
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7741
                                                                         k))))
                                                              (if x-cnd7740
                                                                (car l)
                                                                (letrec ((x7742
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7742))))))))
                                                g7737)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7743 (if x #f #t)))
                                                g7743)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7744 (append l1 l2)))
                                                g7744)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7745
                                                        (letrec ((x7747
                                                                  (list? l)))
                                                          (assert x7747)))
                                                       (g7746
                                                        (letrec ((x-cnd7748
                                                                  (null? l)))
                                                          (if x-cnd7748
                                                            #f
                                                            (letrec ((x-cnd7749
                                                                      (letrec ((x7750
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7750
                                                                         e))))
                                                              (if x-cnd7749
                                                                l
                                                                (letrec ((x7751
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7751))))))))
                                                g7746)))
                                           (cadaar
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
                                                          (car x7753))))
                                                g7752)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7756
                                                        (letrec ((x7758
                                                                  (list? l)))
                                                          (assert x7758)))
                                                       (g7757
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7759
                                                                              (letrec ((x-cnd7760
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7760
                                                                                  0
                                                                                  (letrec ((x7761
                                                                                            (letrec ((x7762
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7762))))
                                                                                    (+
                                                                                     1
                                                                                     x7761))))))
                                                                      g7759))))
                                                          (letrec ((g7763
                                                                    (rec l)))
                                                            g7763))))
                                                g7757)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7764
                                                        (letrec ((x7767
                                                                  (char? c1)))
                                                          (assert x7767)))
                                                       (g7765
                                                        (letrec ((x7768
                                                                  (char? c2)))
                                                          (assert x7768)))
                                                       (g7766
                                                        (letrec ((val7255
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7769
                                                                    (if val7255
                                                                      val7255
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7769))))
                                                g7766)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7770
                                                        (letrec ((x7771
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7771))))
                                                g7770)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7772
                                                        (letrec ((x7773
                                                                  (letrec ((x7774
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7774))))
                                                          (cdr x7773))))
                                                g7772)))
                                           (assoc
                                            (lambda (k l)
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
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7780
                                                                         k))))
                                                              (if x-cnd7779
                                                                (car l)
                                                                (letrec ((x7781
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7781))))))))
                                                g7776)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7782
                                                        (letrec ((x7783
                                                                  (car x)))
                                                          (car x7783))))
                                                g7782)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7784
                                                        (letrec ((x7787
                                                                  (char? c1)))
                                                          (assert x7787)))
                                                       (g7785
                                                        (letrec ((x7788
                                                                  (char? c2)))
                                                          (assert x7788)))
                                                       (g7786
                                                        (letrec ((x7789
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7789))))
                                                g7786)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7790
                                                        (letrec ((val7256
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7791
                                                                    (if val7256
                                                                      val7256
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7791))))
                                                g7790)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7792
                                                        (letrec ((x7795
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7795)))
                                                       (g7793
                                                        (letrec ((x7796
                                                                  (list? l)))
                                                          (assert x7796)))
                                                       (g7794
                                                        (letrec ((x-cnd7797
                                                                  (null? l)))
                                                          (if x-cnd7797
                                                            #t
                                                            (letrec ((x-cnd7798
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7798
                                                                (letrec ((g7799
                                                                          (letrec ((x7801
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7801)))
                                                                         (g7800
                                                                          (letrec ((x7802
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7802))))
                                                                  g7800)
                                                                '()))))))
                                                g7794)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7803
                                                        (letrec ((x7805
                                                                  (number? x)))
                                                          (assert x7805)))
                                                       (g7804
                                                        (letrec ((x-cnd7806
                                                                  (< x 0)))
                                                          (if x-cnd7806
                                                            (- 0 x)
                                                            x))))
                                                g7804)))
                                           (char-ci>=?
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
                                                        (letrec ((val7257
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7812
                                                                    (if val7257
                                                                      val7257
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7812))))
                                                g7809)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7813
                                                        (letrec ((x7814
                                                                  (letrec ((x7815
                                                                            (letrec ((x7816
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7816))))
                                                                    (cdr
                                                                     x7815))))
                                                          (car x7814))))
                                                g7813)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7817 #f)) g7817)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7818
                                                        (letrec ((x7820
                                                                  (letrec ((x7821
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7821)))
                                                                 (x7819
                                                                  (gcd m n)))
                                                          (/ x7820 x7819))))
                                                g7818)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7822
                                                        (letrec ((x7824
                                                                  (number? x)))
                                                          (assert x7824)))
                                                       (g7823
                                                        (letrec ((x7825
                                                                  (<= x y)))
                                                          (not x7825))))
                                                g7823)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7826
                                                        (letrec ((x7830
                                                                  (list? l)))
                                                          (assert x7830)))
                                                       (g7827
                                                        (letrec ((x7831
                                                                  (number?
                                                                   index)))
                                                          (assert x7831)))
                                                       (g7828
                                                        (letrec ((x7832
                                                                  (letrec ((x7833
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7833))))
                                                          (assert x7832)))
                                                       (g7829
                                                        (letrec ((x-cnd7834
                                                                  (= index 0)))
                                                          (if x-cnd7834
                                                            (car l)
                                                            (letrec ((x7836
                                                                      (cdr l))
                                                                     (x7835
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7836
                                                               x7835))))))
                                                g7829)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7837
                                                        (letrec ((x-cnd7838
                                                                  (= b 0)))
                                                          (if x-cnd7838
                                                            a
                                                            (letrec ((x7839
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7839))))))
                                                g7837)))
                                           (main
                                            (lambda (len)
                                              (letrec ((g7840
                                                        (letrec ((xs
                                                                  (mk-list
                                                                   len)))
                                                          (letrec ((g7841
                                                                    (letrec ((x-cnd7842
                                                                              (letrec ((x7843
                                                                                        (=
                                                                                         len
                                                                                         0)))
                                                                                (not
                                                                                 x7843))))
                                                                      (if x-cnd7842
                                                                        (letrec ((x7844
                                                                                  (reverse
                                                                                   xs
                                                                                   empty)))
                                                                          (car
                                                                           x7844))
                                                                        0))))
                                                            g7841))))
                                                g7840)))
                                           (reverse
                                            (lambda (l ac)
                                              (letrec ((g7845
                                                        (letrec ((x-cnd7846
                                                                  (empty? l)))
                                                          (if x-cnd7846
                                                            ac
                                                            (letrec ((x7849
                                                                      (cdr l))
                                                                     (x7847
                                                                      (letrec ((x7848
                                                                                (car
                                                                                 l)))
                                                                        (cons
                                                                         x7848
                                                                         ac))))
                                                              (reverse
                                                               x7849
                                                               x7847))))))
                                                g7845)))
                                           (mk-list
                                            (lambda (n)
                                              (letrec ((g7850
                                                        (letrec ((x-cnd7851
                                                                  (= n 0)))
                                                          (if x-cnd7851
                                                            empty
                                                            (letrec ((x7852
                                                                      (letrec ((x7853
                                                                                (-
                                                                                 n
                                                                                 1)))
                                                                        (mk-list
                                                                         x7853))))
                                                              (cons
                                                               n
                                                               x7852))))))
                                                g7850))))
                                    (letrec ((g7854
                                              (letrec ((x7856
                                                        ((lambda (j7328
                                                                  k7329
                                                                  f7330)
                                                           (letrec ((g7857
                                                                     (lambda (g7327)
                                                                       (letrec ((g7858
                                                                                 (letrec ((x7859
                                                                                           (letrec ((x7860
                                                                                                     (integer?/c
                                                                                                      j7328
                                                                                                      k7329
                                                                                                      g7327)))
                                                                                             (f7330
                                                                                              x7860))))
                                                                                   (integer?/c
                                                                                    j7328
                                                                                    k7329
                                                                                    x7859))))
                                                                         g7858))))
                                                             g7857))
                                                         'module
                                                         'importer
                                                         main))
                                                       (x7855 (input)))
                                                (x7856 x7855))))
                                      g7854))))
                          g7344))))
              g7342)))
    g7341))
