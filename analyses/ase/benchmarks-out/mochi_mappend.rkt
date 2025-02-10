(letrec ((any? (lambda (v) (letrec ((g7341 #t)) g7341)))
         (meta (lambda (v) (letrec ((g7342 v)) g7342)))
         (member
          (lambda (v lst)
            (letrec ((g7343
                      (letrec ((g7344
                                (letrec ((x-e7345 lst))
                                  (match
                                   x-e7345
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7346 (eq? v v1)))
                                       (if x-cnd7346 #t (member v vs)))))))))
                        g7344)))
              g7343)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7347 (lambda (v) (letrec ((g7348 v)) g7348)))) g7347)))
         (nonzero?
          (lambda (v)
            (letrec ((g7349 (letrec ((x7350 (= v 0))) (not x7350)))) g7349))))
  (letrec ((g7351
            (letrec ((g7352
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7353 '())
                                 (g7354
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7355
                                                        (lambda (k j lst)
                                                          (letrec ((g7356
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7357
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7357))
                                                                     lst)))
                                                            g7356))))
                                                g7355)))
                                           (real?/c
                                            (lambda (g7258 g7259 g7260)
                                              (letrec ((g7358
                                                        (letrec ((x-cnd7359
                                                                  (real?
                                                                   g7260)))
                                                          (if x-cnd7359
                                                            g7260
                                                            (blame
                                                             g7258
                                                             'real?)))))
                                                g7358)))
                                           (boolean?/c
                                            (lambda (g7261 g7262 g7263)
                                              (letrec ((g7360
                                                        (letrec ((x-cnd7361
                                                                  (boolean?
                                                                   g7263)))
                                                          (if x-cnd7361
                                                            g7263
                                                            (blame
                                                             g7261
                                                             'boolean?)))))
                                                g7360)))
                                           (number?/c
                                            (lambda (g7264 g7265 g7266)
                                              (letrec ((g7362
                                                        (letrec ((x-cnd7363
                                                                  (number?
                                                                   g7266)))
                                                          (if x-cnd7363
                                                            g7266
                                                            (blame
                                                             g7264
                                                             'number?)))))
                                                g7362)))
                                           (any/c
                                            (lambda (g7267 g7268 g7269)
                                              (letrec ((g7364
                                                        (letrec ((x-cnd7365
                                                                  ((lambda (v)
                                                                     (letrec ((g7366
                                                                               #t))
                                                                       g7366))
                                                                   g7269)))
                                                          (if x-cnd7365
                                                            g7269
                                                            (blame
                                                             g7267
                                                             '(lambda (v)
                                                                #t))))))
                                                g7364)))
                                           (any?/c
                                            (lambda (g7270 g7271 g7272)
                                              (letrec ((g7367
                                                        (letrec ((x-cnd7368
                                                                  ((lambda (v)
                                                                     (letrec ((g7369
                                                                               #t))
                                                                       g7369))
                                                                   g7272)))
                                                          (if x-cnd7368
                                                            g7272
                                                            (blame
                                                             g7270
                                                             '(lambda (v)
                                                                #t))))))
                                                g7367)))
                                           (cons?/c
                                            (lambda (g7273 g7274 g7275)
                                              (letrec ((g7370
                                                        (letrec ((x-cnd7371
                                                                  (pair?
                                                                   g7275)))
                                                          (if x-cnd7371
                                                            g7275
                                                            (blame
                                                             g7273
                                                             'pair?)))))
                                                g7370)))
                                           (pair?/c
                                            (lambda (g7276 g7277 g7278)
                                              (letrec ((g7372
                                                        (letrec ((x-cnd7373
                                                                  (pair?
                                                                   g7278)))
                                                          (if x-cnd7373
                                                            g7278
                                                            (blame
                                                             g7276
                                                             'pair?)))))
                                                g7372)))
                                           (integer?/c
                                            (lambda (g7279 g7280 g7281)
                                              (letrec ((g7374
                                                        (letrec ((x-cnd7375
                                                                  (integer?
                                                                   g7281)))
                                                          (if x-cnd7375
                                                            g7281
                                                            (blame
                                                             g7279
                                                             'integer?)))))
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
                                            (lambda (g7282 g7283 g7284)
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
                                                                   g7284)))
                                                          (if x-cnd7391
                                                            g7284
                                                            (blame
                                                             g7282
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7390)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7394 v)) g7394)))
                                           (+
                                            ((lambda (j7287 k7288 f7289)
                                               (letrec ((g7396
                                                         (lambda (g7285 g7286)
                                                           (letrec ((g7397
                                                                     (letrec ((x7398
                                                                               (letrec ((x7400
                                                                                         (number?/c
                                                                                          j7287
                                                                                          k7288
                                                                                          g7285))
                                                                                        (x7399
                                                                                         (number?/c
                                                                                          j7287
                                                                                          k7288
                                                                                          g7286)))
                                                                                 (f7289
                                                                                  x7400
                                                                                  x7399))))
                                                                       (number?/c
                                                                        j7287
                                                                        k7288
                                                                        x7398))))
                                                             g7397))))
                                                 g7396))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7395 (orig-+ a b)))
                                                 g7395))))
                                           (-
                                            ((lambda (j7292 k7293 f7294)
                                               (letrec ((g7402
                                                         (lambda (g7290 g7291)
                                                           (letrec ((g7403
                                                                     (letrec ((x7404
                                                                               (letrec ((x7406
                                                                                         (number?/c
                                                                                          j7292
                                                                                          k7293
                                                                                          g7290))
                                                                                        (x7405
                                                                                         (number?/c
                                                                                          j7292
                                                                                          k7293
                                                                                          g7291)))
                                                                                 (f7294
                                                                                  x7406
                                                                                  x7405))))
                                                                       (number?/c
                                                                        j7292
                                                                        k7293
                                                                        x7404))))
                                                             g7403))))
                                                 g7402))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7401 (orig-- a b)))
                                                 g7401))))
                                           (*
                                            ((lambda (j7297 k7298 f7299)
                                               (letrec ((g7408
                                                         (lambda (g7295 g7296)
                                                           (letrec ((g7409
                                                                     (letrec ((x7410
                                                                               (letrec ((x7412
                                                                                         (number?/c
                                                                                          j7297
                                                                                          k7298
                                                                                          g7295))
                                                                                        (x7411
                                                                                         (number?/c
                                                                                          j7297
                                                                                          k7298
                                                                                          g7296)))
                                                                                 (f7299
                                                                                  x7412
                                                                                  x7411))))
                                                                       (number?/c
                                                                        j7297
                                                                        k7298
                                                                        x7410))))
                                                             g7409))))
                                                 g7408))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7407 (orig-* a b)))
                                                 g7407))))
                                           (/
                                            ((lambda (j7302 k7303 f7304)
                                               (letrec ((g7414
                                                         (lambda (g7300 g7301)
                                                           (letrec ((g7415
                                                                     (letrec ((x7416
                                                                               (letrec ((x7418
                                                                                         (number?/c
                                                                                          j7302
                                                                                          k7303
                                                                                          g7300))
                                                                                        (x7417
                                                                                         (number?/c
                                                                                          j7302
                                                                                          k7303
                                                                                          g7301)))
                                                                                 (f7304
                                                                                  x7418
                                                                                  x7417))))
                                                                       (number?/c
                                                                        j7302
                                                                        k7303
                                                                        x7416))))
                                                             g7415))))
                                                 g7414))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7413 (orig-/ a b)))
                                                 g7413))))
                                           (car
                                            ((lambda (j7306 k7307 f7308)
                                               (letrec ((g7420
                                                         (lambda (g7305)
                                                           (letrec ((g7421
                                                                     (letrec ((x7422
                                                                               (letrec ((x7423
                                                                                         (pair?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7305)))
                                                                                 (f7308
                                                                                  x7423))))
                                                                       (any/c
                                                                        j7306
                                                                        k7307
                                                                        x7422))))
                                                             g7421))))
                                                 g7420))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7419 (orig-car p)))
                                                 g7419))))
                                           (cdr
                                            ((lambda (j7310 k7311 f7312)
                                               (letrec ((g7425
                                                         (lambda (g7309)
                                                           (letrec ((g7426
                                                                     (letrec ((x7427
                                                                               (letrec ((x7428
                                                                                         (pair?/c
                                                                                          j7310
                                                                                          k7311
                                                                                          g7309)))
                                                                                 (f7312
                                                                                  x7428))))
                                                                       (any/c
                                                                        j7310
                                                                        k7311
                                                                        x7427))))
                                                             g7426))))
                                                 g7425))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7424 (orig-cdr p)))
                                                 g7424))))
                                           (cons
                                            ((lambda (j7315 k7316 f7317)
                                               (letrec ((g7430
                                                         (lambda (g7313 g7314)
                                                           (letrec ((g7431
                                                                     (letrec ((x7432
                                                                               (letrec ((x7434
                                                                                         (any/c
                                                                                          j7315
                                                                                          k7316
                                                                                          g7313))
                                                                                        (x7433
                                                                                         (any/c
                                                                                          j7315
                                                                                          k7316
                                                                                          g7314)))
                                                                                 (f7317
                                                                                  x7434
                                                                                  x7433))))
                                                                       (pair?/c
                                                                        j7315
                                                                        k7316
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
                                            ((lambda (j7319 k7320 f7321)
                                               (letrec ((g7436
                                                         (lambda (g7318)
                                                           (letrec ((g7437
                                                                     (letrec ((x7438
                                                                               (letrec ((x7439
                                                                                         (vector?/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7318)))
                                                                                 (f7321
                                                                                  x7439))))
                                                                       (integer?/c
                                                                        j7319
                                                                        k7320
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
                                            ((lambda (j7324 k7325 f7326)
                                               (letrec ((g7441
                                                         (lambda (g7322 g7323)
                                                           (letrec ((g7442
                                                                     (letrec ((x7443
                                                                               (letrec ((x7445
                                                                                         (vector?/c
                                                                                          j7324
                                                                                          k7325
                                                                                          g7322))
                                                                                        (x7444
                                                                                         (integer?/c
                                                                                          j7324
                                                                                          k7325
                                                                                          g7323)))
                                                                                 (f7326
                                                                                  x7445
                                                                                  x7444))))
                                                                       (any/c
                                                                        j7324
                                                                        k7325
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
                                                                                (letrec ((x7551
                                                                                          (null?
                                                                                           a))
                                                                                         (x7550
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7551
                                                                                       x7550))))
                                                                        (letrec ((g7552
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x7555
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7554
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7553
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7555
                                                                                                     x7554
                                                                                                     x7553))))
                                                                                      (letrec ((g7556
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x7564
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7563
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7560
                                                                                                                      (letrec ((x7562
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7561
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7562
                                                                                                                         x7561)))
                                                                                                                     (x7557
                                                                                                                      (letrec ((x7559
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7558
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7559
                                                                                                                         x7558))))
                                                                                                              (and x7564
                                                                                                                   x7563
                                                                                                                   x7560
                                                                                                                   x7557))))
                                                                                                    (letrec ((g7565
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x7581
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7580
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7566
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7567
                                                                                                                                      (letrec ((x7578
                                                                                                                                                (letrec ((x7579
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7579
                                                                                                                                                   n)))
                                                                                                                                               (x7568
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7569
                                                                                                                                                                      (letrec ((x7576
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7570
                                                                                                                                                                                (letrec ((x7573
                                                                                                                                                                                          (letrec ((x7575
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7574
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7575
                                                                                                                                                                                             x7574)))
                                                                                                                                                                                         (x7571
                                                                                                                                                                                          (letrec ((x7572
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7572))))
                                                                                                                                                                                  (and x7573
                                                                                                                                                                                       x7571))))
                                                                                                                                                                        (or x7576
                                                                                                                                                                            x7570))))
                                                                                                                                                              g7569))))
                                                                                                                                                  (letrec ((g7577
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7577))))
                                                                                                                                        (and x7578
                                                                                                                                             x7568))))
                                                                                                                              g7567))))
                                                                                                                  (and x7581
                                                                                                                       x7580
                                                                                                                       x7566)))))
                                                                                                      g7565)))))
                                                                                        g7556)))))
                                                                          g7552)))))
                                                            g7549))))
                                                g7548)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7582
                                                        (letrec ((x7583
                                                                  (letrec ((x7584
                                                                            (letrec ((x7585
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7585))))
                                                                    (car
                                                                     x7584))))
                                                          (cdr x7583))))
                                                g7582)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7586
                                                        (letrec ((x7587
                                                                  (letrec ((x7588
                                                                            (letrec ((x7589
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7589))))
                                                                    (car
                                                                     x7588))))
                                                          (car x7587))))
                                                g7586)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7590 (eq? x y)))
                                                g7590)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7591
                                                        (letrec ((x7593
                                                                  (number? x)))
                                                          (assert x7593)))
                                                       (g7592
                                                        (letrec ((val7250
                                                                  (> x y)))
                                                          (letrec ((g7594
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7595
                                                                                  (if val7251
                                                                                    val7251
                                                                                    #f)))
                                                                          g7595)))))
                                                            g7594))))
                                                g7592)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7596
                                                        (letrec ((x7599
                                                                  (string?
                                                                   filename)))
                                                          (assert x7599)))
                                                       (g7597
                                                        (letrec ((x7600
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7600)))
                                                       (g7598
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7601
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7602 res))
                                                            g7602))))
                                                g7598)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7603 (cons x '())))
                                                g7603)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7604
                                                        (letrec ((x7607
                                                                  (char? c1)))
                                                          (assert x7607)))
                                                       (g7605
                                                        (letrec ((x7608
                                                                  (char? c2)))
                                                          (assert x7608)))
                                                       (g7606
                                                        (letrec ((val7252
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7609
                                                                    (if val7252
                                                                      val7252
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7609))))
                                                g7606)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7610
                                                        (letrec ((x7611
                                                                  (letrec ((x7612
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7612))))
                                                          (cdr x7611))))
                                                g7610)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7613
                                                        (letrec ((x7614
                                                                  (letrec ((x7615
                                                                            (letrec ((x7616
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7616))))
                                                                    (car
                                                                     x7615))))
                                                          (cdr x7614))))
                                                g7613)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7617
                                                        (letrec ((x7618
                                                                  (letrec ((x7619
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7619))))
                                                          (car x7618))))
                                                g7617)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7620
                                                        (letrec ((x7621
                                                                  (letrec ((x7622
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7622))))
                                                          (car x7621))))
                                                g7620)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7623
                                                        (letrec ((x7626
                                                                  (char? c1)))
                                                          (assert x7626)))
                                                       (g7624
                                                        (letrec ((x7627
                                                                  (char? c2)))
                                                          (assert x7627)))
                                                       (g7625
                                                        (letrec ((x7628
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7628))))
                                                g7625)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7629
                                                        (letrec ((x7630
                                                                  (letrec ((x7631
                                                                            (letrec ((x7632
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7632))))
                                                                    (car
                                                                     x7631))))
                                                          (car x7630))))
                                                g7629)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7633
                                                        (letrec ((x7635
                                                                  (number? x)))
                                                          (assert x7635)))
                                                       (g7634 (< x 0)))
                                                g7634)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7636 (memq e l)))
                                                g7636)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7637
                                                        (letrec ((x7638
                                                                  (letrec ((x7639
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7639))))
                                                          (car x7638))))
                                                g7637)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7640 '())) g7640)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7641
                                                        (letrec ((x7643
                                                                  (list? l)))
                                                          (assert x7643)))
                                                       (g7642
                                                        (letrec ((x-cnd7644
                                                                  (null? l)))
                                                          (if x-cnd7644
                                                            '()
                                                            (letrec ((x7647
                                                                      (letrec ((x7648
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7648)))
                                                                     (x7645
                                                                      (letrec ((x7646
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7646))))
                                                              (append
                                                               x7647
                                                               x7645))))))
                                                g7642)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7649
                                                        (letrec ((x7650
                                                                  (letrec ((x7651
                                                                            (letrec ((x7652
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7652))))
                                                                    (car
                                                                     x7651))))
                                                          (car x7650))))
                                                g7649)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7653
                                                        (letrec ((x7654
                                                                  (letrec ((x7655
                                                                            (letrec ((x7656
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7656))))
                                                                    (cdr
                                                                     x7655))))
                                                          (cdr x7654))))
                                                g7653)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7657
                                                        (letrec ((x7659
                                                                  (number? x)))
                                                          (assert x7659)))
                                                       (g7658
                                                        (letrec ((x7660
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7660))))
                                                g7658)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7661
                                                        (letrec ((x7662
                                                                  (letrec ((x7663
                                                                            (letrec ((x7664
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7664))))
                                                                    (car
                                                                     x7663))))
                                                          (car x7662))))
                                                g7661)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7665
                                                        (letrec ((x7668
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7668)))
                                                       (g7666
                                                        (letrec ((x7669
                                                                  (list?
                                                                   args)))
                                                          (assert x7669)))
                                                       (g7667
                                                        (letrec ((x-cnd7670
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7670
                                                            (letrec ((g7671
                                                                      (proc)))
                                                              g7671)
                                                            (letrec ((x-cnd7672
                                                                      (letrec ((x7673
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7673))))
                                                              (if x-cnd7672
                                                                (letrec ((g7674
                                                                          (letrec ((x7675
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7675))))
                                                                  g7674)
                                                                (letrec ((x-cnd7676
                                                                          (letrec ((x7677
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7677))))
                                                                  (if x-cnd7676
                                                                    (letrec ((g7678
                                                                              (letrec ((x7680
                                                                                        (car
                                                                                         args))
                                                                                       (x7679
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7680
                                                                                 x7679))))
                                                                      g7678)
                                                                    (letrec ((x-cnd7681
                                                                              (letrec ((x7682
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7682))))
                                                                      (if x-cnd7681
                                                                        (letrec ((g7683
                                                                                  (letrec ((x7686
                                                                                            (car
                                                                                             args))
                                                                                           (x7685
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7684
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7686
                                                                                     x7685
                                                                                     x7684))))
                                                                          g7683)
                                                                        (letrec ((x-cnd7687
                                                                                  (letrec ((x7688
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7688))))
                                                                          (if x-cnd7687
                                                                            (letrec ((g7689
                                                                                      (letrec ((x7693
                                                                                                (car
                                                                                                 args))
                                                                                               (x7692
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7691
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7690
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7693
                                                                                         x7692
                                                                                         x7691
                                                                                         x7690))))
                                                                              g7689)
                                                                            (letrec ((x-cnd7694
                                                                                      (letrec ((x7695
                                                                                                (letrec ((x7696
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7696))))
                                                                                        (null?
                                                                                         x7695))))
                                                                              (if x-cnd7694
                                                                                (letrec ((g7697
                                                                                          (letrec ((x7703
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7702
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7701
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7700
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7698
                                                                                                    (letrec ((x7699
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7699))))
                                                                                            (proc
                                                                                             x7703
                                                                                             x7702
                                                                                             x7701
                                                                                             x7700
                                                                                             x7698))))
                                                                                  g7697)
                                                                                (letrec ((x-cnd7704
                                                                                          (letrec ((x7705
                                                                                                    (letrec ((x7706
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7706))))
                                                                                            (null?
                                                                                             x7705))))
                                                                                  (if x-cnd7704
                                                                                    (letrec ((g7707
                                                                                              (letrec ((x7715
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7714
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7713
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7712
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7710
                                                                                                        (letrec ((x7711
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7711)))
                                                                                                       (x7708
                                                                                                        (letrec ((x7709
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7709))))
                                                                                                (proc
                                                                                                 x7715
                                                                                                 x7714
                                                                                                 x7713
                                                                                                 x7712
                                                                                                 x7710
                                                                                                 x7708))))
                                                                                      g7707)
                                                                                    (letrec ((x-cnd7716
                                                                                              (letrec ((x7717
                                                                                                        (letrec ((x7718
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7718))))
                                                                                                (null?
                                                                                                 x7717))))
                                                                                      (if x-cnd7716
                                                                                        (letrec ((g7719
                                                                                                  (letrec ((x7729
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7728
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7727
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7726
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7724
                                                                                                            (letrec ((x7725
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7725)))
                                                                                                           (x7722
                                                                                                            (letrec ((x7723
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7723)))
                                                                                                           (x7720
                                                                                                            (letrec ((x7721
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7721))))
                                                                                                    (proc
                                                                                                     x7729
                                                                                                     x7728
                                                                                                     x7727
                                                                                                     x7726
                                                                                                     x7724
                                                                                                     x7722
                                                                                                     x7720))))
                                                                                          g7719)
                                                                                        (letrec ((g7730
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7730)))))))))))))))))))
                                                g7667)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7731
                                                        (letrec ((x7733
                                                                  (list? l)))
                                                          (assert x7733)))
                                                       (g7732
                                                        (letrec ((x-cnd7734
                                                                  (null? l)))
                                                          (if x-cnd7734
                                                            #f
                                                            (letrec ((x-cnd7735
                                                                      (letrec ((x7736
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7736
                                                                         e))))
                                                              (if x-cnd7735
                                                                l
                                                                (letrec ((x7737
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7737))))))))
                                                g7732)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7738
                                                        (letrec ((x7739
                                                                  (letrec ((x7740
                                                                            (letrec ((x7741
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7741))))
                                                                    (cdr
                                                                     x7740))))
                                                          (cdr x7739))))
                                                g7738)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7742
                                                        (letrec ((x7743
                                                                  (letrec ((x7744
                                                                            (letrec ((x7745
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7745))))
                                                                    (cdr
                                                                     x7744))))
                                                          (car x7743))))
                                                g7742)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7746 (random 42)))
                                                g7746)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7747
                                                        (letrec ((x7749
                                                                  (number? x)))
                                                          (assert x7749)))
                                                       (g7748 (= x 0)))
                                                g7748)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7750
                                                        (letrec ((val7253
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7751
                                                                    (if val7253
                                                                      val7253
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7751))))
                                                g7750)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7752
                                                        (letrec ((x7753
                                                                  (cdr x)))
                                                          (car x7753))))
                                                g7752)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7754
                                                        (letrec ((val7254
                                                                  (letrec ((x7757
                                                                            (pair?
                                                                             l))
                                                                           (x7755
                                                                            (letrec ((x7756
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7756))))
                                                                    (and x7757
                                                                         x7755))))
                                                          (letrec ((g7758
                                                                    (if val7254
                                                                      val7254
                                                                      (null?
                                                                       l))))
                                                            g7758))))
                                                g7754)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7759
                                                        (letrec ((x7760
                                                                  (letrec ((x7761
                                                                            (letrec ((x7762
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7762))))
                                                                    (cdr
                                                                     x7761))))
                                                          (cdr x7760))))
                                                g7759)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7763
                                                        (letrec ((x-cnd7764
                                                                  (letrec ((x7765
                                                                            #\0))
                                                                    (char<=?
                                                                     x7765
                                                                     c))))
                                                          (if x-cnd7764
                                                            (letrec ((x7766
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7766))
                                                            #f))))
                                                g7763)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
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
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7772
                                                                         k))))
                                                              (if x-cnd7771
                                                                (car l)
                                                                (letrec ((x7773
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7773))))))))
                                                g7768)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7774 (if x #f #t)))
                                                g7774)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7775 (append l1 l2)))
                                                g7775)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7776
                                                        (letrec ((x7778
                                                                  (list? l)))
                                                          (assert x7778)))
                                                       (g7777
                                                        (letrec ((x-cnd7779
                                                                  (null? l)))
                                                          (if x-cnd7779
                                                            #f
                                                            (letrec ((x-cnd7780
                                                                      (letrec ((x7781
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7781
                                                                         e))))
                                                              (if x-cnd7780
                                                                l
                                                                (letrec ((x7782
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7782))))))))
                                                g7777)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7783
                                                        (letrec ((x7784
                                                                  (letrec ((x7785
                                                                            (letrec ((x7786
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7786))))
                                                                    (cdr
                                                                     x7785))))
                                                          (car x7784))))
                                                g7783)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7787
                                                        (letrec ((x7789
                                                                  (list? l)))
                                                          (assert x7789)))
                                                       (g7788
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7790
                                                                              (letrec ((x-cnd7791
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7791
                                                                                  0
                                                                                  (letrec ((x7792
                                                                                            (letrec ((x7793
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7793))))
                                                                                    (+
                                                                                     1
                                                                                     x7792))))))
                                                                      g7790))))
                                                          (letrec ((g7794
                                                                    (rec l)))
                                                            g7794))))
                                                g7788)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7795
                                                        (letrec ((x7798
                                                                  (char? c1)))
                                                          (assert x7798)))
                                                       (g7796
                                                        (letrec ((x7799
                                                                  (char? c2)))
                                                          (assert x7799)))
                                                       (g7797
                                                        (letrec ((val7255
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7800
                                                                    (if val7255
                                                                      val7255
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7800))))
                                                g7797)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7801
                                                        (letrec ((x7802
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7802))))
                                                g7801)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7803
                                                        (letrec ((x7804
                                                                  (letrec ((x7805
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7805))))
                                                          (cdr x7804))))
                                                g7803)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7806
                                                        (letrec ((x7808
                                                                  (list? l)))
                                                          (assert x7808)))
                                                       (g7807
                                                        (letrec ((x-cnd7809
                                                                  (null? l)))
                                                          (if x-cnd7809
                                                            #f
                                                            (letrec ((x-cnd7810
                                                                      (letrec ((x7811
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7811
                                                                         k))))
                                                              (if x-cnd7810
                                                                (car l)
                                                                (letrec ((x7812
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7812))))))))
                                                g7807)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7813
                                                        (letrec ((x7814
                                                                  (car x)))
                                                          (car x7814))))
                                                g7813)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7815
                                                        (letrec ((x7818
                                                                  (char? c1)))
                                                          (assert x7818)))
                                                       (g7816
                                                        (letrec ((x7819
                                                                  (char? c2)))
                                                          (assert x7819)))
                                                       (g7817
                                                        (letrec ((x7820
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7820))))
                                                g7817)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7821
                                                        (letrec ((val7256
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7822
                                                                    (if val7256
                                                                      val7256
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7822))))
                                                g7821)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7823
                                                        (letrec ((x7826
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7826)))
                                                       (g7824
                                                        (letrec ((x7827
                                                                  (list? l)))
                                                          (assert x7827)))
                                                       (g7825
                                                        (letrec ((x-cnd7828
                                                                  (null? l)))
                                                          (if x-cnd7828
                                                            #t
                                                            (letrec ((x-cnd7829
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7829
                                                                (letrec ((g7830
                                                                          (letrec ((x7832
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7832)))
                                                                         (g7831
                                                                          (letrec ((x7833
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7833))))
                                                                  g7831)
                                                                '()))))))
                                                g7825)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7834
                                                        (letrec ((x7836
                                                                  (number? x)))
                                                          (assert x7836)))
                                                       (g7835
                                                        (letrec ((x-cnd7837
                                                                  (< x 0)))
                                                          (if x-cnd7837
                                                            (- 0 x)
                                                            x))))
                                                g7835)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7838
                                                        (letrec ((x7841
                                                                  (char? c1)))
                                                          (assert x7841)))
                                                       (g7839
                                                        (letrec ((x7842
                                                                  (char? c2)))
                                                          (assert x7842)))
                                                       (g7840
                                                        (letrec ((val7257
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7843
                                                                    (if val7257
                                                                      val7257
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7843))))
                                                g7840)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7844
                                                        (letrec ((x7845
                                                                  (letrec ((x7846
                                                                            (letrec ((x7847
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7847))))
                                                                    (cdr
                                                                     x7846))))
                                                          (car x7845))))
                                                g7844)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7848 #f)) g7848)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7849
                                                        (letrec ((x7851
                                                                  (letrec ((x7852
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7852)))
                                                                 (x7850
                                                                  (gcd m n)))
                                                          (/ x7851 x7850))))
                                                g7849)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7853
                                                        (letrec ((x7855
                                                                  (number? x)))
                                                          (assert x7855)))
                                                       (g7854
                                                        (letrec ((x7856
                                                                  (<= x y)))
                                                          (not x7856))))
                                                g7854)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7857
                                                        (letrec ((x7861
                                                                  (list? l)))
                                                          (assert x7861)))
                                                       (g7858
                                                        (letrec ((x7862
                                                                  (number?
                                                                   index)))
                                                          (assert x7862)))
                                                       (g7859
                                                        (letrec ((x7863
                                                                  (letrec ((x7864
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7864))))
                                                          (assert x7863)))
                                                       (g7860
                                                        (letrec ((x-cnd7865
                                                                  (= index 0)))
                                                          (if x-cnd7865
                                                            (car l)
                                                            (letrec ((x7867
                                                                      (cdr l))
                                                                     (x7866
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7867
                                                               x7866))))))
                                                g7860)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7868
                                                        (letrec ((x-cnd7869
                                                                  (= b 0)))
                                                          (if x-cnd7869
                                                            a
                                                            (letrec ((x7870
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7870))))))
                                                g7868)))
                                           (mappend
                                            (lambda (xs ys)
                                              (letrec ((g7871
                                                        (letrec ((x-cnd7872
                                                                  (empty? xs)))
                                                          (if x-cnd7872
                                                            ys
                                                            (letrec ((x7875
                                                                      (car xs))
                                                                     (x7873
                                                                      (letrec ((x7874
                                                                                (cdr
                                                                                 xs)))
                                                                        (mappend
                                                                         x7874
                                                                         ys))))
                                                              (cons
                                                               x7875
                                                               x7873))))))
                                                g7871)))
                                           (map-append
                                            (lambda (f xs)
                                              (letrec ((g7876
                                                        (letrec ((x-cnd7877
                                                                  (empty? xs)))
                                                          (if x-cnd7877
                                                            empty
                                                            (letrec ((x7880
                                                                      (letrec ((x7881
                                                                                (car
                                                                                 xs)))
                                                                        (f
                                                                         x7881)))
                                                                     (x7878
                                                                      (letrec ((x7879
                                                                                (cdr
                                                                                 xs)))
                                                                        (map-append
                                                                         f
                                                                         x7879))))
                                                              (mappend
                                                               x7880
                                                               x7878))))))
                                                g7876))))
                                    (letrec ((g7882
                                              (letrec ((x7886
                                                        ((lambda (j7329
                                                                  k7330
                                                                  f7331)
                                                           (letrec ((g7887
                                                                     (lambda (g7327
                                                                              g7328)
                                                                       (letrec ((g7888
                                                                                 (letrec ((x7898
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7889
                                                                                           (letrec ((x7892
                                                                                                     ((lambda (j7333
                                                                                                               k7334
                                                                                                               f7335)
                                                                                                        (letrec ((g7893
                                                                                                                  (lambda (g7332)
                                                                                                                    (letrec ((g7894
                                                                                                                              (letrec ((x7897
                                                                                                                                        (listof
                                                                                                                                         any/c))
                                                                                                                                       (x7895
                                                                                                                                        (letrec ((x7896
                                                                                                                                                  (any/c
                                                                                                                                                   j7333
                                                                                                                                                   k7334
                                                                                                                                                   g7332)))
                                                                                                                                          (f7335
                                                                                                                                           x7896))))
                                                                                                                                (x7897
                                                                                                                                 j7333
                                                                                                                                 k7334
                                                                                                                                 x7895))))
                                                                                                                      g7894))))
                                                                                                          g7893))
                                                                                                      j7329
                                                                                                      k7330
                                                                                                      g7327))
                                                                                                    (x7890
                                                                                                     (letrec ((x7891
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7891
                                                                                                        j7329
                                                                                                        k7330
                                                                                                        g7328))))
                                                                                             (f7331
                                                                                              x7892
                                                                                              x7890))))
                                                                                   (x7898
                                                                                    j7329
                                                                                    k7330
                                                                                    x7889))))
                                                                         g7888))))
                                                             g7887))
                                                         'module
                                                         'importer
                                                         map-append))
                                                       (x7885 (input))
                                                       (x7884 (input)))
                                                (x7886 x7885 x7884)))
                                             (g7883
                                              (letrec ((x7901
                                                        ((lambda (j7338
                                                                  k7339
                                                                  f7340)
                                                           (letrec ((g7902
                                                                     (lambda (g7336
                                                                              g7337)
                                                                       (letrec ((g7903
                                                                                 (letrec ((x7909
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7904
                                                                                           (letrec ((x7907
                                                                                                     (letrec ((x7908
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7908
                                                                                                        j7338
                                                                                                        k7339
                                                                                                        g7336)))
                                                                                                    (x7905
                                                                                                     (letrec ((x7906
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7906
                                                                                                        j7338
                                                                                                        k7339
                                                                                                        g7337))))
                                                                                             (f7340
                                                                                              x7907
                                                                                              x7905))))
                                                                                   (x7909
                                                                                    j7338
                                                                                    k7339
                                                                                    x7904))))
                                                                         g7903))))
                                                             g7902))
                                                         'module
                                                         'importer
                                                         mappend))
                                                       (x7900 (input))
                                                       (x7899 (input)))
                                                (x7901 x7900 x7899))))
                                      g7883))))
                          g7354))))
              g7352)))
    g7351))
