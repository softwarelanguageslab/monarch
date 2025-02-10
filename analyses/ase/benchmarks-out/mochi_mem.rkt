(letrec ((any? (lambda (v) (letrec ((g7345 #t)) g7345)))
         (meta (lambda (v) (letrec ((g7346 v)) g7346)))
         (member
          (lambda (v lst)
            (letrec ((g7347
                      (letrec ((g7348
                                (letrec ((x-e7349 lst))
                                  (match
                                   x-e7349
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7350 (eq? v v1)))
                                       (if x-cnd7350 #t (member v vs)))))))))
                        g7348)))
              g7347)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7351 (lambda (v) (letrec ((g7352 v)) g7352)))) g7351)))
         (nonzero?
          (lambda (v)
            (letrec ((g7353 (letrec ((x7354 (= v 0))) (not x7354)))) g7353))))
  (letrec ((g7355
            (letrec ((g7356
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7357 '())
                                 (g7358
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7359
                                                        (lambda (k j lst)
                                                          (letrec ((g7360
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7361
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7361))
                                                                     lst)))
                                                            g7360))))
                                                g7359)))
                                           (real?/c
                                            (lambda (g7261 g7262 g7263)
                                              (letrec ((g7362
                                                        (letrec ((x-cnd7363
                                                                  (real?
                                                                   g7263)))
                                                          (if x-cnd7363
                                                            g7263
                                                            (blame
                                                             g7261
                                                             'real?)))))
                                                g7362)))
                                           (boolean?/c
                                            (lambda (g7264 g7265 g7266)
                                              (letrec ((g7364
                                                        (letrec ((x-cnd7365
                                                                  (boolean?
                                                                   g7266)))
                                                          (if x-cnd7365
                                                            g7266
                                                            (blame
                                                             g7264
                                                             'boolean?)))))
                                                g7364)))
                                           (number?/c
                                            (lambda (g7267 g7268 g7269)
                                              (letrec ((g7366
                                                        (letrec ((x-cnd7367
                                                                  (number?
                                                                   g7269)))
                                                          (if x-cnd7367
                                                            g7269
                                                            (blame
                                                             g7267
                                                             'number?)))))
                                                g7366)))
                                           (any/c
                                            (lambda (g7270 g7271 g7272)
                                              (letrec ((g7368
                                                        (letrec ((x-cnd7369
                                                                  ((lambda (v)
                                                                     (letrec ((g7370
                                                                               #t))
                                                                       g7370))
                                                                   g7272)))
                                                          (if x-cnd7369
                                                            g7272
                                                            (blame
                                                             g7270
                                                             '(lambda (v)
                                                                #t))))))
                                                g7368)))
                                           (any?/c
                                            (lambda (g7273 g7274 g7275)
                                              (letrec ((g7371
                                                        (letrec ((x-cnd7372
                                                                  ((lambda (v)
                                                                     (letrec ((g7373
                                                                               #t))
                                                                       g7373))
                                                                   g7275)))
                                                          (if x-cnd7372
                                                            g7275
                                                            (blame
                                                             g7273
                                                             '(lambda (v)
                                                                #t))))))
                                                g7371)))
                                           (cons?/c
                                            (lambda (g7276 g7277 g7278)
                                              (letrec ((g7374
                                                        (letrec ((x-cnd7375
                                                                  (pair?
                                                                   g7278)))
                                                          (if x-cnd7375
                                                            g7278
                                                            (blame
                                                             g7276
                                                             'pair?)))))
                                                g7374)))
                                           (pair?/c
                                            (lambda (g7279 g7280 g7281)
                                              (letrec ((g7376
                                                        (letrec ((x-cnd7377
                                                                  (pair?
                                                                   g7281)))
                                                          (if x-cnd7377
                                                            g7281
                                                            (blame
                                                             g7279
                                                             'pair?)))))
                                                g7376)))
                                           (integer?/c
                                            (lambda (g7282 g7283 g7284)
                                              (letrec ((g7378
                                                        (letrec ((x-cnd7379
                                                                  (integer?
                                                                   g7284)))
                                                          (if x-cnd7379
                                                            g7284
                                                            (blame
                                                             g7282
                                                             'integer?)))))
                                                g7378)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7380
                                                        (lambda (k j v)
                                                          (letrec ((g7381
                                                                    (letrec ((x-cnd7382
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7382
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7381))))
                                                g7380)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7383
                                                        (lambda (k j v)
                                                          (letrec ((g7384
                                                                    (letrec ((x-cnd7385
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7385
                                                                        '()
                                                                        (letrec ((x7389
                                                                                  (letrec ((x7390
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7390)))
                                                                                 (x7386
                                                                                  (letrec ((x7388
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7387
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7388
                                                                                     k
                                                                                     j
                                                                                     x7387))))
                                                                          (orig-cons
                                                                           x7389
                                                                           x7386))))))
                                                            g7384))))
                                                g7383)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7391 #t)) g7391)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7392
                                                        (letrec ((x7393
                                                                  (= v 0)))
                                                          (not x7393))))
                                                g7392)))
                                           (nonzero?/c
                                            (lambda (g7285 g7286 g7287)
                                              (letrec ((g7394
                                                        (letrec ((x-cnd7395
                                                                  ((lambda (v)
                                                                     (letrec ((g7396
                                                                               (letrec ((x7397
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7397))))
                                                                       g7396))
                                                                   g7287)))
                                                          (if x-cnd7395
                                                            g7287
                                                            (blame
                                                             g7285
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7394)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7398 v)) g7398)))
                                           (+
                                            ((lambda (j7290 k7291 f7292)
                                               (letrec ((g7400
                                                         (lambda (g7288 g7289)
                                                           (letrec ((g7401
                                                                     (letrec ((x7402
                                                                               (letrec ((x7404
                                                                                         (number?/c
                                                                                          j7290
                                                                                          k7291
                                                                                          g7288))
                                                                                        (x7403
                                                                                         (number?/c
                                                                                          j7290
                                                                                          k7291
                                                                                          g7289)))
                                                                                 (f7292
                                                                                  x7404
                                                                                  x7403))))
                                                                       (number?/c
                                                                        j7290
                                                                        k7291
                                                                        x7402))))
                                                             g7401))))
                                                 g7400))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7399 (orig-+ a b)))
                                                 g7399))))
                                           (-
                                            ((lambda (j7295 k7296 f7297)
                                               (letrec ((g7406
                                                         (lambda (g7293 g7294)
                                                           (letrec ((g7407
                                                                     (letrec ((x7408
                                                                               (letrec ((x7410
                                                                                         (number?/c
                                                                                          j7295
                                                                                          k7296
                                                                                          g7293))
                                                                                        (x7409
                                                                                         (number?/c
                                                                                          j7295
                                                                                          k7296
                                                                                          g7294)))
                                                                                 (f7297
                                                                                  x7410
                                                                                  x7409))))
                                                                       (number?/c
                                                                        j7295
                                                                        k7296
                                                                        x7408))))
                                                             g7407))))
                                                 g7406))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7405 (orig-- a b)))
                                                 g7405))))
                                           (*
                                            ((lambda (j7300 k7301 f7302)
                                               (letrec ((g7412
                                                         (lambda (g7298 g7299)
                                                           (letrec ((g7413
                                                                     (letrec ((x7414
                                                                               (letrec ((x7416
                                                                                         (number?/c
                                                                                          j7300
                                                                                          k7301
                                                                                          g7298))
                                                                                        (x7415
                                                                                         (number?/c
                                                                                          j7300
                                                                                          k7301
                                                                                          g7299)))
                                                                                 (f7302
                                                                                  x7416
                                                                                  x7415))))
                                                                       (number?/c
                                                                        j7300
                                                                        k7301
                                                                        x7414))))
                                                             g7413))))
                                                 g7412))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7411 (orig-* a b)))
                                                 g7411))))
                                           (/
                                            ((lambda (j7305 k7306 f7307)
                                               (letrec ((g7418
                                                         (lambda (g7303 g7304)
                                                           (letrec ((g7419
                                                                     (letrec ((x7420
                                                                               (letrec ((x7422
                                                                                         (number?/c
                                                                                          j7305
                                                                                          k7306
                                                                                          g7303))
                                                                                        (x7421
                                                                                         (number?/c
                                                                                          j7305
                                                                                          k7306
                                                                                          g7304)))
                                                                                 (f7307
                                                                                  x7422
                                                                                  x7421))))
                                                                       (number?/c
                                                                        j7305
                                                                        k7306
                                                                        x7420))))
                                                             g7419))))
                                                 g7418))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7417 (orig-/ a b)))
                                                 g7417))))
                                           (car
                                            ((lambda (j7309 k7310 f7311)
                                               (letrec ((g7424
                                                         (lambda (g7308)
                                                           (letrec ((g7425
                                                                     (letrec ((x7426
                                                                               (letrec ((x7427
                                                                                         (pair?/c
                                                                                          j7309
                                                                                          k7310
                                                                                          g7308)))
                                                                                 (f7311
                                                                                  x7427))))
                                                                       (any/c
                                                                        j7309
                                                                        k7310
                                                                        x7426))))
                                                             g7425))))
                                                 g7424))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7423 (orig-car p)))
                                                 g7423))))
                                           (cdr
                                            ((lambda (j7313 k7314 f7315)
                                               (letrec ((g7429
                                                         (lambda (g7312)
                                                           (letrec ((g7430
                                                                     (letrec ((x7431
                                                                               (letrec ((x7432
                                                                                         (pair?/c
                                                                                          j7313
                                                                                          k7314
                                                                                          g7312)))
                                                                                 (f7315
                                                                                  x7432))))
                                                                       (any/c
                                                                        j7313
                                                                        k7314
                                                                        x7431))))
                                                             g7430))))
                                                 g7429))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7428 (orig-cdr p)))
                                                 g7428))))
                                           (cons
                                            ((lambda (j7318 k7319 f7320)
                                               (letrec ((g7434
                                                         (lambda (g7316 g7317)
                                                           (letrec ((g7435
                                                                     (letrec ((x7436
                                                                               (letrec ((x7438
                                                                                         (any/c
                                                                                          j7318
                                                                                          k7319
                                                                                          g7316))
                                                                                        (x7437
                                                                                         (any/c
                                                                                          j7318
                                                                                          k7319
                                                                                          g7317)))
                                                                                 (f7320
                                                                                  x7438
                                                                                  x7437))))
                                                                       (pair?/c
                                                                        j7318
                                                                        k7319
                                                                        x7436))))
                                                             g7435))))
                                                 g7434))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7433
                                                         (orig-cons a b)))
                                                 g7433))))
                                           (vector-ref
                                            ((lambda (j7322 k7323 f7324)
                                               (letrec ((g7440
                                                         (lambda (g7321)
                                                           (letrec ((g7441
                                                                     (letrec ((x7442
                                                                               (letrec ((x7443
                                                                                         (vector?/c
                                                                                          j7322
                                                                                          k7323
                                                                                          g7321)))
                                                                                 (f7324
                                                                                  x7443))))
                                                                       (integer?/c
                                                                        j7322
                                                                        k7323
                                                                        x7442))))
                                                             g7441))))
                                                 g7440))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7439
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7439))))
                                           (vector-set!
                                            ((lambda (j7327 k7328 f7329)
                                               (letrec ((g7445
                                                         (lambda (g7325 g7326)
                                                           (letrec ((g7446
                                                                     (letrec ((x7447
                                                                               (letrec ((x7449
                                                                                         (vector?/c
                                                                                          j7327
                                                                                          k7328
                                                                                          g7325))
                                                                                        (x7448
                                                                                         (integer?/c
                                                                                          j7327
                                                                                          k7328
                                                                                          g7326)))
                                                                                 (f7329
                                                                                  x7449
                                                                                  x7448))))
                                                                       (any/c
                                                                        j7327
                                                                        k7328
                                                                        x7447))))
                                                             g7446))))
                                                 g7445))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7444
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7444))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7450
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7450)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7451
                                                        (letrec ((x7452
                                                                  (letrec ((x7453
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7453))))
                                                          (cdr x7452))))
                                                g7451)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7454
                                                        (letrec ((x7457
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7457)))
                                                       (g7455
                                                        (letrec ((x7458
                                                                  (list? l)))
                                                          (assert x7458)))
                                                       (g7456
                                                        (letrec ((x-cnd7459
                                                                  (null? l)))
                                                          (if x-cnd7459
                                                            '()
                                                            (letrec ((x7462
                                                                      (letrec ((x7463
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7463)))
                                                                     (x7460
                                                                      (letrec ((x7461
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7461))))
                                                              (cons
                                                               x7462
                                                               x7460))))))
                                                g7456)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7464
                                                        (letrec ((x7465
                                                                  (car x)))
                                                          (cdr x7465))))
                                                g7464)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7466
                                                        (letrec ((x7467
                                                                  (letrec ((x7468
                                                                            (letrec ((x7469
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7469))))
                                                                    (cdr
                                                                     x7468))))
                                                          (car x7467))))
                                                g7466)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7470
                                                        (letrec ((x7471
                                                                  (letrec ((x7472
                                                                            (letrec ((x7473
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7473))))
                                                                    (car
                                                                     x7472))))
                                                          (cdr x7471))))
                                                g7470)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7474
                                                        (letrec ((x7477
                                                                  (string?
                                                                   filename)))
                                                          (assert x7477)))
                                                       (g7475
                                                        (letrec ((x7478
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7478)))
                                                       (g7476
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7479
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7480 res))
                                                            g7480))))
                                                g7476)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7481
                                                        (letrec ((x7482
                                                                  (letrec ((x7483
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7483))))
                                                          (car x7482))))
                                                g7481)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7484
                                                        (letrec ((x7485
                                                                  (letrec ((x7486
                                                                            (letrec ((x7487
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7487))))
                                                                    (car
                                                                     x7486))))
                                                          (cdr x7485))))
                                                g7484)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7488
                                                        (letrec ((x7490
                                                                  (list? l)))
                                                          (assert x7490)))
                                                       (g7489
                                                        (letrec ((x-cnd7491
                                                                  (null? l)))
                                                          (if x-cnd7491
                                                            #f
                                                            (letrec ((x-cnd7492
                                                                      (letrec ((x7493
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7493
                                                                         k))))
                                                              (if x-cnd7492
                                                                (car l)
                                                                (letrec ((x7494
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7494))))))))
                                                g7489)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7495
                                                        (letrec ((x7496
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7496))))
                                                g7495)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7497
                                                        (letrec ((x7499
                                                                  (list? l)))
                                                          (assert x7499)))
                                                       (g7498
                                                        (letrec ((x-cnd7500
                                                                  (null? l)))
                                                          (if x-cnd7500
                                                            ""
                                                            (letrec ((x7503
                                                                      (letrec ((x7504
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7504)))
                                                                     (x7501
                                                                      (letrec ((x7502
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7502))))
                                                              (string-append
                                                               x7503
                                                               x7501))))))
                                                g7498)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7505
                                                        (letrec ((x7508
                                                                  (char? c1)))
                                                          (assert x7508)))
                                                       (g7506
                                                        (letrec ((x7509
                                                                  (char? c2)))
                                                          (assert x7509)))
                                                       (g7507
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7510
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7510))))
                                                g7507)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7511
                                                        (letrec ((x7512
                                                                  (letrec ((x7513
                                                                            (letrec ((x7514
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7514))))
                                                                    (cdr
                                                                     x7513))))
                                                          (cdr x7512))))
                                                g7511)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7515
                                                        (letrec ((x7518
                                                                  (list? l)))
                                                          (assert x7518)))
                                                       (g7516
                                                        (letrec ((x7519
                                                                  (number?)))
                                                          (assert x7519)))
                                                       (g7517
                                                        (letrec ((x-cnd7520
                                                                  (zero? k)))
                                                          (if x-cnd7520
                                                            x
                                                            (letrec ((x7522
                                                                      (cdr x))
                                                                     (x7521
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7522
                                                               x7521))))))
                                                g7517)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7523 '())) g7523)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7524
                                                        (letrec ((x-cnd7525
                                                                  (letrec ((x7526
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7526))))
                                                          (if x-cnd7525
                                                            (letrec ((x7527
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7527))
                                                            #f))))
                                                g7524)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7528
                                                        (letrec ((x7530
                                                                  (number? x)))
                                                          (assert x7530)))
                                                       (g7529
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7531
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7532
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7532)))))
                                                            g7531))))
                                                g7529)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7533
                                                        (letrec ((val7244
                                                                  (letrec ((x7534
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7534
                                                                     9))))
                                                          (letrec ((g7535
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7536
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7536
                                                                                   10))))
                                                                        (letrec ((g7537
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7538
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7538
                                                                                       32)))))
                                                                          g7537)))))
                                                            g7535))))
                                                g7533)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7539
                                                        (letrec ((x7540
                                                                  (letrec ((x7541
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7541))))
                                                          (cdr x7540))))
                                                g7539)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7542
                                                        (letrec ((x7544
                                                                  (number? x)))
                                                          (assert x7544)))
                                                       (g7543 (> x 0)))
                                                g7543)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7545 #f)) g7545)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7546
                                                        (letrec ((x7547
                                                                  (cdr x)))
                                                          (cdr x7547))))
                                                g7546)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7548
                                                        (letrec ((x7550
                                                                  (number? x)))
                                                          (assert x7550)))
                                                       (g7549
                                                        (letrec ((x-cnd7551
                                                                  (< x 0)))
                                                          (if x-cnd7551
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7549)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7552
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7553
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7554
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7554
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7555
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7556
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7556
                                                                                                  (letrec ((x-cnd7557
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7557
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7558
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7559
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7559
                                                                                                                (letrec ((x-cnd7560
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7560
                                                                                                                    (letrec ((x-cnd7561
                                                                                                                              (letrec ((x7563
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7562
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7563
                                                                                                                                 x7562))))
                                                                                                                      (if x-cnd7561
                                                                                                                        (letrec ((x7565
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7564
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7565
                                                                                                                           x7564))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7566
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7567
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7567
                                                                                                                    (letrec ((x-cnd7568
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7568
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7569
                                                                                                                                    (letrec ((x-cnd7570
                                                                                                                                              (letrec ((x7571
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7571
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7570
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7572
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7573
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7574
                                                                                                                                                                                      (letrec ((x7576
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7575
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7576
                                                                                                                                                                                         x7575))))
                                                                                                                                                                              (if x-cnd7574
                                                                                                                                                                                (letrec ((x7577
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7577))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7573))))
                                                                                                                                                      g7572))))
                                                                                                                                          (letrec ((g7578
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7578))
                                                                                                                                        #f))))
                                                                                                                            g7569))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7566)))))
                                                                                        g7558)))))
                                                                          g7555)))))
                                                            g7553))))
                                                g7552)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7579
                                                        (letrec ((x7580
                                                                  (letrec ((x7581
                                                                            (letrec ((x7582
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7582))))
                                                                    (car
                                                                     x7581))))
                                                          (cdr x7580))))
                                                g7579)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7583
                                                        (letrec ((x7584
                                                                  (letrec ((x7585
                                                                            (letrec ((x7586
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7586))))
                                                                    (car
                                                                     x7585))))
                                                          (car x7584))))
                                                g7583)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7587 (eq? x y)))
                                                g7587)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7588
                                                        (letrec ((x7590
                                                                  (number? x)))
                                                          (assert x7590)))
                                                       (g7589
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7591
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7592
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7592)))))
                                                            g7591))))
                                                g7589)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7593
                                                        (letrec ((x7596
                                                                  (string?
                                                                   filename)))
                                                          (assert x7596)))
                                                       (g7594
                                                        (letrec ((x7597
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7597)))
                                                       (g7595
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7598
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7599 res))
                                                            g7599))))
                                                g7595)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7600 (cons x '())))
                                                g7600)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7601
                                                        (letrec ((x7604
                                                                  (char? c1)))
                                                          (assert x7604)))
                                                       (g7602
                                                        (letrec ((x7605
                                                                  (char? c2)))
                                                          (assert x7605)))
                                                       (g7603
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7606
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7606))))
                                                g7603)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7607
                                                        (letrec ((x7608
                                                                  (letrec ((x7609
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7609))))
                                                          (cdr x7608))))
                                                g7607)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7610
                                                        (letrec ((x7611
                                                                  (letrec ((x7612
                                                                            (letrec ((x7613
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7613))))
                                                                    (car
                                                                     x7612))))
                                                          (cdr x7611))))
                                                g7610)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7614
                                                        (letrec ((x7615
                                                                  (letrec ((x7616
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7616))))
                                                          (car x7615))))
                                                g7614)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7617
                                                        (letrec ((x7618
                                                                  (letrec ((x7619
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7619))))
                                                          (car x7618))))
                                                g7617)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7620
                                                        (letrec ((x7623
                                                                  (char? c1)))
                                                          (assert x7623)))
                                                       (g7621
                                                        (letrec ((x7624
                                                                  (char? c2)))
                                                          (assert x7624)))
                                                       (g7622
                                                        (letrec ((x7625
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7625))))
                                                g7622)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7626
                                                        (letrec ((x7627
                                                                  (letrec ((x7628
                                                                            (letrec ((x7629
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7629))))
                                                                    (car
                                                                     x7628))))
                                                          (car x7627))))
                                                g7626)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7630
                                                        (letrec ((x7632
                                                                  (number? x)))
                                                          (assert x7632)))
                                                       (g7631 (< x 0)))
                                                g7631)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7633 (memq e l)))
                                                g7633)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7634
                                                        (letrec ((x7635
                                                                  (letrec ((x7636
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7636))))
                                                          (car x7635))))
                                                g7634)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7637 '())) g7637)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7638
                                                        (letrec ((x7640
                                                                  (list? l)))
                                                          (assert x7640)))
                                                       (g7639
                                                        (letrec ((x-cnd7641
                                                                  (null? l)))
                                                          (if x-cnd7641
                                                            '()
                                                            (letrec ((x7644
                                                                      (letrec ((x7645
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7645)))
                                                                     (x7642
                                                                      (letrec ((x7643
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7643))))
                                                              (append
                                                               x7644
                                                               x7642))))))
                                                g7639)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7646
                                                        (letrec ((x7647
                                                                  (letrec ((x7648
                                                                            (letrec ((x7649
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7649))))
                                                                    (car
                                                                     x7648))))
                                                          (car x7647))))
                                                g7646)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7650
                                                        (letrec ((x7651
                                                                  (letrec ((x7652
                                                                            (letrec ((x7653
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7653))))
                                                                    (cdr
                                                                     x7652))))
                                                          (cdr x7651))))
                                                g7650)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7654
                                                        (letrec ((x7656
                                                                  (number? x)))
                                                          (assert x7656)))
                                                       (g7655
                                                        (letrec ((x7657
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7657))))
                                                g7655)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7658
                                                        (letrec ((x7659
                                                                  (letrec ((x7660
                                                                            (letrec ((x7661
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7661))))
                                                                    (car
                                                                     x7660))))
                                                          (car x7659))))
                                                g7658)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7662
                                                        (letrec ((x7665
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7665)))
                                                       (g7663
                                                        (letrec ((x7666
                                                                  (list?
                                                                   args)))
                                                          (assert x7666)))
                                                       (g7664
                                                        (letrec ((x-cnd7667
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7667
                                                            (letrec ((g7668
                                                                      (proc)))
                                                              g7668)
                                                            (letrec ((x-cnd7669
                                                                      (letrec ((x7670
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7670))))
                                                              (if x-cnd7669
                                                                (letrec ((g7671
                                                                          (letrec ((x7672
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7672))))
                                                                  g7671)
                                                                (letrec ((x-cnd7673
                                                                          (letrec ((x7674
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7674))))
                                                                  (if x-cnd7673
                                                                    (letrec ((g7675
                                                                              (letrec ((x7677
                                                                                        (car
                                                                                         args))
                                                                                       (x7676
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7677
                                                                                 x7676))))
                                                                      g7675)
                                                                    (letrec ((x-cnd7678
                                                                              (letrec ((x7679
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7679))))
                                                                      (if x-cnd7678
                                                                        (letrec ((g7680
                                                                                  (letrec ((x7683
                                                                                            (car
                                                                                             args))
                                                                                           (x7682
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7681
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7683
                                                                                     x7682
                                                                                     x7681))))
                                                                          g7680)
                                                                        (letrec ((x-cnd7684
                                                                                  (letrec ((x7685
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7685))))
                                                                          (if x-cnd7684
                                                                            (letrec ((g7686
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
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7690
                                                                                         x7689
                                                                                         x7688
                                                                                         x7687))))
                                                                              g7686)
                                                                            (letrec ((x-cnd7691
                                                                                      (letrec ((x7692
                                                                                                (letrec ((x7693
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7693))))
                                                                                        (null?
                                                                                         x7692))))
                                                                              (if x-cnd7691
                                                                                (letrec ((g7694
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
                                                                                                       x7696))))
                                                                                            (proc
                                                                                             x7700
                                                                                             x7699
                                                                                             x7698
                                                                                             x7697
                                                                                             x7695))))
                                                                                  g7694)
                                                                                (letrec ((x-cnd7701
                                                                                          (letrec ((x7702
                                                                                                    (letrec ((x7703
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7703))))
                                                                                            (null?
                                                                                             x7702))))
                                                                                  (if x-cnd7701
                                                                                    (letrec ((g7704
                                                                                              (letrec ((x7712
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7711
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7710
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7709
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7707
                                                                                                        (letrec ((x7708
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7708)))
                                                                                                       (x7705
                                                                                                        (letrec ((x7706
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7706))))
                                                                                                (proc
                                                                                                 x7712
                                                                                                 x7711
                                                                                                 x7710
                                                                                                 x7709
                                                                                                 x7707
                                                                                                 x7705))))
                                                                                      g7704)
                                                                                    (letrec ((x-cnd7713
                                                                                              (letrec ((x7714
                                                                                                        (letrec ((x7715
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7715))))
                                                                                                (null?
                                                                                                 x7714))))
                                                                                      (if x-cnd7713
                                                                                        (letrec ((g7716
                                                                                                  (letrec ((x7726
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7725
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7724
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7723
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7721
                                                                                                            (letrec ((x7722
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7722)))
                                                                                                           (x7719
                                                                                                            (letrec ((x7720
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7720)))
                                                                                                           (x7717
                                                                                                            (letrec ((x7718
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7718))))
                                                                                                    (proc
                                                                                                     x7726
                                                                                                     x7725
                                                                                                     x7724
                                                                                                     x7723
                                                                                                     x7721
                                                                                                     x7719
                                                                                                     x7717))))
                                                                                          g7716)
                                                                                        (letrec ((g7727
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7727)))))))))))))))))))
                                                g7664)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7728
                                                        (letrec ((x7730
                                                                  (list? l)))
                                                          (assert x7730)))
                                                       (g7729
                                                        (letrec ((x-cnd7731
                                                                  (null? l)))
                                                          (if x-cnd7731
                                                            #f
                                                            (letrec ((x-cnd7732
                                                                      (letrec ((x7733
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7733
                                                                         e))))
                                                              (if x-cnd7732
                                                                l
                                                                (letrec ((x7734
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7734))))))))
                                                g7729)))
                                           (cddddr
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
                                                          (cdr x7736))))
                                                g7735)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7739
                                                        (letrec ((x7740
                                                                  (letrec ((x7741
                                                                            (letrec ((x7742
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7742))))
                                                                    (cdr
                                                                     x7741))))
                                                          (car x7740))))
                                                g7739)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7743 (random 42)))
                                                g7743)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7744
                                                        (letrec ((x7746
                                                                  (number? x)))
                                                          (assert x7746)))
                                                       (g7745 (= x 0)))
                                                g7745)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7747
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7748
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7748))))
                                                g7747)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7749
                                                        (letrec ((x7750
                                                                  (cdr x)))
                                                          (car x7750))))
                                                g7749)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7751
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd7752
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7752
                                                                      (letrec ((x7753
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7753))
                                                                      #f))))
                                                          (letrec ((g7754
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g7754))))
                                                g7751)))
                                           (cddaar
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
                                                          (cdr x7756))))
                                                g7755)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7759
                                                        (letrec ((x-cnd7760
                                                                  (letrec ((x7761
                                                                            #\0))
                                                                    (char<=?
                                                                     x7761
                                                                     c))))
                                                          (if x-cnd7760
                                                            (letrec ((x7762
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7762))
                                                            #f))))
                                                g7759)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7763
                                                        (letrec ((x7765
                                                                  (list? l)))
                                                          (assert x7765)))
                                                       (g7764
                                                        (letrec ((x-cnd7766
                                                                  (null? l)))
                                                          (if x-cnd7766
                                                            #f
                                                            (letrec ((x-cnd7767
                                                                      (letrec ((x7768
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7768
                                                                         k))))
                                                              (if x-cnd7767
                                                                (car l)
                                                                (letrec ((x7769
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7769))))))))
                                                g7764)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7770 (if x #f #t)))
                                                g7770)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7771 (append l1 l2)))
                                                g7771)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7772
                                                        (letrec ((x7774
                                                                  (list? l)))
                                                          (assert x7774)))
                                                       (g7773
                                                        (letrec ((x-cnd7775
                                                                  (null? l)))
                                                          (if x-cnd7775
                                                            #f
                                                            (letrec ((x-cnd7776
                                                                      (letrec ((x7777
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7777
                                                                         e))))
                                                              (if x-cnd7776
                                                                l
                                                                (letrec ((x7778
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7778))))))))
                                                g7773)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7779
                                                        (letrec ((x7780
                                                                  (letrec ((x7781
                                                                            (letrec ((x7782
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7782))))
                                                                    (cdr
                                                                     x7781))))
                                                          (car x7780))))
                                                g7779)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7783
                                                        (letrec ((x7785
                                                                  (list? l)))
                                                          (assert x7785)))
                                                       (g7784
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7786
                                                                              (letrec ((x-cnd7787
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7787
                                                                                  0
                                                                                  (letrec ((x7788
                                                                                            (letrec ((x7789
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7789))))
                                                                                    (+
                                                                                     1
                                                                                     x7788))))))
                                                                      g7786))))
                                                          (letrec ((g7790
                                                                    (rec l)))
                                                            g7790))))
                                                g7784)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7791
                                                        (letrec ((x7794
                                                                  (char? c1)))
                                                          (assert x7794)))
                                                       (g7792
                                                        (letrec ((x7795
                                                                  (char? c2)))
                                                          (assert x7795)))
                                                       (g7793
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7796
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7796))))
                                                g7793)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7797
                                                        (letrec ((x7798
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7798))))
                                                g7797)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7799
                                                        (letrec ((x7800
                                                                  (letrec ((x7801
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7801))))
                                                          (cdr x7800))))
                                                g7799)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7802
                                                        (letrec ((x7804
                                                                  (list? l)))
                                                          (assert x7804)))
                                                       (g7803
                                                        (letrec ((x-cnd7805
                                                                  (null? l)))
                                                          (if x-cnd7805
                                                            #f
                                                            (letrec ((x-cnd7806
                                                                      (letrec ((x7807
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7807
                                                                         k))))
                                                              (if x-cnd7806
                                                                (car l)
                                                                (letrec ((x7808
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7808))))))))
                                                g7803)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7809
                                                        (letrec ((x7810
                                                                  (car x)))
                                                          (car x7810))))
                                                g7809)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7811
                                                        (letrec ((x7814
                                                                  (char? c1)))
                                                          (assert x7814)))
                                                       (g7812
                                                        (letrec ((x7815
                                                                  (char? c2)))
                                                          (assert x7815)))
                                                       (g7813
                                                        (letrec ((x7816
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7816))))
                                                g7813)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7817
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7818
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7818))))
                                                g7817)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7819
                                                        (letrec ((x7822
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7822)))
                                                       (g7820
                                                        (letrec ((x7823
                                                                  (list? l)))
                                                          (assert x7823)))
                                                       (g7821
                                                        (letrec ((x-cnd7824
                                                                  (null? l)))
                                                          (if x-cnd7824
                                                            #t
                                                            (letrec ((x-cnd7825
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7825
                                                                (letrec ((g7826
                                                                          (letrec ((x7828
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7828)))
                                                                         (g7827
                                                                          (letrec ((x7829
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7829))))
                                                                  g7827)
                                                                '()))))))
                                                g7821)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7830
                                                        (letrec ((x7832
                                                                  (number? x)))
                                                          (assert x7832)))
                                                       (g7831
                                                        (letrec ((x-cnd7833
                                                                  (< x 0)))
                                                          (if x-cnd7833
                                                            (- 0 x)
                                                            x))))
                                                g7831)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7834
                                                        (letrec ((x7837
                                                                  (char? c1)))
                                                          (assert x7837)))
                                                       (g7835
                                                        (letrec ((x7838
                                                                  (char? c2)))
                                                          (assert x7838)))
                                                       (g7836
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7839
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7839))))
                                                g7836)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7840
                                                        (letrec ((x7841
                                                                  (letrec ((x7842
                                                                            (letrec ((x7843
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7843))))
                                                                    (cdr
                                                                     x7842))))
                                                          (car x7841))))
                                                g7840)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7844 #f)) g7844)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7845
                                                        (letrec ((x7847
                                                                  (letrec ((x7848
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7848)))
                                                                 (x7846
                                                                  (gcd m n)))
                                                          (/ x7847 x7846))))
                                                g7845)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7849
                                                        (letrec ((x7851
                                                                  (number? x)))
                                                          (assert x7851)))
                                                       (g7850
                                                        (letrec ((x7852
                                                                  (<= x y)))
                                                          (not x7852))))
                                                g7850)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7853
                                                        (letrec ((x7857
                                                                  (list? l)))
                                                          (assert x7857)))
                                                       (g7854
                                                        (letrec ((x7858
                                                                  (number?
                                                                   index)))
                                                          (assert x7858)))
                                                       (g7855
                                                        (letrec ((x7859
                                                                  (letrec ((x7860
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7860))))
                                                          (assert x7859)))
                                                       (g7856
                                                        (letrec ((x-cnd7861
                                                                  (= index 0)))
                                                          (if x-cnd7861
                                                            (car l)
                                                            (letrec ((x7863
                                                                      (cdr l))
                                                                     (x7862
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7863
                                                               x7862))))))
                                                g7856)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7864
                                                        (letrec ((x-cnd7865
                                                                  (= b 0)))
                                                          (if x-cnd7865
                                                            a
                                                            (letrec ((x7866
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7866))))))
                                                g7864)))
                                           (mk-list
                                            (lambda (n x)
                                              (letrec ((g7867
                                                        (letrec ((x-cnd7868
                                                                  (< n 0)))
                                                          (if x-cnd7868
                                                            empty
                                                            (letrec ((x7869
                                                                      (letrec ((x7870
                                                                                (-
                                                                                 n
                                                                                 1)))
                                                                        (mk-list
                                                                         x7870
                                                                         x))))
                                                              (cons
                                                               x
                                                               x7869))))))
                                                g7867)))
                                           (mem
                                            (lambda (x xs)
                                              (letrec ((g7871
                                                        (letrec ((x-cnd7872
                                                                  (empty? xs)))
                                                          (if x-cnd7872
                                                            #f
                                                            (letrec ((val7259
                                                                      (letrec ((x7873
                                                                                (car
                                                                                 xs)))
                                                                        (=
                                                                         x
                                                                         x7873))))
                                                              (letrec ((g7874
                                                                        (if val7259
                                                                          val7259
                                                                          (letrec ((x7875
                                                                                    (cdr
                                                                                     xs)))
                                                                            (mem
                                                                             x
                                                                             x7875)))))
                                                                g7874))))))
                                                g7871))))
                                    (letrec ((g7876
                                              ((lambda (j7332 k7333 f7334)
                                                 (letrec ((g7878
                                                           (lambda (g7330
                                                                    g7331)
                                                             (letrec ((g7879
                                                                       (letrec ((x7335
                                                                                 (integer?/c
                                                                                  j7332
                                                                                  k7333
                                                                                  g7330))
                                                                                (x7336
                                                                                 (integer?/c
                                                                                  j7332
                                                                                  k7333
                                                                                  g7331)))
                                                                         (letrec ((g7880
                                                                                   (letrec ((x7882
                                                                                             ((lambda (_
                                                                                                       x)
                                                                                                (letrec ((g7883
                                                                                                          (letrec ((x7888
                                                                                                                    (listof
                                                                                                                     integer?/c)))
                                                                                                            (and/c
                                                                                                             x7888
                                                                                                             (lambda (g7337
                                                                                                                      g7338
                                                                                                                      g7339)
                                                                                                               (letrec ((g7884
                                                                                                                         (letrec ((x-cnd7885
                                                                                                                                   ((lambda (l)
                                                                                                                                      (letrec ((g7886
                                                                                                                                                (letrec ((val7260
                                                                                                                                                          (empty?
                                                                                                                                                           l)))
                                                                                                                                                  (letrec ((g7887
                                                                                                                                                            (if val7260
                                                                                                                                                              val7260
                                                                                                                                                              (member
                                                                                                                                                               x
                                                                                                                                                               l))))
                                                                                                                                                    g7887))))
                                                                                                                                        g7886))
                                                                                                                                    g7339)))
                                                                                                                           (if x-cnd7885
                                                                                                                             g7339
                                                                                                                             (blame
                                                                                                                              g7337
                                                                                                                              '(lambda (l)
                                                                                                                                 (letrec ((val7260
                                                                                                                                           (empty?
                                                                                                                                            l)))
                                                                                                                                   (if val7260
                                                                                                                                     val7260
                                                                                                                                     (member
                                                                                                                                      x
                                                                                                                                      l)))))))))
                                                                                                                 g7884))))))
                                                                                                  g7883))
                                                                                              x7335
                                                                                              x7336))
                                                                                            (x7881
                                                                                             (f7334
                                                                                              x7335
                                                                                              x7336)))
                                                                                     (x7882
                                                                                      j7332
                                                                                      k7333
                                                                                      x7881))))
                                                                           g7880))))
                                                               g7879))))
                                                   g7878))
                                               'module
                                               'importer
                                               mk-list))
                                             (g7877
                                              (letrec ((x7891
                                                        ((lambda (j7342
                                                                  k7343
                                                                  f7344)
                                                           (letrec ((g7892
                                                                     (lambda (g7340
                                                                              g7341)
                                                                       (letrec ((g7893
                                                                                 (letrec ((x7894
                                                                                           (letrec ((x7897
                                                                                                     (integer?/c
                                                                                                      j7342
                                                                                                      k7343
                                                                                                      g7340))
                                                                                                    (x7895
                                                                                                     (letrec ((x7896
                                                                                                               (listof
                                                                                                                integer?/c)))
                                                                                                       (x7896
                                                                                                        j7342
                                                                                                        k7343
                                                                                                        g7341))))
                                                                                             (f7344
                                                                                              x7897
                                                                                              x7895))))
                                                                                   (boolean?/c
                                                                                    j7342
                                                                                    k7343
                                                                                    x7894))))
                                                                         g7893))))
                                                             g7892))
                                                         'module
                                                         'importer
                                                         mem))
                                                       (x7890 (input))
                                                       (x7889 (input)))
                                                (x7891 x7890 x7889))))
                                      g7877))))
                          g7358))))
              g7356)))
    g7355))
