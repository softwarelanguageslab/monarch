(letrec ((any? (lambda (v) (letrec ((g7361 #t)) g7361)))
         (meta (lambda (v) (letrec ((g7362 v)) g7362)))
         (member
          (lambda (v lst)
            (letrec ((g7363
                      (letrec ((g7364
                                (letrec ((x-e7365 lst))
                                  (match
                                   x-e7365
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7366 (eq? v v1)))
                                       (if x-cnd7366 #t (member v vs)))))))))
                        g7364)))
              g7363)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7367 (lambda (v) (letrec ((g7368 v)) g7368)))) g7367)))
         (nonzero?
          (lambda (v)
            (letrec ((g7369 (letrec ((x7370 (= v 0))) (not x7370)))) g7369))))
  (letrec ((g7371
            (letrec ((g7372
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7373 '())
                                 (g7374
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7375
                                                        (lambda (k j lst)
                                                          (letrec ((g7376
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7377
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7377))
                                                                     lst)))
                                                            g7376))))
                                                g7375)))
                                           (real?/c
                                            (lambda (g7259 g7260 g7261)
                                              (letrec ((g7378
                                                        (letrec ((x-cnd7379
                                                                  (real?
                                                                   g7261)))
                                                          (if x-cnd7379
                                                            g7261
                                                            (blame
                                                             g7259
                                                             'real?)))))
                                                g7378)))
                                           (boolean?/c
                                            (lambda (g7262 g7263 g7264)
                                              (letrec ((g7380
                                                        (letrec ((x-cnd7381
                                                                  (boolean?
                                                                   g7264)))
                                                          (if x-cnd7381
                                                            g7264
                                                            (blame
                                                             g7262
                                                             'boolean?)))))
                                                g7380)))
                                           (number?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7382
                                                        (letrec ((x-cnd7383
                                                                  (number?
                                                                   g7267)))
                                                          (if x-cnd7383
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'number?)))))
                                                g7382)))
                                           (any/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7384
                                                        (letrec ((x-cnd7385
                                                                  ((lambda (v)
                                                                     (letrec ((g7386
                                                                               #t))
                                                                       g7386))
                                                                   g7270)))
                                                          (if x-cnd7385
                                                            g7270
                                                            (blame
                                                             g7268
                                                             '(lambda (v)
                                                                #t))))))
                                                g7384)))
                                           (any?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7387
                                                        (letrec ((x-cnd7388
                                                                  ((lambda (v)
                                                                     (letrec ((g7389
                                                                               #t))
                                                                       g7389))
                                                                   g7273)))
                                                          (if x-cnd7388
                                                            g7273
                                                            (blame
                                                             g7271
                                                             '(lambda (v)
                                                                #t))))))
                                                g7387)))
                                           (cons?/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7390
                                                        (letrec ((x-cnd7391
                                                                  (pair?
                                                                   g7276)))
                                                          (if x-cnd7391
                                                            g7276
                                                            (blame
                                                             g7274
                                                             'pair?)))))
                                                g7390)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7392
                                                        (letrec ((x-cnd7393
                                                                  (pair?
                                                                   g7279)))
                                                          (if x-cnd7393
                                                            g7279
                                                            (blame
                                                             g7277
                                                             'pair?)))))
                                                g7392)))
                                           (integer?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7394
                                                        (letrec ((x-cnd7395
                                                                  (integer?
                                                                   g7282)))
                                                          (if x-cnd7395
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'integer?)))))
                                                g7394)))
                                           (symbol?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7396
                                                        (letrec ((x-cnd7397
                                                                  (symbol?
                                                                   g7285)))
                                                          (if x-cnd7397
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'symbol?)))))
                                                g7396)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7398
                                                        (lambda (k j v)
                                                          (letrec ((g7399
                                                                    (letrec ((x-cnd7400
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7400
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7399))))
                                                g7398)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7401
                                                        (lambda (k j v)
                                                          (letrec ((g7402
                                                                    (letrec ((x-cnd7403
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7403
                                                                        '()
                                                                        (letrec ((x7407
                                                                                  (letrec ((x7408
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7408)))
                                                                                 (x7404
                                                                                  (letrec ((x7406
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7405
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7406
                                                                                     k
                                                                                     j
                                                                                     x7405))))
                                                                          (orig-cons
                                                                           x7407
                                                                           x7404))))))
                                                            g7402))))
                                                g7401)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7409 #t)) g7409)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7410
                                                        (letrec ((x7411
                                                                  (= v 0)))
                                                          (not x7411))))
                                                g7410)))
                                           (nonzero?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7412
                                                        (letrec ((x-cnd7413
                                                                  ((lambda (v)
                                                                     (letrec ((g7414
                                                                               (letrec ((x7415
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7415))))
                                                                       g7414))
                                                                   g7288)))
                                                          (if x-cnd7413
                                                            g7288
                                                            (blame
                                                             g7286
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7412)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7416 v)) g7416)))
                                           (+
                                            (letrec ((xj7289 'server)
                                                     (xk7290 'client))
                                              (letrec ((g7417
                                                        ((lambda (j7293
                                                                  k7294
                                                                  f7295)
                                                           (letrec ((g7419
                                                                     (lambda (g7291
                                                                              g7292)
                                                                       (letrec ((g7420
                                                                                 (letrec ((x7421
                                                                                           (letrec ((x7423
                                                                                                     (number?/c
                                                                                                      j7293
                                                                                                      k7294
                                                                                                      g7291))
                                                                                                    (x7422
                                                                                                     (number?/c
                                                                                                      j7293
                                                                                                      k7294
                                                                                                      g7292)))
                                                                                             (f7295
                                                                                              x7423
                                                                                              x7422))))
                                                                                   (number?/c
                                                                                    j7293
                                                                                    k7294
                                                                                    x7421))))
                                                                         g7420))))
                                                             g7419))
                                                         xj7289
                                                         xk7290
                                                         (lambda (a b)
                                                           (letrec ((g7418
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7418)))))
                                                g7417)))
                                           (-
                                            (letrec ((xj7296 'server)
                                                     (xk7297 'client))
                                              (letrec ((g7424
                                                        ((lambda (j7300
                                                                  k7301
                                                                  f7302)
                                                           (letrec ((g7426
                                                                     (lambda (g7298
                                                                              g7299)
                                                                       (letrec ((g7427
                                                                                 (letrec ((x7428
                                                                                           (letrec ((x7430
                                                                                                     (number?/c
                                                                                                      j7300
                                                                                                      k7301
                                                                                                      g7298))
                                                                                                    (x7429
                                                                                                     (number?/c
                                                                                                      j7300
                                                                                                      k7301
                                                                                                      g7299)))
                                                                                             (f7302
                                                                                              x7430
                                                                                              x7429))))
                                                                                   (number?/c
                                                                                    j7300
                                                                                    k7301
                                                                                    x7428))))
                                                                         g7427))))
                                                             g7426))
                                                         xj7296
                                                         xk7297
                                                         (lambda (a b)
                                                           (letrec ((g7425
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7425)))))
                                                g7424)))
                                           (*
                                            (letrec ((xj7303 'server)
                                                     (xk7304 'client))
                                              (letrec ((g7431
                                                        ((lambda (j7307
                                                                  k7308
                                                                  f7309)
                                                           (letrec ((g7433
                                                                     (lambda (g7305
                                                                              g7306)
                                                                       (letrec ((g7434
                                                                                 (letrec ((x7435
                                                                                           (letrec ((x7437
                                                                                                     (number?/c
                                                                                                      j7307
                                                                                                      k7308
                                                                                                      g7305))
                                                                                                    (x7436
                                                                                                     (number?/c
                                                                                                      j7307
                                                                                                      k7308
                                                                                                      g7306)))
                                                                                             (f7309
                                                                                              x7437
                                                                                              x7436))))
                                                                                   (number?/c
                                                                                    j7307
                                                                                    k7308
                                                                                    x7435))))
                                                                         g7434))))
                                                             g7433))
                                                         xj7303
                                                         xk7304
                                                         (lambda (a b)
                                                           (letrec ((g7432
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7432)))))
                                                g7431)))
                                           (/
                                            (letrec ((xj7310 'server)
                                                     (xk7311 'client))
                                              (letrec ((g7438
                                                        ((lambda (j7314
                                                                  k7315
                                                                  f7316)
                                                           (letrec ((g7440
                                                                     (lambda (g7312
                                                                              g7313)
                                                                       (letrec ((g7441
                                                                                 (letrec ((x7442
                                                                                           (letrec ((x7444
                                                                                                     (number?/c
                                                                                                      j7314
                                                                                                      k7315
                                                                                                      g7312))
                                                                                                    (x7443
                                                                                                     (number?/c
                                                                                                      j7314
                                                                                                      k7315
                                                                                                      g7313)))
                                                                                             (f7316
                                                                                              x7444
                                                                                              x7443))))
                                                                                   (number?/c
                                                                                    j7314
                                                                                    k7315
                                                                                    x7442))))
                                                                         g7441))))
                                                             g7440))
                                                         xj7310
                                                         xk7311
                                                         (lambda (a b)
                                                           (letrec ((g7439
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7439)))))
                                                g7438)))
                                           (car
                                            (letrec ((xj7317 'server)
                                                     (xk7318 'client))
                                              (letrec ((g7445
                                                        ((lambda (j7320
                                                                  k7321
                                                                  f7322)
                                                           (letrec ((g7447
                                                                     (lambda (g7319)
                                                                       (letrec ((g7448
                                                                                 (letrec ((x7449
                                                                                           (letrec ((x7450
                                                                                                     (pair?/c
                                                                                                      j7320
                                                                                                      k7321
                                                                                                      g7319)))
                                                                                             (f7322
                                                                                              x7450))))
                                                                                   (any/c
                                                                                    j7320
                                                                                    k7321
                                                                                    x7449))))
                                                                         g7448))))
                                                             g7447))
                                                         xj7317
                                                         xk7318
                                                         (lambda (p)
                                                           (letrec ((g7446
                                                                     (orig-car
                                                                      p)))
                                                             g7446)))))
                                                g7445)))
                                           (cdr
                                            (letrec ((xj7323 'server)
                                                     (xk7324 'client))
                                              (letrec ((g7451
                                                        ((lambda (j7326
                                                                  k7327
                                                                  f7328)
                                                           (letrec ((g7453
                                                                     (lambda (g7325)
                                                                       (letrec ((g7454
                                                                                 (letrec ((x7455
                                                                                           (letrec ((x7456
                                                                                                     (pair?/c
                                                                                                      j7326
                                                                                                      k7327
                                                                                                      g7325)))
                                                                                             (f7328
                                                                                              x7456))))
                                                                                   (any/c
                                                                                    j7326
                                                                                    k7327
                                                                                    x7455))))
                                                                         g7454))))
                                                             g7453))
                                                         xj7323
                                                         xk7324
                                                         (lambda (p)
                                                           (letrec ((g7452
                                                                     (orig-cdr
                                                                      p)))
                                                             g7452)))))
                                                g7451)))
                                           (cons
                                            (letrec ((xj7329 'server)
                                                     (xk7330 'client))
                                              (letrec ((g7457
                                                        ((lambda (j7333
                                                                  k7334
                                                                  f7335)
                                                           (letrec ((g7459
                                                                     (lambda (g7331
                                                                              g7332)
                                                                       (letrec ((g7460
                                                                                 (letrec ((x7461
                                                                                           (letrec ((x7463
                                                                                                     (any/c
                                                                                                      j7333
                                                                                                      k7334
                                                                                                      g7331))
                                                                                                    (x7462
                                                                                                     (any/c
                                                                                                      j7333
                                                                                                      k7334
                                                                                                      g7332)))
                                                                                             (f7335
                                                                                              x7463
                                                                                              x7462))))
                                                                                   (pair?/c
                                                                                    j7333
                                                                                    k7334
                                                                                    x7461))))
                                                                         g7460))))
                                                             g7459))
                                                         xj7329
                                                         xk7330
                                                         (lambda (a b)
                                                           (letrec ((g7458
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7458)))))
                                                g7457)))
                                           (vector-ref
                                            (letrec ((xj7336 'server)
                                                     (xk7337 'client))
                                              (letrec ((g7464
                                                        ((lambda (j7339
                                                                  k7340
                                                                  f7341)
                                                           (letrec ((g7466
                                                                     (lambda (g7338)
                                                                       (letrec ((g7467
                                                                                 (letrec ((x7468
                                                                                           (letrec ((x7469
                                                                                                     (vector?/c
                                                                                                      j7339
                                                                                                      k7340
                                                                                                      g7338)))
                                                                                             (f7341
                                                                                              x7469))))
                                                                                   (integer?/c
                                                                                    j7339
                                                                                    k7340
                                                                                    x7468))))
                                                                         g7467))))
                                                             g7466))
                                                         xj7336
                                                         xk7337
                                                         (lambda (v i)
                                                           (letrec ((g7465
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7465)))))
                                                g7464)))
                                           (vector-set!
                                            (letrec ((xj7342 'server)
                                                     (xk7343 'client))
                                              (letrec ((g7470
                                                        ((lambda (j7346
                                                                  k7347
                                                                  f7348)
                                                           (letrec ((g7472
                                                                     (lambda (g7344
                                                                              g7345)
                                                                       (letrec ((g7473
                                                                                 (letrec ((x7474
                                                                                           (letrec ((x7476
                                                                                                     (vector?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7344))
                                                                                                    (x7475
                                                                                                     (integer?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7345)))
                                                                                             (f7348
                                                                                              x7476
                                                                                              x7475))))
                                                                                   (any/c
                                                                                    j7346
                                                                                    k7347
                                                                                    x7474))))
                                                                         g7473))))
                                                             g7472))
                                                         xj7342
                                                         xk7343
                                                         (lambda (vec i v)
                                                           (letrec ((g7471
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7471)))))
                                                g7470)))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7477
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7477)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7478
                                                        (letrec ((x7479
                                                                  (letrec ((x7480
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7480))))
                                                          (cdr x7479))))
                                                g7478)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7481
                                                        (letrec ((x7484
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7484)))
                                                       (g7482
                                                        (letrec ((x7485
                                                                  (list? l)))
                                                          (assert x7485)))
                                                       (g7483
                                                        (letrec ((x-cnd7486
                                                                  (null? l)))
                                                          (if x-cnd7486
                                                            '()
                                                            (letrec ((x7489
                                                                      (letrec ((x7490
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7490)))
                                                                     (x7487
                                                                      (letrec ((x7488
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7488))))
                                                              (cons
                                                               x7489
                                                               x7487))))))
                                                g7483)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7491
                                                        (letrec ((x7492
                                                                  (car x)))
                                                          (cdr x7492))))
                                                g7491)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7493
                                                        (letrec ((x7494
                                                                  (letrec ((x7495
                                                                            (letrec ((x7496
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7496))))
                                                                    (cdr
                                                                     x7495))))
                                                          (car x7494))))
                                                g7493)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7497
                                                        (letrec ((x7498
                                                                  (letrec ((x7499
                                                                            (letrec ((x7500
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7500))))
                                                                    (car
                                                                     x7499))))
                                                          (cdr x7498))))
                                                g7497)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7501
                                                        (letrec ((x7504
                                                                  (string?
                                                                   filename)))
                                                          (assert x7504)))
                                                       (g7502
                                                        (letrec ((x7505
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7505)))
                                                       (g7503
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7506
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7507 res))
                                                            g7507))))
                                                g7503)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7508
                                                        (letrec ((x7509
                                                                  (letrec ((x7510
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7510))))
                                                          (car x7509))))
                                                g7508)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7511
                                                        (letrec ((x7512
                                                                  (letrec ((x7513
                                                                            (letrec ((x7514
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7514))))
                                                                    (car
                                                                     x7513))))
                                                          (cdr x7512))))
                                                g7511)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7515
                                                        (letrec ((x7517
                                                                  (list? l)))
                                                          (assert x7517)))
                                                       (g7516
                                                        (letrec ((x-cnd7518
                                                                  (null? l)))
                                                          (if x-cnd7518
                                                            #f
                                                            (letrec ((x-cnd7519
                                                                      (letrec ((x7520
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7520
                                                                         k))))
                                                              (if x-cnd7519
                                                                (car l)
                                                                (letrec ((x7521
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7521))))))))
                                                g7516)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7522
                                                        (letrec ((x7523
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7523))))
                                                g7522)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7524
                                                        (letrec ((x7526
                                                                  (list? l)))
                                                          (assert x7526)))
                                                       (g7525
                                                        (letrec ((x-cnd7527
                                                                  (null? l)))
                                                          (if x-cnd7527
                                                            ""
                                                            (letrec ((x7530
                                                                      (letrec ((x7531
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7531)))
                                                                     (x7528
                                                                      (letrec ((x7529
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7529))))
                                                              (string-append
                                                               x7530
                                                               x7528))))))
                                                g7525)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7532
                                                        (letrec ((x7535
                                                                  (char? c1)))
                                                          (assert x7535)))
                                                       (g7533
                                                        (letrec ((x7536
                                                                  (char? c2)))
                                                          (assert x7536)))
                                                       (g7534
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7537
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7537))))
                                                g7534)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7538
                                                        (letrec ((x7539
                                                                  (letrec ((x7540
                                                                            (letrec ((x7541
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7541))))
                                                                    (cdr
                                                                     x7540))))
                                                          (cdr x7539))))
                                                g7538)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7542
                                                        (letrec ((x7545
                                                                  (list? l)))
                                                          (assert x7545)))
                                                       (g7543
                                                        (letrec ((x7546
                                                                  (number?)))
                                                          (assert x7546)))
                                                       (g7544
                                                        (letrec ((x-cnd7547
                                                                  (zero? k)))
                                                          (if x-cnd7547
                                                            x
                                                            (letrec ((x7549
                                                                      (cdr x))
                                                                     (x7548
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7549
                                                               x7548))))))
                                                g7544)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7550 '())) g7550)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7551
                                                        (letrec ((x-cnd7552
                                                                  (letrec ((x7553
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7553))))
                                                          (if x-cnd7552
                                                            (letrec ((x7554
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7554))
                                                            #f))))
                                                g7551)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7555
                                                        (letrec ((x7557
                                                                  (number? x)))
                                                          (assert x7557)))
                                                       (g7556
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7558
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7559
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7559)))))
                                                            g7558))))
                                                g7556)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7560
                                                        (letrec ((val7244
                                                                  (letrec ((x7561
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7561
                                                                     9))))
                                                          (letrec ((g7562
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7563
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7563
                                                                                   10))))
                                                                        (letrec ((g7564
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7565
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7565
                                                                                       32)))))
                                                                          g7564)))))
                                                            g7562))))
                                                g7560)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7566
                                                        (letrec ((x7567
                                                                  (letrec ((x7568
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7568))))
                                                          (cdr x7567))))
                                                g7566)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7569
                                                        (letrec ((x7571
                                                                  (number? x)))
                                                          (assert x7571)))
                                                       (g7570 (> x 0)))
                                                g7570)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7572 #f)) g7572)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7573
                                                        (letrec ((x7574
                                                                  (cdr x)))
                                                          (cdr x7574))))
                                                g7573)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7575
                                                        (letrec ((x7577
                                                                  (number? x)))
                                                          (assert x7577)))
                                                       (g7576
                                                        (letrec ((x-cnd7578
                                                                  (< x 0)))
                                                          (if x-cnd7578
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7576)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7579
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7580
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7581
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7581
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7582
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7583
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7583
                                                                                                  (letrec ((x-cnd7584
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7584
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7585
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7586
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7586
                                                                                                                (letrec ((x-cnd7587
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7587
                                                                                                                    (letrec ((x-cnd7588
                                                                                                                              (letrec ((x7590
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7589
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7590
                                                                                                                                 x7589))))
                                                                                                                      (if x-cnd7588
                                                                                                                        (letrec ((x7592
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7591
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7592
                                                                                                                           x7591))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7593
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7594
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7594
                                                                                                                    (letrec ((x-cnd7595
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7595
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7596
                                                                                                                                    (letrec ((x-cnd7597
                                                                                                                                              (letrec ((x7598
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7598
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7597
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7599
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7600
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7601
                                                                                                                                                                                      (letrec ((x7603
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7602
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7603
                                                                                                                                                                                         x7602))))
                                                                                                                                                                              (if x-cnd7601
                                                                                                                                                                                (letrec ((x7604
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7604))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7600))))
                                                                                                                                                      g7599))))
                                                                                                                                          (letrec ((g7605
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7605))
                                                                                                                                        #f))))
                                                                                                                            g7596))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7593)))))
                                                                                        g7585)))))
                                                                          g7582)))))
                                                            g7580))))
                                                g7579)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7606
                                                        (letrec ((x7607
                                                                  (letrec ((x7608
                                                                            (letrec ((x7609
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7609))))
                                                                    (car
                                                                     x7608))))
                                                          (cdr x7607))))
                                                g7606)))
                                           (caaddr
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
                                                          (car x7611))))
                                                g7610)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7614 (eq? x y)))
                                                g7614)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7615
                                                        (letrec ((x7617
                                                                  (number? x)))
                                                          (assert x7617)))
                                                       (g7616
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7618
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7619
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7619)))))
                                                            g7618))))
                                                g7616)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7620
                                                        (letrec ((x7623
                                                                  (string?
                                                                   filename)))
                                                          (assert x7623)))
                                                       (g7621
                                                        (letrec ((x7624
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7624)))
                                                       (g7622
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7625
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7626 res))
                                                            g7626))))
                                                g7622)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7627 (cons x '())))
                                                g7627)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7628
                                                        (letrec ((x7631
                                                                  (char? c1)))
                                                          (assert x7631)))
                                                       (g7629
                                                        (letrec ((x7632
                                                                  (char? c2)))
                                                          (assert x7632)))
                                                       (g7630
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7633
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7633))))
                                                g7630)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7634
                                                        (letrec ((x7635
                                                                  (letrec ((x7636
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7636))))
                                                          (cdr x7635))))
                                                g7634)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7637
                                                        (letrec ((x7638
                                                                  (letrec ((x7639
                                                                            (letrec ((x7640
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7640))))
                                                                    (car
                                                                     x7639))))
                                                          (cdr x7638))))
                                                g7637)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7641
                                                        (letrec ((x7642
                                                                  (letrec ((x7643
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7643))))
                                                          (car x7642))))
                                                g7641)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7644
                                                        (letrec ((x7645
                                                                  (letrec ((x7646
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7646))))
                                                          (car x7645))))
                                                g7644)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7647
                                                        (letrec ((x7650
                                                                  (char? c1)))
                                                          (assert x7650)))
                                                       (g7648
                                                        (letrec ((x7651
                                                                  (char? c2)))
                                                          (assert x7651)))
                                                       (g7649
                                                        (letrec ((x7652
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7652))))
                                                g7649)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7653
                                                        (letrec ((x7654
                                                                  (letrec ((x7655
                                                                            (letrec ((x7656
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7656))))
                                                                    (car
                                                                     x7655))))
                                                          (car x7654))))
                                                g7653)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7657
                                                        (letrec ((x7659
                                                                  (number? x)))
                                                          (assert x7659)))
                                                       (g7658 (< x 0)))
                                                g7658)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7660 (memq e l)))
                                                g7660)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7661
                                                        (letrec ((x7662
                                                                  (letrec ((x7663
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7663))))
                                                          (car x7662))))
                                                g7661)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7664 '())) g7664)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7665
                                                        (letrec ((x7667
                                                                  (list? l)))
                                                          (assert x7667)))
                                                       (g7666
                                                        (letrec ((x-cnd7668
                                                                  (null? l)))
                                                          (if x-cnd7668
                                                            '()
                                                            (letrec ((x7671
                                                                      (letrec ((x7672
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7672)))
                                                                     (x7669
                                                                      (letrec ((x7670
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7670))))
                                                              (append
                                                               x7671
                                                               x7669))))))
                                                g7666)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7673
                                                        (letrec ((x7674
                                                                  (letrec ((x7675
                                                                            (letrec ((x7676
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7676))))
                                                                    (car
                                                                     x7675))))
                                                          (car x7674))))
                                                g7673)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7677
                                                        (letrec ((x7678
                                                                  (letrec ((x7679
                                                                            (letrec ((x7680
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7680))))
                                                                    (cdr
                                                                     x7679))))
                                                          (cdr x7678))))
                                                g7677)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7681
                                                        (letrec ((x7683
                                                                  (number? x)))
                                                          (assert x7683)))
                                                       (g7682
                                                        (letrec ((x7684
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7684))))
                                                g7682)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7685
                                                        (letrec ((x7686
                                                                  (letrec ((x7687
                                                                            (letrec ((x7688
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7688))))
                                                                    (car
                                                                     x7687))))
                                                          (car x7686))))
                                                g7685)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7689
                                                        (letrec ((x7692
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7692)))
                                                       (g7690
                                                        (letrec ((x7693
                                                                  (list?
                                                                   args)))
                                                          (assert x7693)))
                                                       (g7691
                                                        (letrec ((x-cnd7694
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7694
                                                            (letrec ((g7695
                                                                      (proc)))
                                                              g7695)
                                                            (letrec ((x-cnd7696
                                                                      (letrec ((x7697
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7697))))
                                                              (if x-cnd7696
                                                                (letrec ((g7698
                                                                          (letrec ((x7699
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7699))))
                                                                  g7698)
                                                                (letrec ((x-cnd7700
                                                                          (letrec ((x7701
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7701))))
                                                                  (if x-cnd7700
                                                                    (letrec ((g7702
                                                                              (letrec ((x7704
                                                                                        (car
                                                                                         args))
                                                                                       (x7703
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7704
                                                                                 x7703))))
                                                                      g7702)
                                                                    (letrec ((x-cnd7705
                                                                              (letrec ((x7706
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7706))))
                                                                      (if x-cnd7705
                                                                        (letrec ((g7707
                                                                                  (letrec ((x7710
                                                                                            (car
                                                                                             args))
                                                                                           (x7709
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7708
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7710
                                                                                     x7709
                                                                                     x7708))))
                                                                          g7707)
                                                                        (letrec ((x-cnd7711
                                                                                  (letrec ((x7712
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7712))))
                                                                          (if x-cnd7711
                                                                            (letrec ((g7713
                                                                                      (letrec ((x7717
                                                                                                (car
                                                                                                 args))
                                                                                               (x7716
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7715
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7714
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7717
                                                                                         x7716
                                                                                         x7715
                                                                                         x7714))))
                                                                              g7713)
                                                                            (letrec ((x-cnd7718
                                                                                      (letrec ((x7719
                                                                                                (letrec ((x7720
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7720))))
                                                                                        (null?
                                                                                         x7719))))
                                                                              (if x-cnd7718
                                                                                (letrec ((g7721
                                                                                          (letrec ((x7727
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7726
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7725
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7724
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7722
                                                                                                    (letrec ((x7723
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7723))))
                                                                                            (proc
                                                                                             x7727
                                                                                             x7726
                                                                                             x7725
                                                                                             x7724
                                                                                             x7722))))
                                                                                  g7721)
                                                                                (letrec ((x-cnd7728
                                                                                          (letrec ((x7729
                                                                                                    (letrec ((x7730
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7730))))
                                                                                            (null?
                                                                                             x7729))))
                                                                                  (if x-cnd7728
                                                                                    (letrec ((g7731
                                                                                              (letrec ((x7739
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7738
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7737
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7736
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7734
                                                                                                        (letrec ((x7735
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7735)))
                                                                                                       (x7732
                                                                                                        (letrec ((x7733
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7733))))
                                                                                                (proc
                                                                                                 x7739
                                                                                                 x7738
                                                                                                 x7737
                                                                                                 x7736
                                                                                                 x7734
                                                                                                 x7732))))
                                                                                      g7731)
                                                                                    (letrec ((x-cnd7740
                                                                                              (letrec ((x7741
                                                                                                        (letrec ((x7742
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7742))))
                                                                                                (null?
                                                                                                 x7741))))
                                                                                      (if x-cnd7740
                                                                                        (letrec ((g7743
                                                                                                  (letrec ((x7753
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7752
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7751
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7750
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7748
                                                                                                            (letrec ((x7749
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7749)))
                                                                                                           (x7746
                                                                                                            (letrec ((x7747
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7747)))
                                                                                                           (x7744
                                                                                                            (letrec ((x7745
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7745))))
                                                                                                    (proc
                                                                                                     x7753
                                                                                                     x7752
                                                                                                     x7751
                                                                                                     x7750
                                                                                                     x7748
                                                                                                     x7746
                                                                                                     x7744))))
                                                                                          g7743)
                                                                                        (letrec ((g7754
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7754)))))))))))))))))))
                                                g7691)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7755
                                                        (letrec ((x7757
                                                                  (list? l)))
                                                          (assert x7757)))
                                                       (g7756
                                                        (letrec ((x-cnd7758
                                                                  (null? l)))
                                                          (if x-cnd7758
                                                            #f
                                                            (letrec ((x-cnd7759
                                                                      (letrec ((x7760
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7760
                                                                         e))))
                                                              (if x-cnd7759
                                                                l
                                                                (letrec ((x7761
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7761))))))))
                                                g7756)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7762
                                                        (letrec ((x7763
                                                                  (letrec ((x7764
                                                                            (letrec ((x7765
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7765))))
                                                                    (cdr
                                                                     x7764))))
                                                          (cdr x7763))))
                                                g7762)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7766
                                                        (letrec ((x7767
                                                                  (letrec ((x7768
                                                                            (letrec ((x7769
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7769))))
                                                                    (cdr
                                                                     x7768))))
                                                          (car x7767))))
                                                g7766)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7770 (random 42)))
                                                g7770)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7771
                                                        (letrec ((x7773
                                                                  (number? x)))
                                                          (assert x7773)))
                                                       (g7772 (= x 0)))
                                                g7772)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7774
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7775
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7775))))
                                                g7774)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7776
                                                        (letrec ((x7777
                                                                  (cdr x)))
                                                          (car x7777))))
                                                g7776)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7778
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd7779
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7779
                                                                      (letrec ((x7780
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7780))
                                                                      #f))))
                                                          (letrec ((g7781
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g7781))))
                                                g7778)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7782
                                                        (letrec ((x7783
                                                                  (letrec ((x7784
                                                                            (letrec ((x7785
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7785))))
                                                                    (cdr
                                                                     x7784))))
                                                          (cdr x7783))))
                                                g7782)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7786
                                                        (letrec ((x-cnd7787
                                                                  (letrec ((x7788
                                                                            #\0))
                                                                    (char<=?
                                                                     x7788
                                                                     c))))
                                                          (if x-cnd7787
                                                            (letrec ((x7789
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7789))
                                                            #f))))
                                                g7786)))
                                           (__toplevel_cons cons)
                                           (assv
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
                                                                        (eqv?
                                                                         x7795
                                                                         k))))
                                                              (if x-cnd7794
                                                                (car l)
                                                                (letrec ((x7796
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7796))))))))
                                                g7791)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7797 (if x #f #t)))
                                                g7797)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7798 (append l1 l2)))
                                                g7798)))
                                           (memq
                                            (lambda (e l)
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
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7804
                                                                         e))))
                                                              (if x-cnd7803
                                                                l
                                                                (letrec ((x7805
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7805))))))))
                                                g7800)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7806
                                                        (letrec ((x7807
                                                                  (letrec ((x7808
                                                                            (letrec ((x7809
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7809))))
                                                                    (cdr
                                                                     x7808))))
                                                          (car x7807))))
                                                g7806)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7810
                                                        (letrec ((x7812
                                                                  (list? l)))
                                                          (assert x7812)))
                                                       (g7811
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7813
                                                                              (letrec ((x-cnd7814
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7814
                                                                                  0
                                                                                  (letrec ((x7815
                                                                                            (letrec ((x7816
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7816))))
                                                                                    (+
                                                                                     1
                                                                                     x7815))))))
                                                                      g7813))))
                                                          (letrec ((g7817
                                                                    (rec l)))
                                                            g7817))))
                                                g7811)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7818
                                                        (letrec ((x7821
                                                                  (char? c1)))
                                                          (assert x7821)))
                                                       (g7819
                                                        (letrec ((x7822
                                                                  (char? c2)))
                                                          (assert x7822)))
                                                       (g7820
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7823
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7823))))
                                                g7820)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7824
                                                        (letrec ((x7825
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7825))))
                                                g7824)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7826
                                                        (letrec ((x7827
                                                                  (letrec ((x7828
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7828))))
                                                          (cdr x7827))))
                                                g7826)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7829
                                                        (letrec ((x7831
                                                                  (list? l)))
                                                          (assert x7831)))
                                                       (g7830
                                                        (letrec ((x-cnd7832
                                                                  (null? l)))
                                                          (if x-cnd7832
                                                            #f
                                                            (letrec ((x-cnd7833
                                                                      (letrec ((x7834
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7834
                                                                         k))))
                                                              (if x-cnd7833
                                                                (car l)
                                                                (letrec ((x7835
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7835))))))))
                                                g7830)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7836
                                                        (letrec ((x7837
                                                                  (car x)))
                                                          (car x7837))))
                                                g7836)))
                                           (char>?
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
                                                        (letrec ((x7843
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7843))))
                                                g7840)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7844
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7845
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7845))))
                                                g7844)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7846
                                                        (letrec ((x7849
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7849)))
                                                       (g7847
                                                        (letrec ((x7850
                                                                  (list? l)))
                                                          (assert x7850)))
                                                       (g7848
                                                        (letrec ((x-cnd7851
                                                                  (null? l)))
                                                          (if x-cnd7851
                                                            #t
                                                            (letrec ((x-cnd7852
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7852
                                                                (letrec ((g7853
                                                                          (letrec ((x7855
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7855)))
                                                                         (g7854
                                                                          (letrec ((x7856
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7856))))
                                                                  g7854)
                                                                '()))))))
                                                g7848)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7857
                                                        (letrec ((x7859
                                                                  (number? x)))
                                                          (assert x7859)))
                                                       (g7858
                                                        (letrec ((x-cnd7860
                                                                  (< x 0)))
                                                          (if x-cnd7860
                                                            (- 0 x)
                                                            x))))
                                                g7858)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7861
                                                        (letrec ((x7864
                                                                  (char? c1)))
                                                          (assert x7864)))
                                                       (g7862
                                                        (letrec ((x7865
                                                                  (char? c2)))
                                                          (assert x7865)))
                                                       (g7863
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7866
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7866))))
                                                g7863)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7867
                                                        (letrec ((x7868
                                                                  (letrec ((x7869
                                                                            (letrec ((x7870
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7870))))
                                                                    (cdr
                                                                     x7869))))
                                                          (car x7868))))
                                                g7867)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7871 #f)) g7871)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7872
                                                        (letrec ((x7874
                                                                  (letrec ((x7875
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7875)))
                                                                 (x7873
                                                                  (gcd m n)))
                                                          (/ x7874 x7873))))
                                                g7872)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7876
                                                        (letrec ((x7878
                                                                  (number? x)))
                                                          (assert x7878)))
                                                       (g7877
                                                        (letrec ((x7879
                                                                  (<= x y)))
                                                          (not x7879))))
                                                g7877)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7880
                                                        (letrec ((x7884
                                                                  (list? l)))
                                                          (assert x7884)))
                                                       (g7881
                                                        (letrec ((x7885
                                                                  (number?
                                                                   index)))
                                                          (assert x7885)))
                                                       (g7882
                                                        (letrec ((x7886
                                                                  (letrec ((x7887
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7887))))
                                                          (assert x7886)))
                                                       (g7883
                                                        (letrec ((x-cnd7888
                                                                  (= index 0)))
                                                          (if x-cnd7888
                                                            (car l)
                                                            (letrec ((x7890
                                                                      (cdr l))
                                                                     (x7889
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7890
                                                               x7889))))))
                                                g7883)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7891
                                                        (letrec ((x-cnd7892
                                                                  (= b 0)))
                                                          (if x-cnd7892
                                                            a
                                                            (letrec ((x7893
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7893))))))
                                                g7891)))
                                           (lock
                                            (lambda (st)
                                              (letrec ((g7894 1)) g7894)))
                                           (unlock
                                            (lambda (st)
                                              (letrec ((g7895 0)) g7895)))
                                           (f
                                            (lambda (n st)
                                              (letrec ((g7896
                                                        (letrec ((x-cnd7897
                                                                  (> n 0)))
                                                          (if x-cnd7897
                                                            (lock st)
                                                            st))))
                                                g7896)))
                                           (g
                                            (lambda (n st)
                                              (letrec ((g7898
                                                        (letrec ((x-cnd7899
                                                                  (> n 0)))
                                                          (if x-cnd7899
                                                            (unlock st)
                                                            st))))
                                                g7898)))
                                           (main
                                            (lambda (n)
                                              (letrec ((g7900
                                                        (letrec ((x7901
                                                                  (f n 0)))
                                                          (g n x7901))))
                                                g7900))))
                                    (letrec ((g7902
                                              (letrec ((x7904
                                                        (letrec ((xj7349
                                                                  (letrec ((x7905
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x7905)))
                                                                 (xk7350
                                                                  (letrec ((x7906
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x7906))))
                                                          (letrec ((g7907
                                                                    ((lambda (j7352
                                                                              k7353
                                                                              f7354)
                                                                       (letrec ((g7908
                                                                                 (lambda (g7351)
                                                                                   (letrec ((g7909
                                                                                             (letrec ((x7910
                                                                                                       (letrec ((x7911
                                                                                                                 (integer?/c
                                                                                                                  j7352
                                                                                                                  k7353
                                                                                                                  g7351)))
                                                                                                         (f7354
                                                                                                          x7911))))
                                                                                               ((lambda (g7358
                                                                                                         g7359
                                                                                                         g7360)
                                                                                                  (letrec ((g7912
                                                                                                            (letrec ((x-cnd7913
                                                                                                                      ((lambda (v7357)
                                                                                                                         (letrec ((g7914
                                                                                                                                   (eq?
                                                                                                                                    0
                                                                                                                                    v7357)))
                                                                                                                           g7914))
                                                                                                                       g7360)))
                                                                                                              (if x-cnd7913
                                                                                                                g7360
                                                                                                                (blame
                                                                                                                 g7358
                                                                                                                 '(lambda (v7357)
                                                                                                                    (eq?
                                                                                                                     0
                                                                                                                     v7357)))))))
                                                                                                    g7912))
                                                                                                j7352
                                                                                                k7353
                                                                                                x7910))))
                                                                                     g7909))))
                                                                         g7908))
                                                                     xj7349
                                                                     xk7350
                                                                     main)))
                                                            g7907)))
                                                       (x7903 (input)))
                                                (x7904 x7903))))
                                      g7902))))
                          g7374))))
              g7372)))
    g7371))
