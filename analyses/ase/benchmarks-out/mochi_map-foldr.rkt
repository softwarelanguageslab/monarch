(letrec ((any? (lambda (v) (letrec ((g7347 #t)) g7347)))
         (meta (lambda (v) (letrec ((g7348 v)) g7348)))
         (member
          (lambda (v lst)
            (letrec ((g7349
                      (letrec ((g7350
                                (letrec ((x-e7351 lst))
                                  (match
                                   x-e7351
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7352 (eq? v v1)))
                                       (if x-cnd7352 #t (member v vs)))))))))
                        g7350)))
              g7349)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7353 (lambda (v) (letrec ((g7354 v)) g7354)))) g7353)))
         (nonzero?
          (lambda (v)
            (letrec ((g7355 (letrec ((x7356 (= v 0))) (not x7356)))) g7355))))
  (letrec ((g7357
            (letrec ((g7358
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7359 '())
                                 (g7360
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7361
                                                        (lambda (k j lst)
                                                          (letrec ((g7362
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7363
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7363))
                                                                     lst)))
                                                            g7362))))
                                                g7361)))
                                           (real?/c
                                            (lambda (g7258 g7259 g7260)
                                              (letrec ((g7364
                                                        (letrec ((x-cnd7365
                                                                  (real?
                                                                   g7260)))
                                                          (if x-cnd7365
                                                            g7260
                                                            (blame
                                                             g7258
                                                             'real?)))))
                                                g7364)))
                                           (boolean?/c
                                            (lambda (g7261 g7262 g7263)
                                              (letrec ((g7366
                                                        (letrec ((x-cnd7367
                                                                  (boolean?
                                                                   g7263)))
                                                          (if x-cnd7367
                                                            g7263
                                                            (blame
                                                             g7261
                                                             'boolean?)))))
                                                g7366)))
                                           (number?/c
                                            (lambda (g7264 g7265 g7266)
                                              (letrec ((g7368
                                                        (letrec ((x-cnd7369
                                                                  (number?
                                                                   g7266)))
                                                          (if x-cnd7369
                                                            g7266
                                                            (blame
                                                             g7264
                                                             'number?)))))
                                                g7368)))
                                           (any/c
                                            (lambda (g7267 g7268 g7269)
                                              (letrec ((g7370
                                                        (letrec ((x-cnd7371
                                                                  ((lambda (v)
                                                                     (letrec ((g7372
                                                                               #t))
                                                                       g7372))
                                                                   g7269)))
                                                          (if x-cnd7371
                                                            g7269
                                                            (blame
                                                             g7267
                                                             '(lambda (v)
                                                                #t))))))
                                                g7370)))
                                           (any?/c
                                            (lambda (g7270 g7271 g7272)
                                              (letrec ((g7373
                                                        (letrec ((x-cnd7374
                                                                  ((lambda (v)
                                                                     (letrec ((g7375
                                                                               #t))
                                                                       g7375))
                                                                   g7272)))
                                                          (if x-cnd7374
                                                            g7272
                                                            (blame
                                                             g7270
                                                             '(lambda (v)
                                                                #t))))))
                                                g7373)))
                                           (cons?/c
                                            (lambda (g7273 g7274 g7275)
                                              (letrec ((g7376
                                                        (letrec ((x-cnd7377
                                                                  (pair?
                                                                   g7275)))
                                                          (if x-cnd7377
                                                            g7275
                                                            (blame
                                                             g7273
                                                             'pair?)))))
                                                g7376)))
                                           (pair?/c
                                            (lambda (g7276 g7277 g7278)
                                              (letrec ((g7378
                                                        (letrec ((x-cnd7379
                                                                  (pair?
                                                                   g7278)))
                                                          (if x-cnd7379
                                                            g7278
                                                            (blame
                                                             g7276
                                                             'pair?)))))
                                                g7378)))
                                           (integer?/c
                                            (lambda (g7279 g7280 g7281)
                                              (letrec ((g7380
                                                        (letrec ((x-cnd7381
                                                                  (integer?
                                                                   g7281)))
                                                          (if x-cnd7381
                                                            g7281
                                                            (blame
                                                             g7279
                                                             'integer?)))))
                                                g7380)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7382
                                                        (lambda (k j v)
                                                          (letrec ((g7383
                                                                    (letrec ((x-cnd7384
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7384
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7383))))
                                                g7382)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7385
                                                        (lambda (k j v)
                                                          (letrec ((g7386
                                                                    (letrec ((x-cnd7387
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7387
                                                                        '()
                                                                        (letrec ((x7391
                                                                                  (letrec ((x7392
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7392)))
                                                                                 (x7388
                                                                                  (letrec ((x7390
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7389
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7390
                                                                                     k
                                                                                     j
                                                                                     x7389))))
                                                                          (orig-cons
                                                                           x7391
                                                                           x7388))))))
                                                            g7386))))
                                                g7385)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7393 #t)) g7393)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7394
                                                        (letrec ((x7395
                                                                  (= v 0)))
                                                          (not x7395))))
                                                g7394)))
                                           (nonzero?/c
                                            (lambda (g7282 g7283 g7284)
                                              (letrec ((g7396
                                                        (letrec ((x-cnd7397
                                                                  ((lambda (v)
                                                                     (letrec ((g7398
                                                                               (letrec ((x7399
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7399))))
                                                                       g7398))
                                                                   g7284)))
                                                          (if x-cnd7397
                                                            g7284
                                                            (blame
                                                             g7282
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7396)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7400 v)) g7400)))
                                           (+
                                            ((lambda (j7287 k7288 f7289)
                                               (letrec ((g7402
                                                         (lambda (g7285 g7286)
                                                           (letrec ((g7403
                                                                     (letrec ((x7404
                                                                               (letrec ((x7406
                                                                                         (number?/c
                                                                                          j7287
                                                                                          k7288
                                                                                          g7285))
                                                                                        (x7405
                                                                                         (number?/c
                                                                                          j7287
                                                                                          k7288
                                                                                          g7286)))
                                                                                 (f7289
                                                                                  x7406
                                                                                  x7405))))
                                                                       (number?/c
                                                                        j7287
                                                                        k7288
                                                                        x7404))))
                                                             g7403))))
                                                 g7402))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7401 (orig-+ a b)))
                                                 g7401))))
                                           (-
                                            ((lambda (j7292 k7293 f7294)
                                               (letrec ((g7408
                                                         (lambda (g7290 g7291)
                                                           (letrec ((g7409
                                                                     (letrec ((x7410
                                                                               (letrec ((x7412
                                                                                         (number?/c
                                                                                          j7292
                                                                                          k7293
                                                                                          g7290))
                                                                                        (x7411
                                                                                         (number?/c
                                                                                          j7292
                                                                                          k7293
                                                                                          g7291)))
                                                                                 (f7294
                                                                                  x7412
                                                                                  x7411))))
                                                                       (number?/c
                                                                        j7292
                                                                        k7293
                                                                        x7410))))
                                                             g7409))))
                                                 g7408))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7407 (orig-- a b)))
                                                 g7407))))
                                           (*
                                            ((lambda (j7297 k7298 f7299)
                                               (letrec ((g7414
                                                         (lambda (g7295 g7296)
                                                           (letrec ((g7415
                                                                     (letrec ((x7416
                                                                               (letrec ((x7418
                                                                                         (number?/c
                                                                                          j7297
                                                                                          k7298
                                                                                          g7295))
                                                                                        (x7417
                                                                                         (number?/c
                                                                                          j7297
                                                                                          k7298
                                                                                          g7296)))
                                                                                 (f7299
                                                                                  x7418
                                                                                  x7417))))
                                                                       (number?/c
                                                                        j7297
                                                                        k7298
                                                                        x7416))))
                                                             g7415))))
                                                 g7414))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7413 (orig-* a b)))
                                                 g7413))))
                                           (/
                                            ((lambda (j7302 k7303 f7304)
                                               (letrec ((g7420
                                                         (lambda (g7300 g7301)
                                                           (letrec ((g7421
                                                                     (letrec ((x7422
                                                                               (letrec ((x7424
                                                                                         (number?/c
                                                                                          j7302
                                                                                          k7303
                                                                                          g7300))
                                                                                        (x7423
                                                                                         (number?/c
                                                                                          j7302
                                                                                          k7303
                                                                                          g7301)))
                                                                                 (f7304
                                                                                  x7424
                                                                                  x7423))))
                                                                       (number?/c
                                                                        j7302
                                                                        k7303
                                                                        x7422))))
                                                             g7421))))
                                                 g7420))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7419 (orig-/ a b)))
                                                 g7419))))
                                           (car
                                            ((lambda (j7306 k7307 f7308)
                                               (letrec ((g7426
                                                         (lambda (g7305)
                                                           (letrec ((g7427
                                                                     (letrec ((x7428
                                                                               (letrec ((x7429
                                                                                         (pair?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7305)))
                                                                                 (f7308
                                                                                  x7429))))
                                                                       (any/c
                                                                        j7306
                                                                        k7307
                                                                        x7428))))
                                                             g7427))))
                                                 g7426))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7425 (orig-car p)))
                                                 g7425))))
                                           (cdr
                                            ((lambda (j7310 k7311 f7312)
                                               (letrec ((g7431
                                                         (lambda (g7309)
                                                           (letrec ((g7432
                                                                     (letrec ((x7433
                                                                               (letrec ((x7434
                                                                                         (pair?/c
                                                                                          j7310
                                                                                          k7311
                                                                                          g7309)))
                                                                                 (f7312
                                                                                  x7434))))
                                                                       (any/c
                                                                        j7310
                                                                        k7311
                                                                        x7433))))
                                                             g7432))))
                                                 g7431))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7430 (orig-cdr p)))
                                                 g7430))))
                                           (cons
                                            ((lambda (j7315 k7316 f7317)
                                               (letrec ((g7436
                                                         (lambda (g7313 g7314)
                                                           (letrec ((g7437
                                                                     (letrec ((x7438
                                                                               (letrec ((x7440
                                                                                         (any/c
                                                                                          j7315
                                                                                          k7316
                                                                                          g7313))
                                                                                        (x7439
                                                                                         (any/c
                                                                                          j7315
                                                                                          k7316
                                                                                          g7314)))
                                                                                 (f7317
                                                                                  x7440
                                                                                  x7439))))
                                                                       (pair?/c
                                                                        j7315
                                                                        k7316
                                                                        x7438))))
                                                             g7437))))
                                                 g7436))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7435
                                                         (orig-cons a b)))
                                                 g7435))))
                                           (vector-ref
                                            ((lambda (j7319 k7320 f7321)
                                               (letrec ((g7442
                                                         (lambda (g7318)
                                                           (letrec ((g7443
                                                                     (letrec ((x7444
                                                                               (letrec ((x7445
                                                                                         (vector?/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7318)))
                                                                                 (f7321
                                                                                  x7445))))
                                                                       (integer?/c
                                                                        j7319
                                                                        k7320
                                                                        x7444))))
                                                             g7443))))
                                                 g7442))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7441
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7441))))
                                           (vector-set!
                                            ((lambda (j7324 k7325 f7326)
                                               (letrec ((g7447
                                                         (lambda (g7322 g7323)
                                                           (letrec ((g7448
                                                                     (letrec ((x7449
                                                                               (letrec ((x7451
                                                                                         (vector?/c
                                                                                          j7324
                                                                                          k7325
                                                                                          g7322))
                                                                                        (x7450
                                                                                         (integer?/c
                                                                                          j7324
                                                                                          k7325
                                                                                          g7323)))
                                                                                 (f7326
                                                                                  x7451
                                                                                  x7450))))
                                                                       (any/c
                                                                        j7324
                                                                        k7325
                                                                        x7449))))
                                                             g7448))))
                                                 g7447))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7446
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7446))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7452
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7452)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7453
                                                        (letrec ((x7454
                                                                  (letrec ((x7455
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7455))))
                                                          (cdr x7454))))
                                                g7453)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7456
                                                        (letrec ((x7459
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7459)))
                                                       (g7457
                                                        (letrec ((x7460
                                                                  (list? l)))
                                                          (assert x7460)))
                                                       (g7458
                                                        (letrec ((x-cnd7461
                                                                  (null? l)))
                                                          (if x-cnd7461
                                                            '()
                                                            (letrec ((x7464
                                                                      (letrec ((x7465
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7465)))
                                                                     (x7462
                                                                      (letrec ((x7463
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7463))))
                                                              (cons
                                                               x7464
                                                               x7462))))))
                                                g7458)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7466
                                                        (letrec ((x7467
                                                                  (car x)))
                                                          (cdr x7467))))
                                                g7466)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7468
                                                        (letrec ((x7469
                                                                  (letrec ((x7470
                                                                            (letrec ((x7471
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7471))))
                                                                    (cdr
                                                                     x7470))))
                                                          (car x7469))))
                                                g7468)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7472
                                                        (letrec ((x7473
                                                                  (letrec ((x7474
                                                                            (letrec ((x7475
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7475))))
                                                                    (car
                                                                     x7474))))
                                                          (cdr x7473))))
                                                g7472)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7476
                                                        (letrec ((x7479
                                                                  (string?
                                                                   filename)))
                                                          (assert x7479)))
                                                       (g7477
                                                        (letrec ((x7480
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7480)))
                                                       (g7478
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7481
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7482 res))
                                                            g7482))))
                                                g7478)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7483
                                                        (letrec ((x7484
                                                                  (letrec ((x7485
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7485))))
                                                          (car x7484))))
                                                g7483)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7486
                                                        (letrec ((x7487
                                                                  (letrec ((x7488
                                                                            (letrec ((x7489
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7489))))
                                                                    (car
                                                                     x7488))))
                                                          (cdr x7487))))
                                                g7486)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7490
                                                        (letrec ((x7492
                                                                  (list? l)))
                                                          (assert x7492)))
                                                       (g7491
                                                        (letrec ((x-cnd7493
                                                                  (null? l)))
                                                          (if x-cnd7493
                                                            #f
                                                            (letrec ((x-cnd7494
                                                                      (letrec ((x7495
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7495
                                                                         k))))
                                                              (if x-cnd7494
                                                                (car l)
                                                                (letrec ((x7496
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7496))))))))
                                                g7491)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7497
                                                        (letrec ((x7498
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7498))))
                                                g7497)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7499
                                                        (letrec ((x7501
                                                                  (list? l)))
                                                          (assert x7501)))
                                                       (g7500
                                                        (letrec ((x-cnd7502
                                                                  (null? l)))
                                                          (if x-cnd7502
                                                            ""
                                                            (letrec ((x7505
                                                                      (letrec ((x7506
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7506)))
                                                                     (x7503
                                                                      (letrec ((x7504
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7504))))
                                                              (string-append
                                                               x7505
                                                               x7503))))))
                                                g7500)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7507
                                                        (letrec ((x7510
                                                                  (char? c1)))
                                                          (assert x7510)))
                                                       (g7508
                                                        (letrec ((x7511
                                                                  (char? c2)))
                                                          (assert x7511)))
                                                       (g7509
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7512
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7512))))
                                                g7509)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7513
                                                        (letrec ((x7514
                                                                  (letrec ((x7515
                                                                            (letrec ((x7516
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7516))))
                                                                    (cdr
                                                                     x7515))))
                                                          (cdr x7514))))
                                                g7513)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7517
                                                        (letrec ((x7520
                                                                  (list? l)))
                                                          (assert x7520)))
                                                       (g7518
                                                        (letrec ((x7521
                                                                  (number?)))
                                                          (assert x7521)))
                                                       (g7519
                                                        (letrec ((x-cnd7522
                                                                  (zero? k)))
                                                          (if x-cnd7522
                                                            x
                                                            (letrec ((x7524
                                                                      (cdr x))
                                                                     (x7523
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7524
                                                               x7523))))))
                                                g7519)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7525 '())) g7525)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7526
                                                        (letrec ((x-cnd7527
                                                                  (letrec ((x7528
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7528))))
                                                          (if x-cnd7527
                                                            (letrec ((x7529
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7529))
                                                            #f))))
                                                g7526)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7530
                                                        (letrec ((x7532
                                                                  (number? x)))
                                                          (assert x7532)))
                                                       (g7531
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7533
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7534
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7534)))))
                                                            g7533))))
                                                g7531)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7535
                                                        (letrec ((val7244
                                                                  (letrec ((x7536
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7536
                                                                     9))))
                                                          (letrec ((g7537
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7538
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7538
                                                                                   10))))
                                                                        (letrec ((g7539
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7540
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7540
                                                                                       32)))))
                                                                          g7539)))))
                                                            g7537))))
                                                g7535)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7541
                                                        (letrec ((x7542
                                                                  (letrec ((x7543
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7543))))
                                                          (cdr x7542))))
                                                g7541)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7544
                                                        (letrec ((x7546
                                                                  (number? x)))
                                                          (assert x7546)))
                                                       (g7545 (> x 0)))
                                                g7545)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7547 #f)) g7547)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7548
                                                        (letrec ((x7549
                                                                  (cdr x)))
                                                          (cdr x7549))))
                                                g7548)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7550
                                                        (letrec ((x7552
                                                                  (number? x)))
                                                          (assert x7552)))
                                                       (g7551
                                                        (letrec ((x-cnd7553
                                                                  (< x 0)))
                                                          (if x-cnd7553
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7551)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7554
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7555
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x7557
                                                                                          (null?
                                                                                           a))
                                                                                         (x7556
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7557
                                                                                       x7556))))
                                                                        (letrec ((g7558
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x7561
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7560
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7559
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7561
                                                                                                     x7560
                                                                                                     x7559))))
                                                                                      (letrec ((g7562
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x7570
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7569
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7566
                                                                                                                      (letrec ((x7568
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7567
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7568
                                                                                                                         x7567)))
                                                                                                                     (x7563
                                                                                                                      (letrec ((x7565
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7564
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7565
                                                                                                                         x7564))))
                                                                                                              (and x7570
                                                                                                                   x7569
                                                                                                                   x7566
                                                                                                                   x7563))))
                                                                                                    (letrec ((g7571
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x7587
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7586
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7572
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7573
                                                                                                                                      (letrec ((x7584
                                                                                                                                                (letrec ((x7585
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7585
                                                                                                                                                   n)))
                                                                                                                                               (x7574
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7575
                                                                                                                                                                      (letrec ((x7582
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7576
                                                                                                                                                                                (letrec ((x7579
                                                                                                                                                                                          (letrec ((x7581
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7580
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7581
                                                                                                                                                                                             x7580)))
                                                                                                                                                                                         (x7577
                                                                                                                                                                                          (letrec ((x7578
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7578))))
                                                                                                                                                                                  (and x7579
                                                                                                                                                                                       x7577))))
                                                                                                                                                                        (or x7582
                                                                                                                                                                            x7576))))
                                                                                                                                                              g7575))))
                                                                                                                                                  (letrec ((g7583
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7583))))
                                                                                                                                        (and x7584
                                                                                                                                             x7574))))
                                                                                                                              g7573))))
                                                                                                                  (and x7587
                                                                                                                       x7586
                                                                                                                       x7572)))))
                                                                                                      g7571)))))
                                                                                        g7562)))))
                                                                          g7558)))))
                                                            g7555))))
                                                g7554)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7588
                                                        (letrec ((x7589
                                                                  (letrec ((x7590
                                                                            (letrec ((x7591
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7591))))
                                                                    (car
                                                                     x7590))))
                                                          (cdr x7589))))
                                                g7588)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7592
                                                        (letrec ((x7593
                                                                  (letrec ((x7594
                                                                            (letrec ((x7595
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7595))))
                                                                    (car
                                                                     x7594))))
                                                          (car x7593))))
                                                g7592)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7596 (eq? x y)))
                                                g7596)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7597
                                                        (letrec ((x7599
                                                                  (number? x)))
                                                          (assert x7599)))
                                                       (g7598
                                                        (letrec ((val7250
                                                                  (> x y)))
                                                          (letrec ((g7600
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7601
                                                                                  (if val7251
                                                                                    val7251
                                                                                    #f)))
                                                                          g7601)))))
                                                            g7600))))
                                                g7598)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7602
                                                        (letrec ((x7605
                                                                  (string?
                                                                   filename)))
                                                          (assert x7605)))
                                                       (g7603
                                                        (letrec ((x7606
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7606)))
                                                       (g7604
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7607
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7608 res))
                                                            g7608))))
                                                g7604)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7609 (cons x '())))
                                                g7609)))
                                           (char>=?
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
                                                        (letrec ((val7252
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7615
                                                                    (if val7252
                                                                      val7252
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7615))))
                                                g7612)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7616
                                                        (letrec ((x7617
                                                                  (letrec ((x7618
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7618))))
                                                          (cdr x7617))))
                                                g7616)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7619
                                                        (letrec ((x7620
                                                                  (letrec ((x7621
                                                                            (letrec ((x7622
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7622))))
                                                                    (car
                                                                     x7621))))
                                                          (cdr x7620))))
                                                g7619)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7623
                                                        (letrec ((x7624
                                                                  (letrec ((x7625
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7625))))
                                                          (car x7624))))
                                                g7623)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7626
                                                        (letrec ((x7627
                                                                  (letrec ((x7628
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7628))))
                                                          (car x7627))))
                                                g7626)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7629
                                                        (letrec ((x7632
                                                                  (char? c1)))
                                                          (assert x7632)))
                                                       (g7630
                                                        (letrec ((x7633
                                                                  (char? c2)))
                                                          (assert x7633)))
                                                       (g7631
                                                        (letrec ((x7634
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7634))))
                                                g7631)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7635
                                                        (letrec ((x7636
                                                                  (letrec ((x7637
                                                                            (letrec ((x7638
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7638))))
                                                                    (car
                                                                     x7637))))
                                                          (car x7636))))
                                                g7635)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7639
                                                        (letrec ((x7641
                                                                  (number? x)))
                                                          (assert x7641)))
                                                       (g7640 (< x 0)))
                                                g7640)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7642 (memq e l)))
                                                g7642)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7643
                                                        (letrec ((x7644
                                                                  (letrec ((x7645
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7645))))
                                                          (car x7644))))
                                                g7643)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7646 '())) g7646)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7647
                                                        (letrec ((x7649
                                                                  (list? l)))
                                                          (assert x7649)))
                                                       (g7648
                                                        (letrec ((x-cnd7650
                                                                  (null? l)))
                                                          (if x-cnd7650
                                                            '()
                                                            (letrec ((x7653
                                                                      (letrec ((x7654
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7654)))
                                                                     (x7651
                                                                      (letrec ((x7652
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7652))))
                                                              (append
                                                               x7653
                                                               x7651))))))
                                                g7648)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7655
                                                        (letrec ((x7656
                                                                  (letrec ((x7657
                                                                            (letrec ((x7658
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7658))))
                                                                    (car
                                                                     x7657))))
                                                          (car x7656))))
                                                g7655)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7659
                                                        (letrec ((x7660
                                                                  (letrec ((x7661
                                                                            (letrec ((x7662
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7662))))
                                                                    (cdr
                                                                     x7661))))
                                                          (cdr x7660))))
                                                g7659)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7663
                                                        (letrec ((x7665
                                                                  (number? x)))
                                                          (assert x7665)))
                                                       (g7664
                                                        (letrec ((x7666
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7666))))
                                                g7664)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7667
                                                        (letrec ((x7668
                                                                  (letrec ((x7669
                                                                            (letrec ((x7670
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7670))))
                                                                    (car
                                                                     x7669))))
                                                          (car x7668))))
                                                g7667)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7671
                                                        (letrec ((x7674
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7674)))
                                                       (g7672
                                                        (letrec ((x7675
                                                                  (list?
                                                                   args)))
                                                          (assert x7675)))
                                                       (g7673
                                                        (letrec ((x-cnd7676
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7676
                                                            (letrec ((g7677
                                                                      (proc)))
                                                              g7677)
                                                            (letrec ((x-cnd7678
                                                                      (letrec ((x7679
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7679))))
                                                              (if x-cnd7678
                                                                (letrec ((g7680
                                                                          (letrec ((x7681
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7681))))
                                                                  g7680)
                                                                (letrec ((x-cnd7682
                                                                          (letrec ((x7683
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7683))))
                                                                  (if x-cnd7682
                                                                    (letrec ((g7684
                                                                              (letrec ((x7686
                                                                                        (car
                                                                                         args))
                                                                                       (x7685
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7686
                                                                                 x7685))))
                                                                      g7684)
                                                                    (letrec ((x-cnd7687
                                                                              (letrec ((x7688
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7688))))
                                                                      (if x-cnd7687
                                                                        (letrec ((g7689
                                                                                  (letrec ((x7692
                                                                                            (car
                                                                                             args))
                                                                                           (x7691
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7690
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7692
                                                                                     x7691
                                                                                     x7690))))
                                                                          g7689)
                                                                        (letrec ((x-cnd7693
                                                                                  (letrec ((x7694
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7694))))
                                                                          (if x-cnd7693
                                                                            (letrec ((g7695
                                                                                      (letrec ((x7699
                                                                                                (car
                                                                                                 args))
                                                                                               (x7698
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7697
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7696
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7699
                                                                                         x7698
                                                                                         x7697
                                                                                         x7696))))
                                                                              g7695)
                                                                            (letrec ((x-cnd7700
                                                                                      (letrec ((x7701
                                                                                                (letrec ((x7702
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7702))))
                                                                                        (null?
                                                                                         x7701))))
                                                                              (if x-cnd7700
                                                                                (letrec ((g7703
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
                                                                                                       x7705))))
                                                                                            (proc
                                                                                             x7709
                                                                                             x7708
                                                                                             x7707
                                                                                             x7706
                                                                                             x7704))))
                                                                                  g7703)
                                                                                (letrec ((x-cnd7710
                                                                                          (letrec ((x7711
                                                                                                    (letrec ((x7712
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7712))))
                                                                                            (null?
                                                                                             x7711))))
                                                                                  (if x-cnd7710
                                                                                    (letrec ((g7713
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
                                                                                                           x7715))))
                                                                                                (proc
                                                                                                 x7721
                                                                                                 x7720
                                                                                                 x7719
                                                                                                 x7718
                                                                                                 x7716
                                                                                                 x7714))))
                                                                                      g7713)
                                                                                    (letrec ((x-cnd7722
                                                                                              (letrec ((x7723
                                                                                                        (letrec ((x7724
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7724))))
                                                                                                (null?
                                                                                                 x7723))))
                                                                                      (if x-cnd7722
                                                                                        (letrec ((g7725
                                                                                                  (letrec ((x7735
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7734
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7733
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7732
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7730
                                                                                                            (letrec ((x7731
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7731)))
                                                                                                           (x7728
                                                                                                            (letrec ((x7729
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7729)))
                                                                                                           (x7726
                                                                                                            (letrec ((x7727
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7727))))
                                                                                                    (proc
                                                                                                     x7735
                                                                                                     x7734
                                                                                                     x7733
                                                                                                     x7732
                                                                                                     x7730
                                                                                                     x7728
                                                                                                     x7726))))
                                                                                          g7725)
                                                                                        (letrec ((g7736
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7736)))))))))))))))))))
                                                g7673)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7737
                                                        (letrec ((x7739
                                                                  (list? l)))
                                                          (assert x7739)))
                                                       (g7738
                                                        (letrec ((x-cnd7740
                                                                  (null? l)))
                                                          (if x-cnd7740
                                                            #f
                                                            (letrec ((x-cnd7741
                                                                      (letrec ((x7742
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7742
                                                                         e))))
                                                              (if x-cnd7741
                                                                l
                                                                (letrec ((x7743
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7743))))))))
                                                g7738)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7744
                                                        (letrec ((x7745
                                                                  (letrec ((x7746
                                                                            (letrec ((x7747
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7747))))
                                                                    (cdr
                                                                     x7746))))
                                                          (cdr x7745))))
                                                g7744)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7748
                                                        (letrec ((x7749
                                                                  (letrec ((x7750
                                                                            (letrec ((x7751
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7751))))
                                                                    (cdr
                                                                     x7750))))
                                                          (car x7749))))
                                                g7748)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7752 (random 42)))
                                                g7752)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7753
                                                        (letrec ((x7755
                                                                  (number? x)))
                                                          (assert x7755)))
                                                       (g7754 (= x 0)))
                                                g7754)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7756
                                                        (letrec ((val7253
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7757
                                                                    (if val7253
                                                                      val7253
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7757))))
                                                g7756)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7758
                                                        (letrec ((x7759
                                                                  (cdr x)))
                                                          (car x7759))))
                                                g7758)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7760
                                                        (letrec ((val7254
                                                                  (letrec ((x7763
                                                                            (pair?
                                                                             l))
                                                                           (x7761
                                                                            (letrec ((x7762
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7762))))
                                                                    (and x7763
                                                                         x7761))))
                                                          (letrec ((g7764
                                                                    (if val7254
                                                                      val7254
                                                                      (null?
                                                                       l))))
                                                            g7764))))
                                                g7760)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7765
                                                        (letrec ((x7766
                                                                  (letrec ((x7767
                                                                            (letrec ((x7768
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7768))))
                                                                    (cdr
                                                                     x7767))))
                                                          (cdr x7766))))
                                                g7765)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7769
                                                        (letrec ((x-cnd7770
                                                                  (letrec ((x7771
                                                                            #\0))
                                                                    (char<=?
                                                                     x7771
                                                                     c))))
                                                          (if x-cnd7770
                                                            (letrec ((x7772
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7772))
                                                            #f))))
                                                g7769)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7773
                                                        (letrec ((x7775
                                                                  (list? l)))
                                                          (assert x7775)))
                                                       (g7774
                                                        (letrec ((x-cnd7776
                                                                  (null? l)))
                                                          (if x-cnd7776
                                                            #f
                                                            (letrec ((x-cnd7777
                                                                      (letrec ((x7778
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7778
                                                                         k))))
                                                              (if x-cnd7777
                                                                (car l)
                                                                (letrec ((x7779
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7779))))))))
                                                g7774)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7780 (if x #f #t)))
                                                g7780)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7781 (append l1 l2)))
                                                g7781)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7782
                                                        (letrec ((x7784
                                                                  (list? l)))
                                                          (assert x7784)))
                                                       (g7783
                                                        (letrec ((x-cnd7785
                                                                  (null? l)))
                                                          (if x-cnd7785
                                                            #f
                                                            (letrec ((x-cnd7786
                                                                      (letrec ((x7787
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7787
                                                                         e))))
                                                              (if x-cnd7786
                                                                l
                                                                (letrec ((x7788
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7788))))))))
                                                g7783)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7789
                                                        (letrec ((x7790
                                                                  (letrec ((x7791
                                                                            (letrec ((x7792
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7792))))
                                                                    (cdr
                                                                     x7791))))
                                                          (car x7790))))
                                                g7789)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7793
                                                        (letrec ((x7795
                                                                  (list? l)))
                                                          (assert x7795)))
                                                       (g7794
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7796
                                                                              (letrec ((x-cnd7797
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7797
                                                                                  0
                                                                                  (letrec ((x7798
                                                                                            (letrec ((x7799
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7799))))
                                                                                    (+
                                                                                     1
                                                                                     x7798))))))
                                                                      g7796))))
                                                          (letrec ((g7800
                                                                    (rec l)))
                                                            g7800))))
                                                g7794)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7801
                                                        (letrec ((x7804
                                                                  (char? c1)))
                                                          (assert x7804)))
                                                       (g7802
                                                        (letrec ((x7805
                                                                  (char? c2)))
                                                          (assert x7805)))
                                                       (g7803
                                                        (letrec ((val7255
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7806
                                                                    (if val7255
                                                                      val7255
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7806))))
                                                g7803)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7807
                                                        (letrec ((x7808
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7808))))
                                                g7807)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7809
                                                        (letrec ((x7810
                                                                  (letrec ((x7811
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7811))))
                                                          (cdr x7810))))
                                                g7809)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7812
                                                        (letrec ((x7814
                                                                  (list? l)))
                                                          (assert x7814)))
                                                       (g7813
                                                        (letrec ((x-cnd7815
                                                                  (null? l)))
                                                          (if x-cnd7815
                                                            #f
                                                            (letrec ((x-cnd7816
                                                                      (letrec ((x7817
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7817
                                                                         k))))
                                                              (if x-cnd7816
                                                                (car l)
                                                                (letrec ((x7818
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7818))))))))
                                                g7813)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7819
                                                        (letrec ((x7820
                                                                  (car x)))
                                                          (car x7820))))
                                                g7819)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7821
                                                        (letrec ((x7824
                                                                  (char? c1)))
                                                          (assert x7824)))
                                                       (g7822
                                                        (letrec ((x7825
                                                                  (char? c2)))
                                                          (assert x7825)))
                                                       (g7823
                                                        (letrec ((x7826
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7826))))
                                                g7823)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7827
                                                        (letrec ((val7256
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7828
                                                                    (if val7256
                                                                      val7256
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7828))))
                                                g7827)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7829
                                                        (letrec ((x7832
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7832)))
                                                       (g7830
                                                        (letrec ((x7833
                                                                  (list? l)))
                                                          (assert x7833)))
                                                       (g7831
                                                        (letrec ((x-cnd7834
                                                                  (null? l)))
                                                          (if x-cnd7834
                                                            #t
                                                            (letrec ((x-cnd7835
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7835
                                                                (letrec ((g7836
                                                                          (letrec ((x7838
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7838)))
                                                                         (g7837
                                                                          (letrec ((x7839
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7839))))
                                                                  g7837)
                                                                '()))))))
                                                g7831)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7840
                                                        (letrec ((x7842
                                                                  (number? x)))
                                                          (assert x7842)))
                                                       (g7841
                                                        (letrec ((x-cnd7843
                                                                  (< x 0)))
                                                          (if x-cnd7843
                                                            (- 0 x)
                                                            x))))
                                                g7841)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7844
                                                        (letrec ((x7847
                                                                  (char? c1)))
                                                          (assert x7847)))
                                                       (g7845
                                                        (letrec ((x7848
                                                                  (char? c2)))
                                                          (assert x7848)))
                                                       (g7846
                                                        (letrec ((val7257
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7849
                                                                    (if val7257
                                                                      val7257
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7849))))
                                                g7846)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7850
                                                        (letrec ((x7851
                                                                  (letrec ((x7852
                                                                            (letrec ((x7853
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7853))))
                                                                    (cdr
                                                                     x7852))))
                                                          (car x7851))))
                                                g7850)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7854 #f)) g7854)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7855
                                                        (letrec ((x7857
                                                                  (letrec ((x7858
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7858)))
                                                                 (x7856
                                                                  (gcd m n)))
                                                          (/ x7857 x7856))))
                                                g7855)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7859
                                                        (letrec ((x7861
                                                                  (number? x)))
                                                          (assert x7861)))
                                                       (g7860
                                                        (letrec ((x7862
                                                                  (<= x y)))
                                                          (not x7862))))
                                                g7860)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7863
                                                        (letrec ((x7867
                                                                  (list? l)))
                                                          (assert x7867)))
                                                       (g7864
                                                        (letrec ((x7868
                                                                  (number?
                                                                   index)))
                                                          (assert x7868)))
                                                       (g7865
                                                        (letrec ((x7869
                                                                  (letrec ((x7870
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7870))))
                                                          (assert x7869)))
                                                       (g7866
                                                        (letrec ((x-cnd7871
                                                                  (= index 0)))
                                                          (if x-cnd7871
                                                            (car l)
                                                            (letrec ((x7873
                                                                      (cdr l))
                                                                     (x7872
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7873
                                                               x7872))))))
                                                g7866)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7874
                                                        (letrec ((x-cnd7875
                                                                  (= b 0)))
                                                          (if x-cnd7875
                                                            a
                                                            (letrec ((x7876
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7876))))))
                                                g7874)))
                                           (foldr
                                            (lambda (f z xs)
                                              (letrec ((g7877
                                                        (letrec ((x-cnd7878
                                                                  (empty? xs)))
                                                          (if x-cnd7878
                                                            z
                                                            (letrec ((x7881
                                                                      (car xs))
                                                                     (x7879
                                                                      (letrec ((x7880
                                                                                (cdr
                                                                                 xs)))
                                                                        (foldr
                                                                         f
                                                                         z
                                                                         x7880))))
                                                              (f
                                                               x7881
                                                               x7879))))))
                                                g7877)))
                                           (map
                                            (lambda (f xs)
                                              (letrec ((g7882
                                                        (letrec ((x7883
                                                                  (letrec ((x7886
                                                                            (x
                                                                             ys))
                                                                           (x7884
                                                                            (letrec ((x7885
                                                                                      (f
                                                                                       x)))
                                                                              (cons
                                                                               x7885
                                                                               ys))))
                                                                    (λ x7886
                                                                      x7884))))
                                                          (foldr
                                                           x7883
                                                           empty
                                                           xs))))
                                                g7882))))
                                    (letrec ((g7887
                                              (letrec ((x7892
                                                        ((lambda (j7330
                                                                  k7331
                                                                  f7332)
                                                           (letrec ((g7893
                                                                     (lambda (g7327
                                                                              g7328
                                                                              g7329)
                                                                       (letrec ((g7894
                                                                                 (letrec ((x7895
                                                                                           (letrec ((x7899
                                                                                                     ((lambda (j7335
                                                                                                               k7336
                                                                                                               f7337)
                                                                                                        (letrec ((g7900
                                                                                                                  (lambda (g7333
                                                                                                                           g7334)
                                                                                                                    (letrec ((g7901
                                                                                                                              (letrec ((x7902
                                                                                                                                        (letrec ((x7904
                                                                                                                                                  (any/c
                                                                                                                                                   j7335
                                                                                                                                                   k7336
                                                                                                                                                   g7333))
                                                                                                                                                 (x7903
                                                                                                                                                  (any/c
                                                                                                                                                   j7335
                                                                                                                                                   k7336
                                                                                                                                                   g7334)))
                                                                                                                                          (f7337
                                                                                                                                           x7904
                                                                                                                                           x7903))))
                                                                                                                                (any/c
                                                                                                                                 j7335
                                                                                                                                 k7336
                                                                                                                                 x7902))))
                                                                                                                      g7901))))
                                                                                                          g7900))
                                                                                                      j7330
                                                                                                      k7331
                                                                                                      g7327))
                                                                                                    (x7898
                                                                                                     (any/c
                                                                                                      j7330
                                                                                                      k7331
                                                                                                      g7328))
                                                                                                    (x7896
                                                                                                     (letrec ((x7897
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7897
                                                                                                        j7330
                                                                                                        k7331
                                                                                                        g7329))))
                                                                                             (f7332
                                                                                              x7899
                                                                                              x7898
                                                                                              x7896))))
                                                                                   (any/c
                                                                                    j7330
                                                                                    k7331
                                                                                    x7895))))
                                                                         g7894))))
                                                             g7893))
                                                         'module
                                                         'importer
                                                         foldr))
                                                       (x7891 (input))
                                                       (x7890 (input))
                                                       (x7889 (input)))
                                                (x7892 x7891 x7890 x7889)))
                                             (g7888
                                              (letrec ((x7907
                                                        ((lambda (j7340
                                                                  k7341
                                                                  f7342)
                                                           (letrec ((g7908
                                                                     (lambda (g7338
                                                                              g7339)
                                                                       (letrec ((g7909
                                                                                 (letrec ((x7918
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7910
                                                                                           (letrec ((x7913
                                                                                                     ((lambda (j7344
                                                                                                               k7345
                                                                                                               f7346)
                                                                                                        (letrec ((g7914
                                                                                                                  (lambda (g7343)
                                                                                                                    (letrec ((g7915
                                                                                                                              (letrec ((x7916
                                                                                                                                        (letrec ((x7917
                                                                                                                                                  (any/c
                                                                                                                                                   j7344
                                                                                                                                                   k7345
                                                                                                                                                   g7343)))
                                                                                                                                          (f7346
                                                                                                                                           x7917))))
                                                                                                                                (any/c
                                                                                                                                 j7344
                                                                                                                                 k7345
                                                                                                                                 x7916))))
                                                                                                                      g7915))))
                                                                                                          g7914))
                                                                                                      j7340
                                                                                                      k7341
                                                                                                      g7338))
                                                                                                    (x7911
                                                                                                     (letrec ((x7912
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7912
                                                                                                        j7340
                                                                                                        k7341
                                                                                                        g7339))))
                                                                                             (f7342
                                                                                              x7913
                                                                                              x7911))))
                                                                                   (x7918
                                                                                    j7340
                                                                                    k7341
                                                                                    x7910))))
                                                                         g7909))))
                                                             g7908))
                                                         'module
                                                         'importer
                                                         map))
                                                       (x7906 (input))
                                                       (x7905 (input)))
                                                (x7907 x7906 x7905))))
                                      g7888))))
                          g7360))))
              g7358)))
    g7357))
