(letrec ((any? (lambda (v) (letrec ((g7328 #t)) g7328)))
         (meta (lambda (v) (letrec ((g7329 v)) g7329)))
         (member
          (lambda (v lst)
            (letrec ((g7330
                      (letrec ((g7331
                                (letrec ((x-e7332 lst))
                                  (match
                                   x-e7332
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7333 (eq? v v1)))
                                       (if x-cnd7333 #t (member v vs)))))))))
                        g7331)))
              g7330)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7334 (lambda (v) (letrec ((g7335 v)) g7335)))) g7334)))
         (nonzero?
          (lambda (v)
            (letrec ((g7336 (letrec ((x7337 (= v 0))) (not x7337)))) g7336))))
  (letrec ((g7338
            (letrec ((g7339
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7340 '())
                                 (g7341
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7342
                                                        (lambda (k j lst)
                                                          (letrec ((g7343
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7344
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7344))
                                                                     lst)))
                                                            g7343))))
                                                g7342)))
                                           (real?/c
                                            (lambda (g7259 g7260 g7261)
                                              (letrec ((g7345
                                                        (letrec ((x-cnd7346
                                                                  (real?
                                                                   g7261)))
                                                          (if x-cnd7346
                                                            g7261
                                                            (blame
                                                             g7259
                                                             'real?)))))
                                                g7345)))
                                           (boolean?/c
                                            (lambda (g7262 g7263 g7264)
                                              (letrec ((g7347
                                                        (letrec ((x-cnd7348
                                                                  (boolean?
                                                                   g7264)))
                                                          (if x-cnd7348
                                                            g7264
                                                            (blame
                                                             g7262
                                                             'boolean?)))))
                                                g7347)))
                                           (number?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7349
                                                        (letrec ((x-cnd7350
                                                                  (number?
                                                                   g7267)))
                                                          (if x-cnd7350
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'number?)))))
                                                g7349)))
                                           (any/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7351
                                                        (letrec ((x-cnd7352
                                                                  ((lambda (v)
                                                                     (letrec ((g7353
                                                                               #t))
                                                                       g7353))
                                                                   g7270)))
                                                          (if x-cnd7352
                                                            g7270
                                                            (blame
                                                             g7268
                                                             '(lambda (v)
                                                                #t))))))
                                                g7351)))
                                           (any?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7354
                                                        (letrec ((x-cnd7355
                                                                  ((lambda (v)
                                                                     (letrec ((g7356
                                                                               #t))
                                                                       g7356))
                                                                   g7273)))
                                                          (if x-cnd7355
                                                            g7273
                                                            (blame
                                                             g7271
                                                             '(lambda (v)
                                                                #t))))))
                                                g7354)))
                                           (cons?/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7357
                                                        (letrec ((x-cnd7358
                                                                  (pair?
                                                                   g7276)))
                                                          (if x-cnd7358
                                                            g7276
                                                            (blame
                                                             g7274
                                                             'pair?)))))
                                                g7357)))
                                           (pair?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7359
                                                        (letrec ((x-cnd7360
                                                                  (pair?
                                                                   g7279)))
                                                          (if x-cnd7360
                                                            g7279
                                                            (blame
                                                             g7277
                                                             'pair?)))))
                                                g7359)))
                                           (integer?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7361
                                                        (letrec ((x-cnd7362
                                                                  (integer?
                                                                   g7282)))
                                                          (if x-cnd7362
                                                            g7282
                                                            (blame
                                                             g7280
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
                                            (lambda (g7283 g7284 g7285)
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
                                                                   g7285)))
                                                          (if x-cnd7378
                                                            g7285
                                                            (blame
                                                             g7283
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7377)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7381 v)) g7381)))
                                           (+
                                            ((lambda (j7288 k7289 f7290)
                                               (letrec ((g7383
                                                         (lambda (g7286 g7287)
                                                           (letrec ((g7384
                                                                     (letrec ((x7385
                                                                               (letrec ((x7387
                                                                                         (number?/c
                                                                                          j7288
                                                                                          k7289
                                                                                          g7286))
                                                                                        (x7386
                                                                                         (number?/c
                                                                                          j7288
                                                                                          k7289
                                                                                          g7287)))
                                                                                 (f7290
                                                                                  x7387
                                                                                  x7386))))
                                                                       (number?/c
                                                                        j7288
                                                                        k7289
                                                                        x7385))))
                                                             g7384))))
                                                 g7383))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7382 (orig-+ a b)))
                                                 g7382))))
                                           (-
                                            ((lambda (j7293 k7294 f7295)
                                               (letrec ((g7389
                                                         (lambda (g7291 g7292)
                                                           (letrec ((g7390
                                                                     (letrec ((x7391
                                                                               (letrec ((x7393
                                                                                         (number?/c
                                                                                          j7293
                                                                                          k7294
                                                                                          g7291))
                                                                                        (x7392
                                                                                         (number?/c
                                                                                          j7293
                                                                                          k7294
                                                                                          g7292)))
                                                                                 (f7295
                                                                                  x7393
                                                                                  x7392))))
                                                                       (number?/c
                                                                        j7293
                                                                        k7294
                                                                        x7391))))
                                                             g7390))))
                                                 g7389))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7388 (orig-- a b)))
                                                 g7388))))
                                           (*
                                            ((lambda (j7298 k7299 f7300)
                                               (letrec ((g7395
                                                         (lambda (g7296 g7297)
                                                           (letrec ((g7396
                                                                     (letrec ((x7397
                                                                               (letrec ((x7399
                                                                                         (number?/c
                                                                                          j7298
                                                                                          k7299
                                                                                          g7296))
                                                                                        (x7398
                                                                                         (number?/c
                                                                                          j7298
                                                                                          k7299
                                                                                          g7297)))
                                                                                 (f7300
                                                                                  x7399
                                                                                  x7398))))
                                                                       (number?/c
                                                                        j7298
                                                                        k7299
                                                                        x7397))))
                                                             g7396))))
                                                 g7395))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7394 (orig-* a b)))
                                                 g7394))))
                                           (/
                                            ((lambda (j7303 k7304 f7305)
                                               (letrec ((g7401
                                                         (lambda (g7301 g7302)
                                                           (letrec ((g7402
                                                                     (letrec ((x7403
                                                                               (letrec ((x7405
                                                                                         (number?/c
                                                                                          j7303
                                                                                          k7304
                                                                                          g7301))
                                                                                        (x7404
                                                                                         (number?/c
                                                                                          j7303
                                                                                          k7304
                                                                                          g7302)))
                                                                                 (f7305
                                                                                  x7405
                                                                                  x7404))))
                                                                       (number?/c
                                                                        j7303
                                                                        k7304
                                                                        x7403))))
                                                             g7402))))
                                                 g7401))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7400 (orig-/ a b)))
                                                 g7400))))
                                           (car
                                            ((lambda (j7307 k7308 f7309)
                                               (letrec ((g7407
                                                         (lambda (g7306)
                                                           (letrec ((g7408
                                                                     (letrec ((x7409
                                                                               (letrec ((x7410
                                                                                         (pair?/c
                                                                                          j7307
                                                                                          k7308
                                                                                          g7306)))
                                                                                 (f7309
                                                                                  x7410))))
                                                                       (any/c
                                                                        j7307
                                                                        k7308
                                                                        x7409))))
                                                             g7408))))
                                                 g7407))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7406 (orig-car p)))
                                                 g7406))))
                                           (cdr
                                            ((lambda (j7311 k7312 f7313)
                                               (letrec ((g7412
                                                         (lambda (g7310)
                                                           (letrec ((g7413
                                                                     (letrec ((x7414
                                                                               (letrec ((x7415
                                                                                         (pair?/c
                                                                                          j7311
                                                                                          k7312
                                                                                          g7310)))
                                                                                 (f7313
                                                                                  x7415))))
                                                                       (any/c
                                                                        j7311
                                                                        k7312
                                                                        x7414))))
                                                             g7413))))
                                                 g7412))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7411 (orig-cdr p)))
                                                 g7411))))
                                           (cons
                                            ((lambda (j7316 k7317 f7318)
                                               (letrec ((g7417
                                                         (lambda (g7314 g7315)
                                                           (letrec ((g7418
                                                                     (letrec ((x7419
                                                                               (letrec ((x7421
                                                                                         (any/c
                                                                                          j7316
                                                                                          k7317
                                                                                          g7314))
                                                                                        (x7420
                                                                                         (any/c
                                                                                          j7316
                                                                                          k7317
                                                                                          g7315)))
                                                                                 (f7318
                                                                                  x7421
                                                                                  x7420))))
                                                                       (pair?/c
                                                                        j7316
                                                                        k7317
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
                                            ((lambda (j7320 k7321 f7322)
                                               (letrec ((g7423
                                                         (lambda (g7319)
                                                           (letrec ((g7424
                                                                     (letrec ((x7425
                                                                               (letrec ((x7426
                                                                                         (vector?/c
                                                                                          j7320
                                                                                          k7321
                                                                                          g7319)))
                                                                                 (f7322
                                                                                  x7426))))
                                                                       (integer?/c
                                                                        j7320
                                                                        k7321
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
                                            ((lambda (j7325 k7326 f7327)
                                               (letrec ((g7428
                                                         (lambda (g7323 g7324)
                                                           (letrec ((g7429
                                                                     (letrec ((x7430
                                                                               (letrec ((x7432
                                                                                         (vector?/c
                                                                                          j7325
                                                                                          k7326
                                                                                          g7323))
                                                                                        (x7431
                                                                                         (integer?/c
                                                                                          j7325
                                                                                          k7326
                                                                                          g7324)))
                                                                                 (f7327
                                                                                  x7432
                                                                                  x7431))))
                                                                       (any/c
                                                                        j7325
                                                                        k7326
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
                                                        (letrec ((x-cnd7657
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7657
                                                            (letrec ((g7658
                                                                      (proc)))
                                                              g7658)
                                                            (letrec ((x-cnd7659
                                                                      (letrec ((x7660
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7660))))
                                                              (if x-cnd7659
                                                                (letrec ((g7661
                                                                          (letrec ((x7662
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7662))))
                                                                  g7661)
                                                                (letrec ((x-cnd7663
                                                                          (letrec ((x7664
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7664))))
                                                                  (if x-cnd7663
                                                                    (letrec ((g7665
                                                                              (letrec ((x7667
                                                                                        (car
                                                                                         args))
                                                                                       (x7666
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7667
                                                                                 x7666))))
                                                                      g7665)
                                                                    (letrec ((x-cnd7668
                                                                              (letrec ((x7669
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7669))))
                                                                      (if x-cnd7668
                                                                        (letrec ((g7670
                                                                                  (letrec ((x7673
                                                                                            (car
                                                                                             args))
                                                                                           (x7672
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7671
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7673
                                                                                     x7672
                                                                                     x7671))))
                                                                          g7670)
                                                                        (letrec ((x-cnd7674
                                                                                  (letrec ((x7675
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7675))))
                                                                          (if x-cnd7674
                                                                            (letrec ((g7676
                                                                                      (letrec ((x7680
                                                                                                (car
                                                                                                 args))
                                                                                               (x7679
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7678
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7677
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7680
                                                                                         x7679
                                                                                         x7678
                                                                                         x7677))))
                                                                              g7676)
                                                                            (letrec ((x-cnd7681
                                                                                      (letrec ((x7682
                                                                                                (letrec ((x7683
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7683))))
                                                                                        (null?
                                                                                         x7682))))
                                                                              (if x-cnd7681
                                                                                (letrec ((g7684
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
                                                                                                       x7686))))
                                                                                            (proc
                                                                                             x7690
                                                                                             x7689
                                                                                             x7688
                                                                                             x7687
                                                                                             x7685))))
                                                                                  g7684)
                                                                                (letrec ((x-cnd7691
                                                                                          (letrec ((x7692
                                                                                                    (letrec ((x7693
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7693))))
                                                                                            (null?
                                                                                             x7692))))
                                                                                  (if x-cnd7691
                                                                                    (letrec ((g7694
                                                                                              (letrec ((x7702
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7701
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7700
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7699
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7697
                                                                                                        (letrec ((x7698
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7698)))
                                                                                                       (x7695
                                                                                                        (letrec ((x7696
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7696))))
                                                                                                (proc
                                                                                                 x7702
                                                                                                 x7701
                                                                                                 x7700
                                                                                                 x7699
                                                                                                 x7697
                                                                                                 x7695))))
                                                                                      g7694)
                                                                                    (letrec ((x-cnd7703
                                                                                              (letrec ((x7704
                                                                                                        (letrec ((x7705
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7705))))
                                                                                                (null?
                                                                                                 x7704))))
                                                                                      (if x-cnd7703
                                                                                        (letrec ((g7706
                                                                                                  (letrec ((x7716
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7715
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7714
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7713
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7711
                                                                                                            (letrec ((x7712
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7712)))
                                                                                                           (x7709
                                                                                                            (letrec ((x7710
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7710)))
                                                                                                           (x7707
                                                                                                            (letrec ((x7708
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7708))))
                                                                                                    (proc
                                                                                                     x7716
                                                                                                     x7715
                                                                                                     x7714
                                                                                                     x7713
                                                                                                     x7711
                                                                                                     x7709
                                                                                                     x7707))))
                                                                                          g7706)
                                                                                        (letrec ((g7717
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7717)))))))))))))))))))
                                                g7654)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7718
                                                        (letrec ((x7720
                                                                  (list? l)))
                                                          (assert x7720)))
                                                       (g7719
                                                        (letrec ((x-cnd7721
                                                                  (null? l)))
                                                          (if x-cnd7721
                                                            #f
                                                            (letrec ((x-cnd7722
                                                                      (letrec ((x7723
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7723
                                                                         e))))
                                                              (if x-cnd7722
                                                                l
                                                                (letrec ((x7724
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7724))))))))
                                                g7719)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7725
                                                        (letrec ((x7726
                                                                  (letrec ((x7727
                                                                            (letrec ((x7728
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7728))))
                                                                    (cdr
                                                                     x7727))))
                                                          (cdr x7726))))
                                                g7725)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7729
                                                        (letrec ((x7730
                                                                  (letrec ((x7731
                                                                            (letrec ((x7732
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7732))))
                                                                    (cdr
                                                                     x7731))))
                                                          (car x7730))))
                                                g7729)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7733 (random 42)))
                                                g7733)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7734
                                                        (letrec ((x7736
                                                                  (number? x)))
                                                          (assert x7736)))
                                                       (g7735 (= x 0)))
                                                g7735)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7737
                                                        (letrec ((val7253
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7738
                                                                    (if val7253
                                                                      val7253
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7738))))
                                                g7737)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7739
                                                        (letrec ((x7740
                                                                  (cdr x)))
                                                          (car x7740))))
                                                g7739)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7741
                                                        (letrec ((val7254
                                                                  (letrec ((x7744
                                                                            (pair?
                                                                             l))
                                                                           (x7742
                                                                            (letrec ((x7743
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7743))))
                                                                    (and x7744
                                                                         x7742))))
                                                          (letrec ((g7745
                                                                    (if val7254
                                                                      val7254
                                                                      (null?
                                                                       l))))
                                                            g7745))))
                                                g7741)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7746
                                                        (letrec ((x7747
                                                                  (letrec ((x7748
                                                                            (letrec ((x7749
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7749))))
                                                                    (cdr
                                                                     x7748))))
                                                          (cdr x7747))))
                                                g7746)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7750
                                                        (letrec ((x-cnd7751
                                                                  (letrec ((x7752
                                                                            #\0))
                                                                    (char<=?
                                                                     x7752
                                                                     c))))
                                                          (if x-cnd7751
                                                            (letrec ((x7753
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7753))
                                                            #f))))
                                                g7750)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7754
                                                        (letrec ((x7756
                                                                  (list? l)))
                                                          (assert x7756)))
                                                       (g7755
                                                        (letrec ((x-cnd7757
                                                                  (null? l)))
                                                          (if x-cnd7757
                                                            #f
                                                            (letrec ((x-cnd7758
                                                                      (letrec ((x7759
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7759
                                                                         k))))
                                                              (if x-cnd7758
                                                                (car l)
                                                                (letrec ((x7760
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7760))))))))
                                                g7755)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7761 (if x #f #t)))
                                                g7761)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7762 (append l1 l2)))
                                                g7762)))
                                           (memq
                                            (lambda (e l)
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
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7768
                                                                         e))))
                                                              (if x-cnd7767
                                                                l
                                                                (letrec ((x7769
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7769))))))))
                                                g7764)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7770
                                                        (letrec ((x7771
                                                                  (letrec ((x7772
                                                                            (letrec ((x7773
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7773))))
                                                                    (cdr
                                                                     x7772))))
                                                          (car x7771))))
                                                g7770)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7774
                                                        (letrec ((x7776
                                                                  (list? l)))
                                                          (assert x7776)))
                                                       (g7775
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7777
                                                                              (letrec ((x-cnd7778
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7778
                                                                                  0
                                                                                  (letrec ((x7779
                                                                                            (letrec ((x7780
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7780))))
                                                                                    (+
                                                                                     1
                                                                                     x7779))))))
                                                                      g7777))))
                                                          (letrec ((g7781
                                                                    (rec l)))
                                                            g7781))))
                                                g7775)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7782
                                                        (letrec ((x7785
                                                                  (char? c1)))
                                                          (assert x7785)))
                                                       (g7783
                                                        (letrec ((x7786
                                                                  (char? c2)))
                                                          (assert x7786)))
                                                       (g7784
                                                        (letrec ((val7255
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7787
                                                                    (if val7255
                                                                      val7255
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7787))))
                                                g7784)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7788
                                                        (letrec ((x7789
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7789))))
                                                g7788)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7790
                                                        (letrec ((x7791
                                                                  (letrec ((x7792
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7792))))
                                                          (cdr x7791))))
                                                g7790)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7793
                                                        (letrec ((x7795
                                                                  (list? l)))
                                                          (assert x7795)))
                                                       (g7794
                                                        (letrec ((x-cnd7796
                                                                  (null? l)))
                                                          (if x-cnd7796
                                                            #f
                                                            (letrec ((x-cnd7797
                                                                      (letrec ((x7798
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7798
                                                                         k))))
                                                              (if x-cnd7797
                                                                (car l)
                                                                (letrec ((x7799
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7799))))))))
                                                g7794)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7800
                                                        (letrec ((x7801
                                                                  (car x)))
                                                          (car x7801))))
                                                g7800)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7802
                                                        (letrec ((x7805
                                                                  (char? c1)))
                                                          (assert x7805)))
                                                       (g7803
                                                        (letrec ((x7806
                                                                  (char? c2)))
                                                          (assert x7806)))
                                                       (g7804
                                                        (letrec ((x7807
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7807))))
                                                g7804)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7808
                                                        (letrec ((val7256
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7809
                                                                    (if val7256
                                                                      val7256
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7809))))
                                                g7808)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7810
                                                        (letrec ((x7813
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7813)))
                                                       (g7811
                                                        (letrec ((x7814
                                                                  (list? l)))
                                                          (assert x7814)))
                                                       (g7812
                                                        (letrec ((x-cnd7815
                                                                  (null? l)))
                                                          (if x-cnd7815
                                                            #t
                                                            (letrec ((x-cnd7816
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7816
                                                                (letrec ((g7817
                                                                          (letrec ((x7819
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7819)))
                                                                         (g7818
                                                                          (letrec ((x7820
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7820))))
                                                                  g7818)
                                                                '()))))))
                                                g7812)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7821
                                                        (letrec ((x7823
                                                                  (number? x)))
                                                          (assert x7823)))
                                                       (g7822
                                                        (letrec ((x-cnd7824
                                                                  (< x 0)))
                                                          (if x-cnd7824
                                                            (- 0 x)
                                                            x))))
                                                g7822)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7825
                                                        (letrec ((x7828
                                                                  (char? c1)))
                                                          (assert x7828)))
                                                       (g7826
                                                        (letrec ((x7829
                                                                  (char? c2)))
                                                          (assert x7829)))
                                                       (g7827
                                                        (letrec ((val7257
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7830
                                                                    (if val7257
                                                                      val7257
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7830))))
                                                g7827)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7831
                                                        (letrec ((x7832
                                                                  (letrec ((x7833
                                                                            (letrec ((x7834
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7834))))
                                                                    (cdr
                                                                     x7833))))
                                                          (car x7832))))
                                                g7831)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7835 #f)) g7835)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7836
                                                        (letrec ((x7838
                                                                  (letrec ((x7839
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7839)))
                                                                 (x7837
                                                                  (gcd m n)))
                                                          (/ x7838 x7837))))
                                                g7836)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7840
                                                        (letrec ((x7842
                                                                  (number? x)))
                                                          (assert x7842)))
                                                       (g7841
                                                        (letrec ((x7843
                                                                  (<= x y)))
                                                          (not x7843))))
                                                g7841)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7844
                                                        (letrec ((x7848
                                                                  (list? l)))
                                                          (assert x7848)))
                                                       (g7845
                                                        (letrec ((x7849
                                                                  (number?
                                                                   index)))
                                                          (assert x7849)))
                                                       (g7846
                                                        (letrec ((x7850
                                                                  (letrec ((x7851
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7851))))
                                                          (assert x7850)))
                                                       (g7847
                                                        (letrec ((x-cnd7852
                                                                  (= index 0)))
                                                          (if x-cnd7852
                                                            (car l)
                                                            (letrec ((x7854
                                                                      (cdr l))
                                                                     (x7853
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7854
                                                               x7853))))))
                                                g7847)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7855
                                                        (letrec ((x-cnd7856
                                                                  (= b 0)))
                                                          (if x-cnd7856
                                                            a
                                                            (letrec ((x7857
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7857))))))
                                                g7855)))
                                           (phi
                                            (letrec ((x7881 (x1))
                                                     (x7858
                                                      (letrec ((x7880 (x2))
                                                               (x7859
                                                                (letrec ((x7879
                                                                          (x3))
                                                                         (x7860
                                                                          (letrec ((x7878
                                                                                    (x4))
                                                                                   (x7861
                                                                                    (letrec ((x7877
                                                                                              (x5))
                                                                                             (x7862
                                                                                              (letrec ((x7876
                                                                                                        (x6))
                                                                                                       (x7863
                                                                                                        (letrec ((x7875
                                                                                                                  (x7))
                                                                                                                 (x7864
                                                                                                                  (letrec ((x-cnd7865
                                                                                                                            (or x1
                                                                                                                                x2)))
                                                                                                                    (if x-cnd7865
                                                                                                                      (letrec ((x-cnd7866
                                                                                                                                (letrec ((x7868
                                                                                                                                          (not
                                                                                                                                           x2))
                                                                                                                                         (x7867
                                                                                                                                          (not
                                                                                                                                           x3)))
                                                                                                                                  (or x1
                                                                                                                                      x7868
                                                                                                                                      x7867))))
                                                                                                                        (if x-cnd7866
                                                                                                                          (letrec ((x-cnd7869
                                                                                                                                    (or x3
                                                                                                                                        x4)))
                                                                                                                            (if x-cnd7869
                                                                                                                              (letrec ((x-cnd7870
                                                                                                                                        (letrec ((x7871
                                                                                                                                                  (not
                                                                                                                                                   x4)))
                                                                                                                                          (or x7871
                                                                                                                                              x1))))
                                                                                                                                (if x-cnd7870
                                                                                                                                  (letrec ((x-cnd7872
                                                                                                                                            (letrec ((x7874
                                                                                                                                                      (not
                                                                                                                                                       x2))
                                                                                                                                                     (x7873
                                                                                                                                                      (not
                                                                                                                                                       x3)))
                                                                                                                                              (or x7874
                                                                                                                                                  x7873))))
                                                                                                                                    (if x-cnd7872
                                                                                                                                      (or x4
                                                                                                                                          x2)
                                                                                                                                      #f))
                                                                                                                                  #f))
                                                                                                                              #f))
                                                                                                                          #f))
                                                                                                                      #f))))
                                                                                                          (λ x7875
                                                                                                            x7864))))
                                                                                                (λ x7876
                                                                                                  x7863))))
                                                                                      (λ x7877
                                                                                        x7862))))
                                                                            (λ x7878
                                                                              x7861))))
                                                                  (λ x7879
                                                                    x7860))))
                                                        (λ x7880 x7859))))
                                              (λ x7881 x7858)))
                                           (try
                                            (letrec ((x7884 (f))
                                                     (x7882
                                                      (letrec ((val7258
                                                                (f #t)))
                                                        (letrec ((g7883
                                                                  (if val7258
                                                                    val7258
                                                                    (f #f))))
                                                          g7883))))
                                              (λ x7884 x7882)))
                                           (sat-solve-7
                                            (letrec ((x7913 (p))
                                                     (x7885
                                                      (letrec ((x7886
                                                                (letrec ((x7912
                                                                          (n1))
                                                                         (x7887
                                                                          (letrec ((x7888
                                                                                    (letrec ((x7911
                                                                                              (n2))
                                                                                             (x7889
                                                                                              (letrec ((x7890
                                                                                                        (letrec ((x7910
                                                                                                                  (n3))
                                                                                                                 (x7891
                                                                                                                  (letrec ((x7892
                                                                                                                            (letrec ((x7909
                                                                                                                                      (n4))
                                                                                                                                     (x7893
                                                                                                                                      (letrec ((x7894
                                                                                                                                                (letrec ((x7908
                                                                                                                                                          (n5))
                                                                                                                                                         (x7895
                                                                                                                                                          (letrec ((x7896
                                                                                                                                                                    (letrec ((x7907
                                                                                                                                                                              (n6))
                                                                                                                                                                             (x7897
                                                                                                                                                                              (letrec ((x7898
                                                                                                                                                                                        (letrec ((x7906
                                                                                                                                                                                                  (n7))
                                                                                                                                                                                                 (x7899
                                                                                                                                                                                                  (letrec ((x7900
                                                                                                                                                                                                            (letrec ((x7901
                                                                                                                                                                                                                      (letrec ((x7902
                                                                                                                                                                                                                                (letrec ((x7903
                                                                                                                                                                                                                                          (letrec ((x7904
                                                                                                                                                                                                                                                    (letrec ((x7905
                                                                                                                                                                                                                                                              (p
                                                                                                                                                                                                                                                               n1)))
                                                                                                                                                                                                                                                      (x7905
                                                                                                                                                                                                                                                       n2))))
                                                                                                                                                                                                                                            (x7904
                                                                                                                                                                                                                                             n3))))
                                                                                                                                                                                                                                  (x7903
                                                                                                                                                                                                                                   n4))))
                                                                                                                                                                                                                        (x7902
                                                                                                                                                                                                                         n5))))
                                                                                                                                                                                                              (x7901
                                                                                                                                                                                                               n6))))
                                                                                                                                                                                                    (x7900
                                                                                                                                                                                                     n7))))
                                                                                                                                                                                          (λ x7906
                                                                                                                                                                                            x7899))))
                                                                                                                                                                                (try
                                                                                                                                                                                 x7898))))
                                                                                                                                                                      (λ x7907
                                                                                                                                                                        x7897))))
                                                                                                                                                            (try
                                                                                                                                                             x7896))))
                                                                                                                                                  (λ x7908
                                                                                                                                                    x7895))))
                                                                                                                                        (try
                                                                                                                                         x7894))))
                                                                                                                              (λ x7909
                                                                                                                                x7893))))
                                                                                                                    (try
                                                                                                                     x7892))))
                                                                                                          (λ x7910
                                                                                                            x7891))))
                                                                                                (try
                                                                                                 x7890))))
                                                                                      (λ x7911
                                                                                        x7889))))
                                                                            (try
                                                                             x7888))))
                                                                  (λ x7912
                                                                    x7887))))
                                                        (try x7886))))
                                              (λ x7913 x7885))))
                                    (letrec ((g7914 (sat-solve-7 phi)))
                                      g7914))))
                          g7341))))
              g7339)))
    g7338))
