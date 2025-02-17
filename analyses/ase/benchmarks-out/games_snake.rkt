(letrec ((any? (lambda (v) (letrec ((g7453 #t)) g7453)))
         (meta (lambda (v) (letrec ((g7454 v)) g7454)))
         (member
          (lambda (v lst)
            (letrec ((g7455
                      (letrec ((g7456
                                (letrec ((x-e7457 lst))
                                  (match
                                   x-e7457
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7458 (eq? v v1)))
                                       (if x-cnd7458 #t (member v vs)))))))))
                        g7456)))
              g7455)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7459 (lambda (v) (letrec ((g7460 v)) g7460)))) g7459)))
         (nonzero?
          (lambda (v)
            (letrec ((g7461 (letrec ((x7462 (= v 0))) (not x7462)))) g7461))))
  (letrec ((g7463
            (letrec ((g7464
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7465 '())
                                 (g7466
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7467
                                                        (lambda (k j lst)
                                                          (letrec ((g7468
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7469
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7469))
                                                                     lst)))
                                                            g7468))))
                                                g7467)))
                                           (real?/c
                                            (lambda (g7263 g7264 g7265)
                                              (letrec ((g7470
                                                        (letrec ((x-cnd7471
                                                                  (real?
                                                                   g7265)))
                                                          (if x-cnd7471
                                                            g7265
                                                            (blame
                                                             g7263
                                                             'real?)))))
                                                g7470)))
                                           (boolean?/c
                                            (lambda (g7266 g7267 g7268)
                                              (letrec ((g7472
                                                        (letrec ((x-cnd7473
                                                                  (boolean?
                                                                   g7268)))
                                                          (if x-cnd7473
                                                            g7268
                                                            (blame
                                                             g7266
                                                             'boolean?)))))
                                                g7472)))
                                           (number?/c
                                            (lambda (g7269 g7270 g7271)
                                              (letrec ((g7474
                                                        (letrec ((x-cnd7475
                                                                  (number?
                                                                   g7271)))
                                                          (if x-cnd7475
                                                            g7271
                                                            (blame
                                                             g7269
                                                             'number?)))))
                                                g7474)))
                                           (any/c
                                            (lambda (g7272 g7273 g7274)
                                              (letrec ((g7476
                                                        (letrec ((x-cnd7477
                                                                  ((lambda (v)
                                                                     (letrec ((g7478
                                                                               #t))
                                                                       g7478))
                                                                   g7274)))
                                                          (if x-cnd7477
                                                            g7274
                                                            (blame
                                                             g7272
                                                             '(lambda (v)
                                                                #t))))))
                                                g7476)))
                                           (any?/c
                                            (lambda (g7275 g7276 g7277)
                                              (letrec ((g7479
                                                        (letrec ((x-cnd7480
                                                                  ((lambda (v)
                                                                     (letrec ((g7481
                                                                               #t))
                                                                       g7481))
                                                                   g7277)))
                                                          (if x-cnd7480
                                                            g7277
                                                            (blame
                                                             g7275
                                                             '(lambda (v)
                                                                #t))))))
                                                g7479)))
                                           (cons?/c
                                            (lambda (g7278 g7279 g7280)
                                              (letrec ((g7482
                                                        (letrec ((x-cnd7483
                                                                  (pair?
                                                                   g7280)))
                                                          (if x-cnd7483
                                                            g7280
                                                            (blame
                                                             g7278
                                                             'pair?)))))
                                                g7482)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7281 g7282 g7283)
                                              (letrec ((g7484
                                                        (letrec ((x-cnd7485
                                                                  (pair?
                                                                   g7283)))
                                                          (if x-cnd7485
                                                            g7283
                                                            (blame
                                                             g7281
                                                             'pair?)))))
                                                g7484)))
                                           (integer?/c
                                            (lambda (g7284 g7285 g7286)
                                              (letrec ((g7486
                                                        (letrec ((x-cnd7487
                                                                  (integer?
                                                                   g7286)))
                                                          (if x-cnd7487
                                                            g7286
                                                            (blame
                                                             g7284
                                                             'integer?)))))
                                                g7486)))
                                           (symbol?/c
                                            (lambda (g7287 g7288 g7289)
                                              (letrec ((g7488
                                                        (letrec ((x-cnd7489
                                                                  (symbol?
                                                                   g7289)))
                                                          (if x-cnd7489
                                                            g7289
                                                            (blame
                                                             g7287
                                                             'symbol?)))))
                                                g7488)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7490
                                                        (lambda (k j v)
                                                          (letrec ((g7491
                                                                    (letrec ((x-cnd7492
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7492
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7491))))
                                                g7490)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7493
                                                        (lambda (k j v)
                                                          (letrec ((g7494
                                                                    (letrec ((x-cnd7495
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7495
                                                                        '()
                                                                        (letrec ((x7499
                                                                                  (letrec ((x7500
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7500)))
                                                                                 (x7496
                                                                                  (letrec ((x7498
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7497
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7498
                                                                                     k
                                                                                     j
                                                                                     x7497))))
                                                                          (orig-cons
                                                                           x7499
                                                                           x7496))))))
                                                            g7494))))
                                                g7493)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7501 #t)) g7501)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7502
                                                        (letrec ((x7503
                                                                  (= v 0)))
                                                          (not x7503))))
                                                g7502)))
                                           (nonzero?/c
                                            (lambda (g7290 g7291 g7292)
                                              (letrec ((g7504
                                                        (letrec ((x-cnd7505
                                                                  ((lambda (v)
                                                                     (letrec ((g7506
                                                                               (letrec ((x7507
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7507))))
                                                                       g7506))
                                                                   g7292)))
                                                          (if x-cnd7505
                                                            g7292
                                                            (blame
                                                             g7290
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7504)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7508 v)) g7508)))
                                           (+
                                            ((lambda (j7295 k7296 f7297)
                                               (letrec ((g7510
                                                         (lambda (g7293 g7294)
                                                           (letrec ((g7511
                                                                     (letrec ((x7512
                                                                               (letrec ((x7514
                                                                                         (number?/c
                                                                                          j7295
                                                                                          k7296
                                                                                          g7293))
                                                                                        (x7513
                                                                                         (number?/c
                                                                                          j7295
                                                                                          k7296
                                                                                          g7294)))
                                                                                 (f7297
                                                                                  x7514
                                                                                  x7513))))
                                                                       (number?/c
                                                                        j7295
                                                                        k7296
                                                                        x7512))))
                                                             g7511))))
                                                 g7510))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7509 (orig-+ a b)))
                                                 g7509))))
                                           (-
                                            ((lambda (j7300 k7301 f7302)
                                               (letrec ((g7516
                                                         (lambda (g7298 g7299)
                                                           (letrec ((g7517
                                                                     (letrec ((x7518
                                                                               (letrec ((x7520
                                                                                         (number?/c
                                                                                          j7300
                                                                                          k7301
                                                                                          g7298))
                                                                                        (x7519
                                                                                         (number?/c
                                                                                          j7300
                                                                                          k7301
                                                                                          g7299)))
                                                                                 (f7302
                                                                                  x7520
                                                                                  x7519))))
                                                                       (number?/c
                                                                        j7300
                                                                        k7301
                                                                        x7518))))
                                                             g7517))))
                                                 g7516))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7515 (orig-- a b)))
                                                 g7515))))
                                           (*
                                            ((lambda (j7305 k7306 f7307)
                                               (letrec ((g7522
                                                         (lambda (g7303 g7304)
                                                           (letrec ((g7523
                                                                     (letrec ((x7524
                                                                               (letrec ((x7526
                                                                                         (number?/c
                                                                                          j7305
                                                                                          k7306
                                                                                          g7303))
                                                                                        (x7525
                                                                                         (number?/c
                                                                                          j7305
                                                                                          k7306
                                                                                          g7304)))
                                                                                 (f7307
                                                                                  x7526
                                                                                  x7525))))
                                                                       (number?/c
                                                                        j7305
                                                                        k7306
                                                                        x7524))))
                                                             g7523))))
                                                 g7522))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7521 (orig-* a b)))
                                                 g7521))))
                                           (/
                                            ((lambda (j7310 k7311 f7312)
                                               (letrec ((g7528
                                                         (lambda (g7308 g7309)
                                                           (letrec ((g7529
                                                                     (letrec ((x7530
                                                                               (letrec ((x7532
                                                                                         (number?/c
                                                                                          j7310
                                                                                          k7311
                                                                                          g7308))
                                                                                        (x7531
                                                                                         (number?/c
                                                                                          j7310
                                                                                          k7311
                                                                                          g7309)))
                                                                                 (f7312
                                                                                  x7532
                                                                                  x7531))))
                                                                       (number?/c
                                                                        j7310
                                                                        k7311
                                                                        x7530))))
                                                             g7529))))
                                                 g7528))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7527 (orig-/ a b)))
                                                 g7527))))
                                           (car
                                            ((lambda (j7314 k7315 f7316)
                                               (letrec ((g7534
                                                         (lambda (g7313)
                                                           (letrec ((g7535
                                                                     (letrec ((x7536
                                                                               (letrec ((x7537
                                                                                         (pair?/c
                                                                                          j7314
                                                                                          k7315
                                                                                          g7313)))
                                                                                 (f7316
                                                                                  x7537))))
                                                                       (any/c
                                                                        j7314
                                                                        k7315
                                                                        x7536))))
                                                             g7535))))
                                                 g7534))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7533 (orig-car p)))
                                                 g7533))))
                                           (cdr
                                            ((lambda (j7318 k7319 f7320)
                                               (letrec ((g7539
                                                         (lambda (g7317)
                                                           (letrec ((g7540
                                                                     (letrec ((x7541
                                                                               (letrec ((x7542
                                                                                         (pair?/c
                                                                                          j7318
                                                                                          k7319
                                                                                          g7317)))
                                                                                 (f7320
                                                                                  x7542))))
                                                                       (any/c
                                                                        j7318
                                                                        k7319
                                                                        x7541))))
                                                             g7540))))
                                                 g7539))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7538 (orig-cdr p)))
                                                 g7538))))
                                           (cons
                                            ((lambda (j7323 k7324 f7325)
                                               (letrec ((g7544
                                                         (lambda (g7321 g7322)
                                                           (letrec ((g7545
                                                                     (letrec ((x7546
                                                                               (letrec ((x7548
                                                                                         (any/c
                                                                                          j7323
                                                                                          k7324
                                                                                          g7321))
                                                                                        (x7547
                                                                                         (any/c
                                                                                          j7323
                                                                                          k7324
                                                                                          g7322)))
                                                                                 (f7325
                                                                                  x7548
                                                                                  x7547))))
                                                                       (pair?/c
                                                                        j7323
                                                                        k7324
                                                                        x7546))))
                                                             g7545))))
                                                 g7544))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7543
                                                         (orig-cons a b)))
                                                 g7543))))
                                           (vector-ref
                                            ((lambda (j7327 k7328 f7329)
                                               (letrec ((g7550
                                                         (lambda (g7326)
                                                           (letrec ((g7551
                                                                     (letrec ((x7552
                                                                               (letrec ((x7553
                                                                                         (vector?/c
                                                                                          j7327
                                                                                          k7328
                                                                                          g7326)))
                                                                                 (f7329
                                                                                  x7553))))
                                                                       (integer?/c
                                                                        j7327
                                                                        k7328
                                                                        x7552))))
                                                             g7551))))
                                                 g7550))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7549
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7549))))
                                           (vector-set!
                                            ((lambda (j7332 k7333 f7334)
                                               (letrec ((g7555
                                                         (lambda (g7330 g7331)
                                                           (letrec ((g7556
                                                                     (letrec ((x7557
                                                                               (letrec ((x7559
                                                                                         (vector?/c
                                                                                          j7332
                                                                                          k7333
                                                                                          g7330))
                                                                                        (x7558
                                                                                         (integer?/c
                                                                                          j7332
                                                                                          k7333
                                                                                          g7331)))
                                                                                 (f7334
                                                                                  x7559
                                                                                  x7558))))
                                                                       (any/c
                                                                        j7332
                                                                        k7333
                                                                        x7557))))
                                                             g7556))))
                                                 g7555))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7554
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7554))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7560
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7560)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7561
                                                        (letrec ((x7562
                                                                  (letrec ((x7563
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7563))))
                                                          (cdr x7562))))
                                                g7561)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7564
                                                        (letrec ((x7567
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7567)))
                                                       (g7565
                                                        (letrec ((x7568
                                                                  (list? l)))
                                                          (assert x7568)))
                                                       (g7566
                                                        (letrec ((x-cnd7569
                                                                  (null? l)))
                                                          (if x-cnd7569
                                                            '()
                                                            (letrec ((x7572
                                                                      (letrec ((x7573
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7573)))
                                                                     (x7570
                                                                      (letrec ((x7571
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7571))))
                                                              (cons
                                                               x7572
                                                               x7570))))))
                                                g7566)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7574
                                                        (letrec ((x7575
                                                                  (car x)))
                                                          (cdr x7575))))
                                                g7574)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7576
                                                        (letrec ((x7577
                                                                  (letrec ((x7578
                                                                            (letrec ((x7579
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7579))))
                                                                    (cdr
                                                                     x7578))))
                                                          (car x7577))))
                                                g7576)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7580
                                                        (letrec ((x7581
                                                                  (letrec ((x7582
                                                                            (letrec ((x7583
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7583))))
                                                                    (car
                                                                     x7582))))
                                                          (cdr x7581))))
                                                g7580)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7584
                                                        (letrec ((x7587
                                                                  (string?
                                                                   filename)))
                                                          (assert x7587)))
                                                       (g7585
                                                        (letrec ((x7588
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7588)))
                                                       (g7586
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7589
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7590 res))
                                                            g7590))))
                                                g7586)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7591
                                                        (letrec ((x7592
                                                                  (letrec ((x7593
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7593))))
                                                          (car x7592))))
                                                g7591)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7594
                                                        (letrec ((x7595
                                                                  (letrec ((x7596
                                                                            (letrec ((x7597
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7597))))
                                                                    (car
                                                                     x7596))))
                                                          (cdr x7595))))
                                                g7594)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7598
                                                        (letrec ((x7600
                                                                  (list? l)))
                                                          (assert x7600)))
                                                       (g7599
                                                        (letrec ((x-cnd7601
                                                                  (null? l)))
                                                          (if x-cnd7601
                                                            #f
                                                            (letrec ((x-cnd7602
                                                                      (letrec ((x7603
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7603
                                                                         k))))
                                                              (if x-cnd7602
                                                                (car l)
                                                                (letrec ((x7604
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7604))))))))
                                                g7599)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7605
                                                        (letrec ((x7606
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7606))))
                                                g7605)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7607
                                                        (letrec ((x7609
                                                                  (list? l)))
                                                          (assert x7609)))
                                                       (g7608
                                                        (letrec ((x-cnd7610
                                                                  (null? l)))
                                                          (if x-cnd7610
                                                            ""
                                                            (letrec ((x7613
                                                                      (letrec ((x7614
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7614)))
                                                                     (x7611
                                                                      (letrec ((x7612
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7612))))
                                                              (string-append
                                                               x7613
                                                               x7611))))))
                                                g7608)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7615
                                                        (letrec ((x7618
                                                                  (char? c1)))
                                                          (assert x7618)))
                                                       (g7616
                                                        (letrec ((x7619
                                                                  (char? c2)))
                                                          (assert x7619)))
                                                       (g7617
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7620
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7620))))
                                                g7617)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7621
                                                        (letrec ((x7622
                                                                  (letrec ((x7623
                                                                            (letrec ((x7624
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7624))))
                                                                    (cdr
                                                                     x7623))))
                                                          (cdr x7622))))
                                                g7621)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7625
                                                        (letrec ((x7628
                                                                  (list? l)))
                                                          (assert x7628)))
                                                       (g7626
                                                        (letrec ((x7629
                                                                  (number?)))
                                                          (assert x7629)))
                                                       (g7627
                                                        (letrec ((x-cnd7630
                                                                  (zero? k)))
                                                          (if x-cnd7630
                                                            x
                                                            (letrec ((x7632
                                                                      (cdr x))
                                                                     (x7631
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7632
                                                               x7631))))))
                                                g7627)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7633 '())) g7633)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7634
                                                        (letrec ((x-cnd7635
                                                                  (letrec ((x7636
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7636))))
                                                          (if x-cnd7635
                                                            (letrec ((x7637
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7637))
                                                            #f))))
                                                g7634)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7638
                                                        (letrec ((x7640
                                                                  (number? x)))
                                                          (assert x7640)))
                                                       (g7639
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7641
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7642
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7642)))))
                                                            g7641))))
                                                g7639)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7643
                                                        (letrec ((val7244
                                                                  (letrec ((x7644
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7644
                                                                     9))))
                                                          (letrec ((g7645
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7646
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7646
                                                                                   10))))
                                                                        (letrec ((g7647
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7648
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7648
                                                                                       32)))))
                                                                          g7647)))))
                                                            g7645))))
                                                g7643)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7649
                                                        (letrec ((x7650
                                                                  (letrec ((x7651
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7651))))
                                                          (cdr x7650))))
                                                g7649)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7652
                                                        (letrec ((x7654
                                                                  (number? x)))
                                                          (assert x7654)))
                                                       (g7653 (> x 0)))
                                                g7653)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7655 #f)) g7655)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7656
                                                        (letrec ((x7657
                                                                  (cdr x)))
                                                          (cdr x7657))))
                                                g7656)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7658
                                                        (letrec ((x7660
                                                                  (number? x)))
                                                          (assert x7660)))
                                                       (g7659
                                                        (letrec ((x-cnd7661
                                                                  (< x 0)))
                                                          (if x-cnd7661
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7659)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7662
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7663
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7664
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7664
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7665
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7666
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7666
                                                                                                  (letrec ((x-cnd7667
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7667
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7668
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7669
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7669
                                                                                                                (letrec ((x-cnd7670
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7670
                                                                                                                    (letrec ((x-cnd7671
                                                                                                                              (letrec ((x7673
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7672
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7673
                                                                                                                                 x7672))))
                                                                                                                      (if x-cnd7671
                                                                                                                        (letrec ((x7675
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7674
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7675
                                                                                                                           x7674))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7676
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7677
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7677
                                                                                                                    (letrec ((x-cnd7678
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7678
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7679
                                                                                                                                    (letrec ((x-cnd7680
                                                                                                                                              (letrec ((x7681
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7681
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7680
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7682
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7683
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7684
                                                                                                                                                                                      (letrec ((x7686
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7685
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7686
                                                                                                                                                                                         x7685))))
                                                                                                                                                                              (if x-cnd7684
                                                                                                                                                                                (letrec ((x7687
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7687))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7683))))
                                                                                                                                                      g7682))))
                                                                                                                                          (letrec ((g7688
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7688))
                                                                                                                                        #f))))
                                                                                                                            g7679))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7676)))))
                                                                                        g7668)))))
                                                                          g7665)))))
                                                            g7663))))
                                                g7662)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7689
                                                        (letrec ((x7690
                                                                  (letrec ((x7691
                                                                            (letrec ((x7692
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7692))))
                                                                    (car
                                                                     x7691))))
                                                          (cdr x7690))))
                                                g7689)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7693
                                                        (letrec ((x7694
                                                                  (letrec ((x7695
                                                                            (letrec ((x7696
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7696))))
                                                                    (car
                                                                     x7695))))
                                                          (car x7694))))
                                                g7693)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7697 (eq? x y)))
                                                g7697)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7698
                                                        (letrec ((x7700
                                                                  (number? x)))
                                                          (assert x7700)))
                                                       (g7699
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7701
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7702
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7702)))))
                                                            g7701))))
                                                g7699)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7703
                                                        (letrec ((x7706
                                                                  (string?
                                                                   filename)))
                                                          (assert x7706)))
                                                       (g7704
                                                        (letrec ((x7707
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7707)))
                                                       (g7705
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7708
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7709 res))
                                                            g7709))))
                                                g7705)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7710 (cons x '())))
                                                g7710)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7711
                                                        (letrec ((x7714
                                                                  (char? c1)))
                                                          (assert x7714)))
                                                       (g7712
                                                        (letrec ((x7715
                                                                  (char? c2)))
                                                          (assert x7715)))
                                                       (g7713
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7716
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7716))))
                                                g7713)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7717
                                                        (letrec ((x7718
                                                                  (letrec ((x7719
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7719))))
                                                          (cdr x7718))))
                                                g7717)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7720
                                                        (letrec ((x7721
                                                                  (letrec ((x7722
                                                                            (letrec ((x7723
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7723))))
                                                                    (car
                                                                     x7722))))
                                                          (cdr x7721))))
                                                g7720)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7724
                                                        (letrec ((x7725
                                                                  (letrec ((x7726
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7726))))
                                                          (car x7725))))
                                                g7724)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7727
                                                        (letrec ((x7728
                                                                  (letrec ((x7729
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7729))))
                                                          (car x7728))))
                                                g7727)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7730
                                                        (letrec ((x7733
                                                                  (char? c1)))
                                                          (assert x7733)))
                                                       (g7731
                                                        (letrec ((x7734
                                                                  (char? c2)))
                                                          (assert x7734)))
                                                       (g7732
                                                        (letrec ((x7735
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7735))))
                                                g7732)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7736
                                                        (letrec ((x7737
                                                                  (letrec ((x7738
                                                                            (letrec ((x7739
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7739))))
                                                                    (car
                                                                     x7738))))
                                                          (car x7737))))
                                                g7736)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7740
                                                        (letrec ((x7742
                                                                  (number? x)))
                                                          (assert x7742)))
                                                       (g7741 (< x 0)))
                                                g7741)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7743 (memq e l)))
                                                g7743)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7744
                                                        (letrec ((x7745
                                                                  (letrec ((x7746
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7746))))
                                                          (car x7745))))
                                                g7744)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7747 '())) g7747)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7748
                                                        (letrec ((x7750
                                                                  (list? l)))
                                                          (assert x7750)))
                                                       (g7749
                                                        (letrec ((x-cnd7751
                                                                  (null? l)))
                                                          (if x-cnd7751
                                                            '()
                                                            (letrec ((x7754
                                                                      (letrec ((x7755
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7755)))
                                                                     (x7752
                                                                      (letrec ((x7753
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7753))))
                                                              (append
                                                               x7754
                                                               x7752))))))
                                                g7749)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7756
                                                        (letrec ((x7757
                                                                  (letrec ((x7758
                                                                            (letrec ((x7759
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7759))))
                                                                    (car
                                                                     x7758))))
                                                          (car x7757))))
                                                g7756)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7760
                                                        (letrec ((x7761
                                                                  (letrec ((x7762
                                                                            (letrec ((x7763
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7763))))
                                                                    (cdr
                                                                     x7762))))
                                                          (cdr x7761))))
                                                g7760)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7764
                                                        (letrec ((x7766
                                                                  (number? x)))
                                                          (assert x7766)))
                                                       (g7765
                                                        (letrec ((x7767
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7767))))
                                                g7765)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7768
                                                        (letrec ((x7769
                                                                  (letrec ((x7770
                                                                            (letrec ((x7771
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7771))))
                                                                    (car
                                                                     x7770))))
                                                          (car x7769))))
                                                g7768)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7772
                                                        (letrec ((x7775
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7775)))
                                                       (g7773
                                                        (letrec ((x7776
                                                                  (list?
                                                                   args)))
                                                          (assert x7776)))
                                                       (g7774
                                                        (letrec ((x-cnd7777
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7777
                                                            (letrec ((g7778
                                                                      (proc)))
                                                              g7778)
                                                            (letrec ((x-cnd7779
                                                                      (letrec ((x7780
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7780))))
                                                              (if x-cnd7779
                                                                (letrec ((g7781
                                                                          (letrec ((x7782
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7782))))
                                                                  g7781)
                                                                (letrec ((x-cnd7783
                                                                          (letrec ((x7784
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7784))))
                                                                  (if x-cnd7783
                                                                    (letrec ((g7785
                                                                              (letrec ((x7787
                                                                                        (car
                                                                                         args))
                                                                                       (x7786
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7787
                                                                                 x7786))))
                                                                      g7785)
                                                                    (letrec ((x-cnd7788
                                                                              (letrec ((x7789
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7789))))
                                                                      (if x-cnd7788
                                                                        (letrec ((g7790
                                                                                  (letrec ((x7793
                                                                                            (car
                                                                                             args))
                                                                                           (x7792
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7791
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7793
                                                                                     x7792
                                                                                     x7791))))
                                                                          g7790)
                                                                        (letrec ((x-cnd7794
                                                                                  (letrec ((x7795
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7795))))
                                                                          (if x-cnd7794
                                                                            (letrec ((g7796
                                                                                      (letrec ((x7800
                                                                                                (car
                                                                                                 args))
                                                                                               (x7799
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7798
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7797
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7800
                                                                                         x7799
                                                                                         x7798
                                                                                         x7797))))
                                                                              g7796)
                                                                            (letrec ((x-cnd7801
                                                                                      (letrec ((x7802
                                                                                                (letrec ((x7803
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7803))))
                                                                                        (null?
                                                                                         x7802))))
                                                                              (if x-cnd7801
                                                                                (letrec ((g7804
                                                                                          (letrec ((x7810
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7809
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7808
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7807
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7805
                                                                                                    (letrec ((x7806
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7806))))
                                                                                            (proc
                                                                                             x7810
                                                                                             x7809
                                                                                             x7808
                                                                                             x7807
                                                                                             x7805))))
                                                                                  g7804)
                                                                                (letrec ((x-cnd7811
                                                                                          (letrec ((x7812
                                                                                                    (letrec ((x7813
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7813))))
                                                                                            (null?
                                                                                             x7812))))
                                                                                  (if x-cnd7811
                                                                                    (letrec ((g7814
                                                                                              (letrec ((x7822
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7821
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7820
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7819
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7817
                                                                                                        (letrec ((x7818
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7818)))
                                                                                                       (x7815
                                                                                                        (letrec ((x7816
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7816))))
                                                                                                (proc
                                                                                                 x7822
                                                                                                 x7821
                                                                                                 x7820
                                                                                                 x7819
                                                                                                 x7817
                                                                                                 x7815))))
                                                                                      g7814)
                                                                                    (letrec ((x-cnd7823
                                                                                              (letrec ((x7824
                                                                                                        (letrec ((x7825
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7825))))
                                                                                                (null?
                                                                                                 x7824))))
                                                                                      (if x-cnd7823
                                                                                        (letrec ((g7826
                                                                                                  (letrec ((x7836
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7835
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7834
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7833
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7831
                                                                                                            (letrec ((x7832
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7832)))
                                                                                                           (x7829
                                                                                                            (letrec ((x7830
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7830)))
                                                                                                           (x7827
                                                                                                            (letrec ((x7828
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7828))))
                                                                                                    (proc
                                                                                                     x7836
                                                                                                     x7835
                                                                                                     x7834
                                                                                                     x7833
                                                                                                     x7831
                                                                                                     x7829
                                                                                                     x7827))))
                                                                                          g7826)
                                                                                        (letrec ((g7837
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7837)))))))))))))))))))
                                                g7774)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7838
                                                        (letrec ((x7840
                                                                  (list? l)))
                                                          (assert x7840)))
                                                       (g7839
                                                        (letrec ((x-cnd7841
                                                                  (null? l)))
                                                          (if x-cnd7841
                                                            #f
                                                            (letrec ((x-cnd7842
                                                                      (letrec ((x7843
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7843
                                                                         e))))
                                                              (if x-cnd7842
                                                                l
                                                                (letrec ((x7844
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7844))))))))
                                                g7839)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7845
                                                        (letrec ((x7846
                                                                  (letrec ((x7847
                                                                            (letrec ((x7848
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7848))))
                                                                    (cdr
                                                                     x7847))))
                                                          (cdr x7846))))
                                                g7845)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7849
                                                        (letrec ((x7850
                                                                  (letrec ((x7851
                                                                            (letrec ((x7852
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7852))))
                                                                    (cdr
                                                                     x7851))))
                                                          (car x7850))))
                                                g7849)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7853 (random 42)))
                                                g7853)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7854
                                                        (letrec ((x7856
                                                                  (number? x)))
                                                          (assert x7856)))
                                                       (g7855 (= x 0)))
                                                g7855)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7857
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7858
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7858))))
                                                g7857)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7859
                                                        (letrec ((x7860
                                                                  (cdr x)))
                                                          (car x7860))))
                                                g7859)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7861
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd7862
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7862
                                                                      (letrec ((x7863
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7863))
                                                                      #f))))
                                                          (letrec ((g7864
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g7864))))
                                                g7861)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7865
                                                        (letrec ((x7866
                                                                  (letrec ((x7867
                                                                            (letrec ((x7868
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7868))))
                                                                    (cdr
                                                                     x7867))))
                                                          (cdr x7866))))
                                                g7865)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7869
                                                        (letrec ((x-cnd7870
                                                                  (letrec ((x7871
                                                                            #\0))
                                                                    (char<=?
                                                                     x7871
                                                                     c))))
                                                          (if x-cnd7870
                                                            (letrec ((x7872
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7872))
                                                            #f))))
                                                g7869)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7873
                                                        (letrec ((x7875
                                                                  (list? l)))
                                                          (assert x7875)))
                                                       (g7874
                                                        (letrec ((x-cnd7876
                                                                  (null? l)))
                                                          (if x-cnd7876
                                                            #f
                                                            (letrec ((x-cnd7877
                                                                      (letrec ((x7878
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7878
                                                                         k))))
                                                              (if x-cnd7877
                                                                (car l)
                                                                (letrec ((x7879
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7879))))))))
                                                g7874)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7880 (if x #f #t)))
                                                g7880)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7881 (append l1 l2)))
                                                g7881)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7882
                                                        (letrec ((x7884
                                                                  (list? l)))
                                                          (assert x7884)))
                                                       (g7883
                                                        (letrec ((x-cnd7885
                                                                  (null? l)))
                                                          (if x-cnd7885
                                                            #f
                                                            (letrec ((x-cnd7886
                                                                      (letrec ((x7887
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7887
                                                                         e))))
                                                              (if x-cnd7886
                                                                l
                                                                (letrec ((x7888
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7888))))))))
                                                g7883)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7889
                                                        (letrec ((x7890
                                                                  (letrec ((x7891
                                                                            (letrec ((x7892
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7892))))
                                                                    (cdr
                                                                     x7891))))
                                                          (car x7890))))
                                                g7889)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7893
                                                        (letrec ((x7895
                                                                  (list? l)))
                                                          (assert x7895)))
                                                       (g7894
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7896
                                                                              (letrec ((x-cnd7897
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7897
                                                                                  0
                                                                                  (letrec ((x7898
                                                                                            (letrec ((x7899
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7899))))
                                                                                    (+
                                                                                     1
                                                                                     x7898))))))
                                                                      g7896))))
                                                          (letrec ((g7900
                                                                    (rec l)))
                                                            g7900))))
                                                g7894)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7901
                                                        (letrec ((x7904
                                                                  (char? c1)))
                                                          (assert x7904)))
                                                       (g7902
                                                        (letrec ((x7905
                                                                  (char? c2)))
                                                          (assert x7905)))
                                                       (g7903
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7906
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7906))))
                                                g7903)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7907
                                                        (letrec ((x7908
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7908))))
                                                g7907)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7909
                                                        (letrec ((x7910
                                                                  (letrec ((x7911
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7911))))
                                                          (cdr x7910))))
                                                g7909)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7912
                                                        (letrec ((x7914
                                                                  (list? l)))
                                                          (assert x7914)))
                                                       (g7913
                                                        (letrec ((x-cnd7915
                                                                  (null? l)))
                                                          (if x-cnd7915
                                                            #f
                                                            (letrec ((x-cnd7916
                                                                      (letrec ((x7917
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7917
                                                                         k))))
                                                              (if x-cnd7916
                                                                (car l)
                                                                (letrec ((x7918
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7918))))))))
                                                g7913)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7919
                                                        (letrec ((x7920
                                                                  (car x)))
                                                          (car x7920))))
                                                g7919)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7921
                                                        (letrec ((x7924
                                                                  (char? c1)))
                                                          (assert x7924)))
                                                       (g7922
                                                        (letrec ((x7925
                                                                  (char? c2)))
                                                          (assert x7925)))
                                                       (g7923
                                                        (letrec ((x7926
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7926))))
                                                g7923)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7927
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7928
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7928))))
                                                g7927)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7929
                                                        (letrec ((x7932
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7932)))
                                                       (g7930
                                                        (letrec ((x7933
                                                                  (list? l)))
                                                          (assert x7933)))
                                                       (g7931
                                                        (letrec ((x-cnd7934
                                                                  (null? l)))
                                                          (if x-cnd7934
                                                            #t
                                                            (letrec ((x-cnd7935
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7935
                                                                (letrec ((g7936
                                                                          (letrec ((x7938
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7938)))
                                                                         (g7937
                                                                          (letrec ((x7939
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7939))))
                                                                  g7937)
                                                                '()))))))
                                                g7931)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7940
                                                        (letrec ((x7942
                                                                  (number? x)))
                                                          (assert x7942)))
                                                       (g7941
                                                        (letrec ((x-cnd7943
                                                                  (< x 0)))
                                                          (if x-cnd7943
                                                            (- 0 x)
                                                            x))))
                                                g7941)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7944
                                                        (letrec ((x7947
                                                                  (char? c1)))
                                                          (assert x7947)))
                                                       (g7945
                                                        (letrec ((x7948
                                                                  (char? c2)))
                                                          (assert x7948)))
                                                       (g7946
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7949
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7949))))
                                                g7946)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7950
                                                        (letrec ((x7951
                                                                  (letrec ((x7952
                                                                            (letrec ((x7953
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7953))))
                                                                    (cdr
                                                                     x7952))))
                                                          (car x7951))))
                                                g7950)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7954 #f)) g7954)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7955
                                                        (letrec ((x7957
                                                                  (letrec ((x7958
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7958)))
                                                                 (x7956
                                                                  (gcd m n)))
                                                          (/ x7957 x7956))))
                                                g7955)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7959
                                                        (letrec ((x7961
                                                                  (number? x)))
                                                          (assert x7961)))
                                                       (g7960
                                                        (letrec ((x7962
                                                                  (<= x y)))
                                                          (not x7962))))
                                                g7960)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7963
                                                        (letrec ((x7967
                                                                  (list? l)))
                                                          (assert x7967)))
                                                       (g7964
                                                        (letrec ((x7968
                                                                  (number?
                                                                   index)))
                                                          (assert x7968)))
                                                       (g7965
                                                        (letrec ((x7969
                                                                  (letrec ((x7970
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7970))))
                                                          (assert x7969)))
                                                       (g7966
                                                        (letrec ((x-cnd7971
                                                                  (= index 0)))
                                                          (if x-cnd7971
                                                            (car l)
                                                            (letrec ((x7973
                                                                      (cdr l))
                                                                     (x7972
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7973
                                                               x7972))))))
                                                g7966)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7974
                                                        (letrec ((x-cnd7975
                                                                  (= b 0)))
                                                          (if x-cnd7975
                                                            a
                                                            (letrec ((x7976
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7976))))))
                                                g7974)))
                                           (image
                                            (lambda ()
                                              (letrec ((g7977
                                                        (cons 'image '())))
                                                g7977)))
                                           (image?
                                            (lambda (image7437)
                                              (letrec ((g7978
                                                        (letrec ((x7979
                                                                  (car
                                                                   image7437)))
                                                          (eq? x7979 'image))))
                                                g7978)))
                                           (image/c
                                            (lambda (j7336 k7337 v7335)
                                              (letrec ((g7980
                                                        (cons image '())))
                                                g7980)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g7981 (image)))
                                                g7981)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g7982 (image)))
                                                g7982)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g7983 (image)))
                                                g7983)))
                                           (posn
                                            (lambda (x7439 y7440)
                                              (letrec ((g7984
                                                        (letrec ((x7985
                                                                  (letrec ((x7986
                                                                            (cons
                                                                             y7440
                                                                             '())))
                                                                    (cons
                                                                     x7439
                                                                     x7986))))
                                                          (cons 'posn x7985))))
                                                g7984)))
                                           (posn?
                                            (lambda (posn7438)
                                              (letrec ((g7987
                                                        (letrec ((x7988
                                                                  (car
                                                                   posn7438)))
                                                          (eq? x7988 'posn))))
                                                g7987)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g7989
                                                        (letrec ((x7990
                                                                  (cdr posn)))
                                                          (car x7990))))
                                                g7989)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g7991
                                                        (letrec ((x7992
                                                                  (letrec ((x7993
                                                                            (cdr
                                                                             posn)))
                                                                    (cdr
                                                                     x7993))))
                                                          (car x7992))))
                                                g7991)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g7994
                                                        (letrec ((x-cnd7995
                                                                  (letrec ((x7997
                                                                            (posn-x
                                                                             p1))
                                                                           (x7996
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x7997
                                                                     x7996))))
                                                          (if x-cnd7995
                                                            (letrec ((x7999
                                                                      (posn-y
                                                                       p1))
                                                                     (x7998
                                                                      (posn-y
                                                                       p2)))
                                                              (= x7999 x7998))
                                                            #f))))
                                                g7994)))
                                           (snake
                                            (lambda (dir7444 segs7445)
                                              (letrec ((g8000
                                                        (letrec ((x8001
                                                                  (letrec ((x8002
                                                                            (cons
                                                                             segs7445
                                                                             '())))
                                                                    (cons
                                                                     dir7444
                                                                     x8002))))
                                                          (cons
                                                           'snake
                                                           x8001))))
                                                g8000)))
                                           (snake?
                                            (lambda (snake7443)
                                              (letrec ((g8003
                                                        (letrec ((x8004
                                                                  (car
                                                                   snake7443)))
                                                          (eq? x8004 'snake))))
                                                g8003)))
                                           (snake-dir
                                            (lambda (snake)
                                              (letrec ((g8005
                                                        (letrec ((x8006
                                                                  (cdr snake)))
                                                          (car x8006))))
                                                g8005)))
                                           (snake-segs
                                            (lambda (snake)
                                              (letrec ((g8007
                                                        (letrec ((x8008
                                                                  (letrec ((x8009
                                                                            (cdr
                                                                             snake)))
                                                                    (cdr
                                                                     x8009))))
                                                          (car x8008))))
                                                g8007)))
                                           (world
                                            (lambda (snake7449 food7450)
                                              (letrec ((g8010
                                                        (letrec ((x8011
                                                                  (letrec ((x8012
                                                                            (cons
                                                                             food7450
                                                                             '())))
                                                                    (cons
                                                                     snake7449
                                                                     x8012))))
                                                          (cons
                                                           'world
                                                           x8011))))
                                                g8010)))
                                           (world?
                                            (lambda (world7448)
                                              (letrec ((g8013
                                                        (letrec ((x8014
                                                                  (car
                                                                   world7448)))
                                                          (eq? x8014 'world))))
                                                g8013)))
                                           (world-snake
                                            (lambda (world)
                                              (letrec ((g8015
                                                        (letrec ((x8016
                                                                  (cdr world)))
                                                          (car x8016))))
                                                g8015)))
                                           (world-food
                                            (lambda (world)
                                              (letrec ((g8017
                                                        (letrec ((x8018
                                                                  (letrec ((x8019
                                                                            (cdr
                                                                             world)))
                                                                    (cdr
                                                                     x8019))))
                                                          (car x8018))))
                                                g8017)))
                                           (DIR/C
                                            (lambda (g7342 g7343 g7344)
                                              (letrec ((g8020
                                                        (letrec ((x-cnd8021
                                                                  ((lambda (v7341)
                                                                     (letrec ((g8022
                                                                               (letrec ((x-cnd8023
                                                                                         (eq?
                                                                                          'up
                                                                                          v7341)))
                                                                                 (if x-cnd8023
                                                                                   #t
                                                                                   (letrec ((x-cnd8024
                                                                                             (eq?
                                                                                              'down
                                                                                              v7341)))
                                                                                     (if x-cnd8024
                                                                                       #t
                                                                                       (letrec ((x-cnd8025
                                                                                                 (eq?
                                                                                                  'left
                                                                                                  v7341)))
                                                                                         (if x-cnd8025
                                                                                           #t
                                                                                           (eq?
                                                                                            'right
                                                                                            v7341)))))))))
                                                                       g8022))
                                                                   g7344)))
                                                          (if x-cnd8021
                                                            g7344
                                                            (blame
                                                             g7342
                                                             '(lambda (v7341)
                                                                (if (eq?
                                                                     'up
                                                                     v7341)
                                                                  #t
                                                                  (if (eq?
                                                                       'down
                                                                       v7341)
                                                                    #t
                                                                    (if (eq?
                                                                         'left
                                                                         v7341)
                                                                      #t
                                                                      (eq?
                                                                       'right
                                                                       v7341))))))))))
                                                g8020)))
                                           (POSN/C
                                            (lambda (j7346 k7347 v7345)
                                              (letrec ((g8026
                                                        (letrec ((checked7348
                                                                  (letrec ((x8027
                                                                            (letrec ((x8028
                                                                                      (cdr
                                                                                       v7345)))
                                                                              (car
                                                                               x8028))))
                                                                    (real?/c
                                                                     j7346
                                                                     k7347
                                                                     x8027))))
                                                          (letrec ((g8029
                                                                    (letrec ((checked7349
                                                                              (letrec ((x8030
                                                                                        (letrec ((x8031
                                                                                                  (letrec ((x8032
                                                                                                            (cdr
                                                                                                             v7345)))
                                                                                                    (cdr
                                                                                                     x8032))))
                                                                                          (car
                                                                                           x8031))))
                                                                                (real?/c
                                                                                 j7346
                                                                                 k7347
                                                                                 x8030))))
                                                                      (letrec ((g8033
                                                                                (letrec ((x8034
                                                                                          (letrec ((x8035
                                                                                                    (cons
                                                                                                     checked7349
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7348
                                                                                             x8035))))
                                                                                  (cons
                                                                                   posn
                                                                                   x8034))))
                                                                        g8033))))
                                                            g8029))))
                                                g8026)))
                                           (SNAKE/C
                                            (lambda (j7352 k7353 v7351)
                                              (letrec ((g8036
                                                        (letrec ((checked7354
                                                                  (letrec ((x8037
                                                                            (letrec ((x8038
                                                                                      (cdr
                                                                                       v7351)))
                                                                              (car
                                                                               x8038))))
                                                                    (DIR/C
                                                                     j7352
                                                                     k7353
                                                                     x8037))))
                                                          (letrec ((g8039
                                                                    (letrec ((checked7355
                                                                              (letrec ((x8043
                                                                                        (letrec ((x8044
                                                                                                  (listof
                                                                                                   POSN/C)))
                                                                                          (and/c
                                                                                           cons?/c
                                                                                           x8044)))
                                                                                       (x8040
                                                                                        (letrec ((x8041
                                                                                                  (letrec ((x8042
                                                                                                            (cdr
                                                                                                             v7351)))
                                                                                                    (cdr
                                                                                                     x8042))))
                                                                                          (car
                                                                                           x8041))))
                                                                                (x8043
                                                                                 j7352
                                                                                 k7353
                                                                                 x8040))))
                                                                      (letrec ((g8045
                                                                                (letrec ((x8046
                                                                                          (letrec ((x8047
                                                                                                    (cons
                                                                                                     checked7355
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7354
                                                                                             x8047))))
                                                                                  (cons
                                                                                   snake
                                                                                   x8046))))
                                                                        g8045))))
                                                            g8039))))
                                                g8036)))
                                           (WORLD/C
                                            (lambda (j7358 k7359 v7357)
                                              (letrec ((g8048
                                                        (letrec ((checked7360
                                                                  (letrec ((x8049
                                                                            (letrec ((x8050
                                                                                      (cdr
                                                                                       v7357)))
                                                                              (car
                                                                               x8050))))
                                                                    (SNAKE/C
                                                                     j7358
                                                                     k7359
                                                                     x8049))))
                                                          (letrec ((g8051
                                                                    (letrec ((checked7361
                                                                              (letrec ((x8052
                                                                                        (letrec ((x8053
                                                                                                  (letrec ((x8054
                                                                                                            (cdr
                                                                                                             v7357)))
                                                                                                    (cdr
                                                                                                     x8054))))
                                                                                          (car
                                                                                           x8053))))
                                                                                (POSN/C
                                                                                 j7358
                                                                                 k7359
                                                                                 x8052))))
                                                                      (letrec ((g8055
                                                                                (letrec ((x8056
                                                                                          (letrec ((x8057
                                                                                                    (cons
                                                                                                     checked7361
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7360
                                                                                             x8057))))
                                                                                  (cons
                                                                                   world
                                                                                   x8056))))
                                                                        g8055))))
                                                            g8051))))
                                                g8048)))
                                           (GRID-SIZE 30)
                                           (BOARD-HEIGHT 20)
                                           (BOARD-WIDTH 30)
                                           (BOARD-HEIGHT-PIXELS
                                            (* GRID-SIZE BOARD-HEIGHT))
                                           (BOARD-WIDTH-PIXELS
                                            (* GRID-SIZE BOARD-WIDTH))
                                           (BACKGROUND
                                            (empty-scene
                                             BOARD-WIDTH-PIXELS
                                             BOARD-HEIGHT-PIXELS))
                                           (SEGMENT-RADIUS (/ GRID-SIZE 2))
                                           (SEGMENT-IMAGE
                                            (circle
                                             SEGMENT-RADIUS
                                             "solid"
                                             "red"))
                                           (FOOD-RADIUS SEGMENT-RADIUS)
                                           (FOOD-IMAGE
                                            (circle
                                             FOOD-RADIUS
                                             "solid"
                                             "green"))
                                           (WORLD
                                            (letrec ((x8059
                                                      (letrec ((x8060
                                                                (letrec ((x8061
                                                                          (posn
                                                                           5
                                                                           3)))
                                                                  (cons
                                                                   x8061
                                                                   empty))))
                                                        (snake 'right x8060)))
                                                     (x8058 (posn 8 12)))
                                              (world x8059 x8058)))
                                           (snake-wall-collide?
                                            (lambda (snk)
                                              (letrec ((g8062
                                                        (letrec ((x8063
                                                                  (letrec ((x8064
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x8064))))
                                                          (head-collide?
                                                           x8063))))
                                                g8062)))
                                           (head-collide?
                                            (lambda (p)
                                              (letrec ((g8065
                                                        (letrec ((val7259
                                                                  (letrec ((x8066
                                                                            (posn-x
                                                                             p)))
                                                                    (<=
                                                                     x8066
                                                                     0))))
                                                          (letrec ((g8067
                                                                    (if val7259
                                                                      val7259
                                                                      (letrec ((val7260
                                                                                (letrec ((x8068
                                                                                          (posn-x
                                                                                           p)))
                                                                                  (>=
                                                                                   x8068
                                                                                   BOARD-WIDTH))))
                                                                        (letrec ((g8069
                                                                                  (if val7260
                                                                                    val7260
                                                                                    (letrec ((val7261
                                                                                              (letrec ((x8070
                                                                                                        (posn-y
                                                                                                         p)))
                                                                                                (<=
                                                                                                 x8070
                                                                                                 0))))
                                                                                      (letrec ((g8071
                                                                                                (if val7261
                                                                                                  val7261
                                                                                                  (letrec ((x8072
                                                                                                            (posn-y
                                                                                                             p)))
                                                                                                    (>=
                                                                                                     x8072
                                                                                                     BOARD-HEIGHT)))))
                                                                                        g8071)))))
                                                                          g8069)))))
                                                            g8067))))
                                                g8065)))
                                           (snake-self-collide?
                                            (lambda (snk)
                                              (letrec ((g8073
                                                        (letrec ((x8076
                                                                  (letrec ((x8077
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x8077)))
                                                                 (x8074
                                                                  (letrec ((x8075
                                                                            (snake-segs
                                                                             snk)))
                                                                    (cdr
                                                                     x8075))))
                                                          (segs-self-collide?
                                                           x8076
                                                           x8074))))
                                                g8073)))
                                           (segs-self-collide?
                                            (lambda (h segs)
                                              (letrec ((g8078
                                                        (letrec ((x-cnd8079
                                                                  (empty?
                                                                   segs)))
                                                          (if x-cnd8079
                                                            (letrec ((g8080
                                                                      #f))
                                                              g8080)
                                                            (letrec ((g8081
                                                                      (letrec ((x8084
                                                                                (letrec ((x8085
                                                                                          (car
                                                                                           segs)))
                                                                                  (posn=?
                                                                                   x8085
                                                                                   h)))
                                                                               (x8082
                                                                                (letrec ((x8083
                                                                                          (cdr
                                                                                           segs)))
                                                                                  (segs-self-collide?
                                                                                   h
                                                                                   x8083))))
                                                                        (or x8084
                                                                            x8082))))
                                                              g8081)))))
                                                g8078)))
                                           (cut-tail
                                            (lambda (segs)
                                              (letrec ((g8086
                                                        (letrec ((r
                                                                  (cdr segs)))
                                                          (letrec ((g8087
                                                                    (letrec ((x-cnd8088
                                                                              (empty?
                                                                               r)))
                                                                      (if x-cnd8088
                                                                        (letrec ((g8089
                                                                                  empty))
                                                                          g8089)
                                                                        (letrec ((g8090
                                                                                  (letrec ((x8092
                                                                                            (car
                                                                                             segs))
                                                                                           (x8091
                                                                                            (cut-tail
                                                                                             r)))
                                                                                    (cons
                                                                                     x8092
                                                                                     x8091))))
                                                                          g8090)))))
                                                            g8087))))
                                                g8086)))
                                           (next-head
                                            (lambda (seg dir)
                                              (letrec ((g8093
                                                        (letrec ((x-cnd8094
                                                                  (equal?
                                                                   'right
                                                                   dir)))
                                                          (if x-cnd8094
                                                            (letrec ((g8095
                                                                      (letrec ((x8097
                                                                                (letrec ((x8098
                                                                                          (posn-x
                                                                                           seg)))
                                                                                  (add1
                                                                                   x8098)))
                                                                               (x8096
                                                                                (posn-y
                                                                                 seg)))
                                                                        (posn
                                                                         x8097
                                                                         x8096))))
                                                              g8095)
                                                            (letrec ((x-cnd8099
                                                                      (equal?
                                                                       'left
                                                                       dir)))
                                                              (if x-cnd8099
                                                                (letrec ((g8100
                                                                          (letrec ((x8102
                                                                                    (letrec ((x8103
                                                                                              (posn-x
                                                                                               seg)))
                                                                                      (sub1
                                                                                       x8103)))
                                                                                   (x8101
                                                                                    (posn-y
                                                                                     seg)))
                                                                            (posn
                                                                             x8102
                                                                             x8101))))
                                                                  g8100)
                                                                (letrec ((x-cnd8104
                                                                          (equal?
                                                                           'down
                                                                           dir)))
                                                                  (if x-cnd8104
                                                                    (letrec ((g8105
                                                                              (letrec ((x8108
                                                                                        (posn-x
                                                                                         seg))
                                                                                       (x8106
                                                                                        (letrec ((x8107
                                                                                                  (posn-y
                                                                                                   seg)))
                                                                                          (sub1
                                                                                           x8107))))
                                                                                (posn
                                                                                 x8108
                                                                                 x8106))))
                                                                      g8105)
                                                                    (letrec ((g8109
                                                                              (letrec ((x8112
                                                                                        (posn-x
                                                                                         seg))
                                                                                       (x8110
                                                                                        (letrec ((x8111
                                                                                                  (posn-y
                                                                                                   seg)))
                                                                                          (add1
                                                                                           x8111))))
                                                                                (posn
                                                                                 x8112
                                                                                 x8110))))
                                                                      g8109)))))))))
                                                g8093)))
                                           (snake-slither
                                            (lambda (snk)
                                              (letrec ((g8113
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g8114
                                                                    (letrec ((x8115
                                                                              (letrec ((x8118
                                                                                        (letrec ((x8119
                                                                                                  (letrec ((x8120
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x8120))))
                                                                                          (next-head
                                                                                           x8119
                                                                                           d)))
                                                                                       (x8116
                                                                                        (letrec ((x8117
                                                                                                  (snake-segs
                                                                                                   snk)))
                                                                                          (cut-tail
                                                                                           x8117))))
                                                                                (cons
                                                                                 x8118
                                                                                 x8116))))
                                                                      (snake
                                                                       d
                                                                       x8115))))
                                                            g8114))))
                                                g8113)))
                                           (snake-grow
                                            (lambda (snk)
                                              (letrec ((g8121
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g8122
                                                                    (letrec ((x8123
                                                                              (letrec ((x8125
                                                                                        (letrec ((x8126
                                                                                                  (letrec ((x8127
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x8127))))
                                                                                          (next-head
                                                                                           x8126
                                                                                           d)))
                                                                                       (x8124
                                                                                        (snake-segs
                                                                                         snk)))
                                                                                (cons
                                                                                 x8125
                                                                                 x8124))))
                                                                      (snake
                                                                       d
                                                                       x8123))))
                                                            g8122))))
                                                g8121)))
                                           (world->world
                                            (lambda (w)
                                              (letrec ((g8128
                                                        (letrec ((x-cnd8129
                                                                  (eating? w)))
                                                          (if x-cnd8129
                                                            (letrec ((g8130
                                                                      (snake-eat
                                                                       w)))
                                                              g8130)
                                                            (letrec ((g8131
                                                                      (letrec ((x8133
                                                                                (letrec ((x8134
                                                                                          (world-snake
                                                                                           w)))
                                                                                  (snake-slither
                                                                                   x8134)))
                                                                               (x8132
                                                                                (world-food
                                                                                 w)))
                                                                        (world
                                                                         x8133
                                                                         x8132))))
                                                              g8131)))))
                                                g8128)))
                                           (eating?
                                            (lambda (w)
                                              (letrec ((g8135
                                                        (letrec ((x8139
                                                                  (world-food
                                                                   w))
                                                                 (x8136
                                                                  (letrec ((x8137
                                                                            (letrec ((x8138
                                                                                      (world-snake
                                                                                       w)))
                                                                              (snake-segs
                                                                               x8138))))
                                                                    (car
                                                                     x8137))))
                                                          (posn=?
                                                           x8139
                                                           x8136))))
                                                g8135)))
                                           (snake-change-direction
                                            (lambda (snk dir)
                                              (letrec ((g8140
                                                        (letrec ((x8141
                                                                  (snake-segs
                                                                   snk)))
                                                          (snake dir x8141))))
                                                g8140)))
                                           (world-change-dir
                                            (lambda (w dir)
                                              (letrec ((g8142
                                                        (letrec ((x8144
                                                                  (letrec ((x8145
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-change-direction
                                                                     x8145
                                                                     dir)))
                                                                 (x8143
                                                                  (world-food
                                                                   w)))
                                                          (world
                                                           x8144
                                                           x8143))))
                                                g8142)))
                                           (snake-eat
                                            (lambda (w)
                                              (letrec ((g8146
                                                        (letrec ((x8150
                                                                  (letrec ((x8151
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-grow
                                                                     x8151)))
                                                                 (x8147
                                                                  (letrec ((x8149
                                                                            (-
                                                                             BOARD-WIDTH
                                                                             1))
                                                                           (x8148
                                                                            (-
                                                                             BOARD-HEIGHT
                                                                             1)))
                                                                    (posn
                                                                     x8149
                                                                     x8148))))
                                                          (world
                                                           x8150
                                                           x8147))))
                                                g8146)))
                                           (handle-key
                                            (lambda (w ke)
                                              (letrec ((g8152
                                                        (letrec ((x-cnd8153
                                                                  (equal?
                                                                   ke
                                                                   "w")))
                                                          (if x-cnd8153
                                                            (letrec ((g8154
                                                                      (world-change-dir
                                                                       w
                                                                       'up)))
                                                              g8154)
                                                            (letrec ((x-cnd8155
                                                                      (equal?
                                                                       ke
                                                                       "s")))
                                                              (if x-cnd8155
                                                                (letrec ((g8156
                                                                          (world-change-dir
                                                                           w
                                                                           'down)))
                                                                  g8156)
                                                                (letrec ((x-cnd8157
                                                                          (equal?
                                                                           ke
                                                                           "a")))
                                                                  (if x-cnd8157
                                                                    (letrec ((g8158
                                                                              (world-change-dir
                                                                               w
                                                                               'left)))
                                                                      g8158)
                                                                    (letrec ((x-cnd8159
                                                                              (equal?
                                                                               ke
                                                                               "d")))
                                                                      (if x-cnd8159
                                                                        (letrec ((g8160
                                                                                  (world-change-dir
                                                                                   w
                                                                                   'right)))
                                                                          g8160)
                                                                        (letrec ((g8161
                                                                                  w))
                                                                          g8161)))))))))))
                                                g8152)))
                                           (game-over?
                                            (lambda (w)
                                              (letrec ((g8162
                                                        (letrec ((val7262
                                                                  (letrec ((x8163
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-wall-collide?
                                                                     x8163))))
                                                          (letrec ((g8164
                                                                    (if val7262
                                                                      val7262
                                                                      (letrec ((x8165
                                                                                (world-snake
                                                                                 w)))
                                                                        (snake-self-collide?
                                                                         x8165)))))
                                                            g8164))))
                                                g8162)))
                                           (world->scene
                                            (lambda (w)
                                              (letrec ((g8166
                                                        (letrec ((x8169
                                                                  (world-snake
                                                                   w))
                                                                 (x8167
                                                                  (letrec ((x8168
                                                                            (world-food
                                                                             w)))
                                                                    (food+scene
                                                                     x8168
                                                                     BACKGROUND))))
                                                          (snake+scene
                                                           x8169
                                                           x8167))))
                                                g8166)))
                                           (food+scene
                                            (lambda (f scn)
                                              (letrec ((g8170
                                                        (letrec ((x8172
                                                                  (posn-x f))
                                                                 (x8171
                                                                  (posn-y f)))
                                                          (place-image-on-grid
                                                           FOOD-IMAGE
                                                           x8172
                                                           x8171
                                                           scn))))
                                                g8170)))
                                           (place-image-on-grid
                                            (lambda (img x y scn)
                                              (letrec ((g8173
                                                        (letrec ((x8176
                                                                  (*
                                                                   GRID-SIZE
                                                                   x))
                                                                 (x8174
                                                                  (letrec ((x8175
                                                                            (*
                                                                             GRID-SIZE
                                                                             y)))
                                                                    (-
                                                                     BOARD-HEIGHT-PIXELS
                                                                     x8175))))
                                                          (place-image
                                                           img
                                                           x8176
                                                           x8174
                                                           scn))))
                                                g8173)))
                                           (snake+scene
                                            (lambda (snk scn)
                                              (letrec ((g8177
                                                        (letrec ((x8178
                                                                  (snake-segs
                                                                   snk)))
                                                          (segments+scene
                                                           x8178
                                                           scn))))
                                                g8177)))
                                           (segments+scene
                                            (lambda (segs scn)
                                              (letrec ((g8179
                                                        (letrec ((x-cnd8180
                                                                  (empty?
                                                                   segs)))
                                                          (if x-cnd8180
                                                            (letrec ((g8181
                                                                      scn))
                                                              g8181)
                                                            (letrec ((g8182
                                                                      (letrec ((x8185
                                                                                (cdr
                                                                                 segs))
                                                                               (x8183
                                                                                (letrec ((x8184
                                                                                          (car
                                                                                           segs)))
                                                                                  (segment+scene
                                                                                   x8184
                                                                                   scn))))
                                                                        (segments+scene
                                                                         x8185
                                                                         x8183))))
                                                              g8182)))))
                                                g8179)))
                                           (segment+scene
                                            (lambda (seg scn)
                                              (letrec ((g8186
                                                        (letrec ((x8188
                                                                  (posn-x seg))
                                                                 (x8187
                                                                  (posn-y
                                                                   seg)))
                                                          (place-image-on-grid
                                                           SEGMENT-IMAGE
                                                           x8188
                                                           x8187
                                                           scn))))
                                                g8186))))
                                    (letrec ((g8189
                                              (letrec ((x8223
                                                        ((lambda (j7365
                                                                  k7366
                                                                  f7367)
                                                           (letrec ((g8224
                                                                     (lambda (g7363
                                                                              g7364)
                                                                       (letrec ((g8225
                                                                                 (letrec ((x8226
                                                                                           (letrec ((x8228
                                                                                                     (POSN/C
                                                                                                      j7365
                                                                                                      k7366
                                                                                                      g7363))
                                                                                                    (x8227
                                                                                                     (POSN/C
                                                                                                      j7365
                                                                                                      k7366
                                                                                                      g7364)))
                                                                                             (f7367
                                                                                              x8228
                                                                                              x8227))))
                                                                                   (boolean?/c
                                                                                    j7365
                                                                                    k7366
                                                                                    x8226))))
                                                                         g8225))))
                                                             g8224))
                                                         'module
                                                         'importer
                                                         posn=?))
                                                       (x8218
                                                        (letrec ((x8219
                                                                  (letrec ((x8222
                                                                            (input))
                                                                           (x8220
                                                                            (letrec ((x8221
                                                                                      (input)))
                                                                              (cons
                                                                               x8221
                                                                               '()))))
                                                                    (cons
                                                                     x8222
                                                                     x8220))))
                                                          (cons 'posn x8219)))
                                                       (x8213
                                                        (letrec ((x8214
                                                                  (letrec ((x8217
                                                                            (input))
                                                                           (x8215
                                                                            (letrec ((x8216
                                                                                      (input)))
                                                                              (cons
                                                                               x8216
                                                                               '()))))
                                                                    (cons
                                                                     x8217
                                                                     x8215))))
                                                          (cons 'posn x8214))))
                                                (x8223 x8218 x8213)))
                                             (g8190
                                              (WORLD/C
                                               'module
                                               'importer
                                               WORLD))
                                             (g8191
                                              (image/c
                                               'module
                                               'importer
                                               BACKGROUND))
                                             (g8192
                                              (image/c
                                               'module
                                               'importer
                                               FOOD-IMAGE))
                                             (g8193
                                              (image/c
                                               'module
                                               'importer
                                               SEGMENT-IMAGE))
                                             (g8194
                                              (real?/c
                                               'module
                                               'importer
                                               GRID-SIZE))
                                             (g8195
                                              (real?/c
                                               'module
                                               'importer
                                               BOARD-HEIGHT-PIXELS))
                                             (g8196
                                              (real?/c
                                               'module
                                               'importer
                                               BOARD-WIDTH))
                                             (g8197
                                              (real?/c
                                               'module
                                               'importer
                                               BOARD-HEIGHT))
                                             (g8198
                                              (letrec ((x8234
                                                        ((lambda (j7369
                                                                  k7370
                                                                  f7371)
                                                           (letrec ((g8235
                                                                     (lambda (g7368)
                                                                       (letrec ((g8236
                                                                                 (letrec ((x8237
                                                                                           (letrec ((x8238
                                                                                                     (SNAKE/C
                                                                                                      j7369
                                                                                                      k7370
                                                                                                      g7368)))
                                                                                             (f7371
                                                                                              x8238))))
                                                                                   (boolean?/c
                                                                                    j7369
                                                                                    k7370
                                                                                    x8237))))
                                                                         g8236))))
                                                             g8235))
                                                         'module
                                                         'importer
                                                         snake-wall-collide?))
                                                       (x8229
                                                        (letrec ((x8230
                                                                  (letrec ((x8233
                                                                            (input))
                                                                           (x8231
                                                                            (letrec ((x8232
                                                                                      (input)))
                                                                              (cons
                                                                               x8232
                                                                               '()))))
                                                                    (cons
                                                                     x8233
                                                                     x8231))))
                                                          (cons
                                                           'snake
                                                           x8230))))
                                                (x8234 x8229)))
                                             (g8199
                                              (letrec ((x8244
                                                        ((lambda (j7373
                                                                  k7374
                                                                  f7375)
                                                           (letrec ((g8245
                                                                     (lambda (g7372)
                                                                       (letrec ((g8246
                                                                                 (letrec ((x8247
                                                                                           (letrec ((x8248
                                                                                                     (SNAKE/C
                                                                                                      j7373
                                                                                                      k7374
                                                                                                      g7372)))
                                                                                             (f7375
                                                                                              x8248))))
                                                                                   (boolean?/c
                                                                                    j7373
                                                                                    k7374
                                                                                    x8247))))
                                                                         g8246))))
                                                             g8245))
                                                         'module
                                                         'importer
                                                         snake-self-collide?))
                                                       (x8239
                                                        (letrec ((x8240
                                                                  (letrec ((x8243
                                                                            (input))
                                                                           (x8241
                                                                            (letrec ((x8242
                                                                                      (input)))
                                                                              (cons
                                                                               x8242
                                                                               '()))))
                                                                    (cons
                                                                     x8243
                                                                     x8241))))
                                                          (cons
                                                           'snake
                                                           x8240))))
                                                (x8244 x8239)))
                                             (g8200
                                              (letrec ((x8250
                                                        ((lambda (j7377
                                                                  k7378
                                                                  f7379)
                                                           (letrec ((g8251
                                                                     (lambda (g7376)
                                                                       (letrec ((g8252
                                                                                 (letrec ((x8257
                                                                                           (listof
                                                                                            POSN/C))
                                                                                          (x8253
                                                                                           (letrec ((x8254
                                                                                                     (letrec ((x8255
                                                                                                               (letrec ((x8256
                                                                                                                         (listof
                                                                                                                          POSN/C)))
                                                                                                                 (and/c
                                                                                                                  cons?/c
                                                                                                                  x8256))))
                                                                                                       (x8255
                                                                                                        j7377
                                                                                                        k7378
                                                                                                        g7376))))
                                                                                             (f7379
                                                                                              x8254))))
                                                                                   (x8257
                                                                                    j7377
                                                                                    k7378
                                                                                    x8253))))
                                                                         g8252))))
                                                             g8251))
                                                         'module
                                                         'importer
                                                         cut-tail))
                                                       (x8249 (input)))
                                                (x8250 x8249)))
                                             (g8201
                                              (letrec ((x8263
                                                        ((lambda (j7381
                                                                  k7382
                                                                  f7383)
                                                           (letrec ((g8264
                                                                     (lambda (g7380)
                                                                       (letrec ((g8265
                                                                                 (letrec ((x8266
                                                                                           (letrec ((x8267
                                                                                                     (SNAKE/C
                                                                                                      j7381
                                                                                                      k7382
                                                                                                      g7380)))
                                                                                             (f7383
                                                                                              x8267))))
                                                                                   (SNAKE/C
                                                                                    j7381
                                                                                    k7382
                                                                                    x8266))))
                                                                         g8265))))
                                                             g8264))
                                                         'module
                                                         'importer
                                                         snake-slither))
                                                       (x8258
                                                        (letrec ((x8259
                                                                  (letrec ((x8262
                                                                            (input))
                                                                           (x8260
                                                                            (letrec ((x8261
                                                                                      (input)))
                                                                              (cons
                                                                               x8261
                                                                               '()))))
                                                                    (cons
                                                                     x8262
                                                                     x8260))))
                                                          (cons
                                                           'snake
                                                           x8259))))
                                                (x8263 x8258)))
                                             (g8202
                                              (letrec ((x8273
                                                        ((lambda (j7385
                                                                  k7386
                                                                  f7387)
                                                           (letrec ((g8274
                                                                     (lambda (g7384)
                                                                       (letrec ((g8275
                                                                                 (letrec ((x8276
                                                                                           (letrec ((x8277
                                                                                                     (SNAKE/C
                                                                                                      j7385
                                                                                                      k7386
                                                                                                      g7384)))
                                                                                             (f7387
                                                                                              x8277))))
                                                                                   (SNAKE/C
                                                                                    j7385
                                                                                    k7386
                                                                                    x8276))))
                                                                         g8275))))
                                                             g8274))
                                                         'module
                                                         'importer
                                                         snake-grow))
                                                       (x8268
                                                        (letrec ((x8269
                                                                  (letrec ((x8272
                                                                            (input))
                                                                           (x8270
                                                                            (letrec ((x8271
                                                                                      (input)))
                                                                              (cons
                                                                               x8271
                                                                               '()))))
                                                                    (cons
                                                                     x8272
                                                                     x8270))))
                                                          (cons
                                                           'snake
                                                           x8269))))
                                                (x8273 x8268)))
                                             (g8203
                                              (letrec ((x8292
                                                        ((lambda (j7390
                                                                  k7391
                                                                  f7392)
                                                           (letrec ((g8293
                                                                     (lambda (g7388
                                                                              g7389)
                                                                       (letrec ((g8294
                                                                                 (letrec ((x8295
                                                                                           (letrec ((x8297
                                                                                                     (WORLD/C
                                                                                                      j7390
                                                                                                      k7391
                                                                                                      g7388))
                                                                                                    (x8296
                                                                                                     (DIR/C
                                                                                                      j7390
                                                                                                      k7391
                                                                                                      g7389)))
                                                                                             (f7392
                                                                                              x8297
                                                                                              x8296))))
                                                                                   (WORLD/C
                                                                                    j7390
                                                                                    k7391
                                                                                    x8295))))
                                                                         g8294))))
                                                             g8293))
                                                         'module
                                                         'importer
                                                         world-change-dir))
                                                       (x8279
                                                        (letrec ((x8280
                                                                  (letrec ((x8287
                                                                            (letrec ((x8288
                                                                                      (letrec ((x8291
                                                                                                (input))
                                                                                               (x8289
                                                                                                (letrec ((x8290
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8290
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8291
                                                                                         x8289))))
                                                                              (cons
                                                                               'snake
                                                                               x8288)))
                                                                           (x8281
                                                                            (letrec ((x8282
                                                                                      (letrec ((x8283
                                                                                                (letrec ((x8286
                                                                                                          (input))
                                                                                                         (x8284
                                                                                                          (letrec ((x8285
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x8285
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x8286
                                                                                                   x8284))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x8283))))
                                                                              (cons
                                                                               x8282
                                                                               '()))))
                                                                    (cons
                                                                     x8287
                                                                     x8281))))
                                                          (cons 'world x8280)))
                                                       (x8278 (input)))
                                                (x8292 x8279 x8278)))
                                             (g8204
                                              (letrec ((x8311
                                                        ((lambda (j7394
                                                                  k7395
                                                                  f7396)
                                                           (letrec ((g8312
                                                                     (lambda (g7393)
                                                                       (letrec ((g8313
                                                                                 (letrec ((x8314
                                                                                           (letrec ((x8315
                                                                                                     (WORLD/C
                                                                                                      j7394
                                                                                                      k7395
                                                                                                      g7393)))
                                                                                             (f7396
                                                                                              x8315))))
                                                                                   (WORLD/C
                                                                                    j7394
                                                                                    k7395
                                                                                    x8314))))
                                                                         g8313))))
                                                             g8312))
                                                         'module
                                                         'importer
                                                         world->world))
                                                       (x8298
                                                        (letrec ((x8299
                                                                  (letrec ((x8306
                                                                            (letrec ((x8307
                                                                                      (letrec ((x8310
                                                                                                (input))
                                                                                               (x8308
                                                                                                (letrec ((x8309
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8309
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8310
                                                                                         x8308))))
                                                                              (cons
                                                                               'snake
                                                                               x8307)))
                                                                           (x8300
                                                                            (letrec ((x8301
                                                                                      (letrec ((x8302
                                                                                                (letrec ((x8305
                                                                                                          (input))
                                                                                                         (x8303
                                                                                                          (letrec ((x8304
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x8304
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x8305
                                                                                                   x8303))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x8302))))
                                                                              (cons
                                                                               x8301
                                                                               '()))))
                                                                    (cons
                                                                     x8306
                                                                     x8300))))
                                                          (cons
                                                           'world
                                                           x8299))))
                                                (x8311 x8298)))
                                             (g8205
                                              (letrec ((x8330
                                                        ((lambda (j7399
                                                                  k7400
                                                                  f7401)
                                                           (letrec ((g8331
                                                                     (lambda (g7397
                                                                              g7398)
                                                                       (letrec ((g8332
                                                                                 (letrec ((x8333
                                                                                           (letrec ((x8335
                                                                                                     (WORLD/C
                                                                                                      j7399
                                                                                                      k7400
                                                                                                      g7397))
                                                                                                    (x8334
                                                                                                     (string?/c
                                                                                                      j7399
                                                                                                      k7400
                                                                                                      g7398)))
                                                                                             (f7401
                                                                                              x8335
                                                                                              x8334))))
                                                                                   (WORLD/C
                                                                                    j7399
                                                                                    k7400
                                                                                    x8333))))
                                                                         g8332))))
                                                             g8331))
                                                         'module
                                                         'importer
                                                         handle-key))
                                                       (x8317
                                                        (letrec ((x8318
                                                                  (letrec ((x8325
                                                                            (letrec ((x8326
                                                                                      (letrec ((x8329
                                                                                                (input))
                                                                                               (x8327
                                                                                                (letrec ((x8328
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8328
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8329
                                                                                         x8327))))
                                                                              (cons
                                                                               'snake
                                                                               x8326)))
                                                                           (x8319
                                                                            (letrec ((x8320
                                                                                      (letrec ((x8321
                                                                                                (letrec ((x8324
                                                                                                          (input))
                                                                                                         (x8322
                                                                                                          (letrec ((x8323
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x8323
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x8324
                                                                                                   x8322))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x8321))))
                                                                              (cons
                                                                               x8320
                                                                               '()))))
                                                                    (cons
                                                                     x8325
                                                                     x8319))))
                                                          (cons 'world x8318)))
                                                       (x8316 (input)))
                                                (x8330 x8317 x8316)))
                                             (g8206
                                              (letrec ((x8349
                                                        ((lambda (j7403
                                                                  k7404
                                                                  f7405)
                                                           (letrec ((g8350
                                                                     (lambda (g7402)
                                                                       (letrec ((g8351
                                                                                 (letrec ((x8352
                                                                                           (letrec ((x8353
                                                                                                     (WORLD/C
                                                                                                      j7403
                                                                                                      k7404
                                                                                                      g7402)))
                                                                                             (f7405
                                                                                              x8353))))
                                                                                   (boolean?/c
                                                                                    j7403
                                                                                    k7404
                                                                                    x8352))))
                                                                         g8351))))
                                                             g8350))
                                                         'module
                                                         'importer
                                                         game-over?))
                                                       (x8336
                                                        (letrec ((x8337
                                                                  (letrec ((x8344
                                                                            (letrec ((x8345
                                                                                      (letrec ((x8348
                                                                                                (input))
                                                                                               (x8346
                                                                                                (letrec ((x8347
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8347
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8348
                                                                                         x8346))))
                                                                              (cons
                                                                               'snake
                                                                               x8345)))
                                                                           (x8338
                                                                            (letrec ((x8339
                                                                                      (letrec ((x8340
                                                                                                (letrec ((x8343
                                                                                                          (input))
                                                                                                         (x8341
                                                                                                          (letrec ((x8342
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x8342
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x8343
                                                                                                   x8341))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x8340))))
                                                                              (cons
                                                                               x8339
                                                                               '()))))
                                                                    (cons
                                                                     x8344
                                                                     x8338))))
                                                          (cons
                                                           'world
                                                           x8337))))
                                                (x8349 x8336)))
                                             (g8207
                                              (letrec ((x8367
                                                        ((lambda (j7407
                                                                  k7408
                                                                  f7409)
                                                           (letrec ((g8368
                                                                     (lambda (g7406)
                                                                       (letrec ((g8369
                                                                                 (letrec ((x8370
                                                                                           (letrec ((x8371
                                                                                                     (WORLD/C
                                                                                                      j7407
                                                                                                      k7408
                                                                                                      g7406)))
                                                                                             (f7409
                                                                                              x8371))))
                                                                                   (image/c
                                                                                    j7407
                                                                                    k7408
                                                                                    x8370))))
                                                                         g8369))))
                                                             g8368))
                                                         'module
                                                         'importer
                                                         world->scene))
                                                       (x8354
                                                        (letrec ((x8355
                                                                  (letrec ((x8362
                                                                            (letrec ((x8363
                                                                                      (letrec ((x8366
                                                                                                (input))
                                                                                               (x8364
                                                                                                (letrec ((x8365
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8365
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8366
                                                                                         x8364))))
                                                                              (cons
                                                                               'snake
                                                                               x8363)))
                                                                           (x8356
                                                                            (letrec ((x8357
                                                                                      (letrec ((x8358
                                                                                                (letrec ((x8361
                                                                                                          (input))
                                                                                                         (x8359
                                                                                                          (letrec ((x8360
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x8360
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x8361
                                                                                                   x8359))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x8358))))
                                                                              (cons
                                                                               x8357
                                                                               '()))))
                                                                    (cons
                                                                     x8362
                                                                     x8356))))
                                                          (cons
                                                           'world
                                                           x8355))))
                                                (x8367 x8354)))
                                             (g8208
                                              (letrec ((x8378
                                                        ((lambda (j7412
                                                                  k7413
                                                                  f7414)
                                                           (letrec ((g8379
                                                                     (lambda (g7410
                                                                              g7411)
                                                                       (letrec ((g8380
                                                                                 (letrec ((x8381
                                                                                           (letrec ((x8383
                                                                                                     (POSN/C
                                                                                                      j7412
                                                                                                      k7413
                                                                                                      g7410))
                                                                                                    (x8382
                                                                                                     (image/c
                                                                                                      j7412
                                                                                                      k7413
                                                                                                      g7411)))
                                                                                             (f7414
                                                                                              x8383
                                                                                              x8382))))
                                                                                   (image/c
                                                                                    j7412
                                                                                    k7413
                                                                                    x8381))))
                                                                         g8380))))
                                                             g8379))
                                                         'module
                                                         'importer
                                                         food+scene))
                                                       (x8373
                                                        (letrec ((x8374
                                                                  (letrec ((x8377
                                                                            (input))
                                                                           (x8375
                                                                            (letrec ((x8376
                                                                                      (input)))
                                                                              (cons
                                                                               x8376
                                                                               '()))))
                                                                    (cons
                                                                     x8377
                                                                     x8375))))
                                                          (cons 'posn x8374)))
                                                       (x8372
                                                        (cons 'image '())))
                                                (x8378 x8373 x8372)))
                                             (g8209
                                              (letrec ((x8388
                                                        ((lambda (j7419
                                                                  k7420
                                                                  f7421)
                                                           (letrec ((g8389
                                                                     (lambda (g7415
                                                                              g7416
                                                                              g7417
                                                                              g7418)
                                                                       (letrec ((g8390
                                                                                 (letrec ((x8391
                                                                                           (letrec ((x8395
                                                                                                     (image/c
                                                                                                      j7419
                                                                                                      k7420
                                                                                                      g7415))
                                                                                                    (x8394
                                                                                                     (real?/c
                                                                                                      j7419
                                                                                                      k7420
                                                                                                      g7416))
                                                                                                    (x8393
                                                                                                     (real?/c
                                                                                                      j7419
                                                                                                      k7420
                                                                                                      g7417))
                                                                                                    (x8392
                                                                                                     (image/c
                                                                                                      j7419
                                                                                                      k7420
                                                                                                      g7418)))
                                                                                             (f7421
                                                                                              x8395
                                                                                              x8394
                                                                                              x8393
                                                                                              x8392))))
                                                                                   (image/c
                                                                                    j7419
                                                                                    k7420
                                                                                    x8391))))
                                                                         g8390))))
                                                             g8389))
                                                         'module
                                                         'importer
                                                         place-image-on-grid))
                                                       (x8387
                                                        (cons 'image '()))
                                                       (x8386 (input))
                                                       (x8385 (input))
                                                       (x8384
                                                        (cons 'image '())))
                                                (x8388
                                                 x8387
                                                 x8386
                                                 x8385
                                                 x8384)))
                                             (g8210
                                              (letrec ((x8402
                                                        ((lambda (j7424
                                                                  k7425
                                                                  f7426)
                                                           (letrec ((g8403
                                                                     (lambda (g7422
                                                                              g7423)
                                                                       (letrec ((g8404
                                                                                 (letrec ((x8405
                                                                                           (letrec ((x8407
                                                                                                     (SNAKE/C
                                                                                                      j7424
                                                                                                      k7425
                                                                                                      g7422))
                                                                                                    (x8406
                                                                                                     (image/c
                                                                                                      j7424
                                                                                                      k7425
                                                                                                      g7423)))
                                                                                             (f7426
                                                                                              x8407
                                                                                              x8406))))
                                                                                   (image/c
                                                                                    j7424
                                                                                    k7425
                                                                                    x8405))))
                                                                         g8404))))
                                                             g8403))
                                                         'module
                                                         'importer
                                                         snake+scene))
                                                       (x8397
                                                        (letrec ((x8398
                                                                  (letrec ((x8401
                                                                            (input))
                                                                           (x8399
                                                                            (letrec ((x8400
                                                                                      (input)))
                                                                              (cons
                                                                               x8400
                                                                               '()))))
                                                                    (cons
                                                                     x8401
                                                                     x8399))))
                                                          (cons 'snake x8398)))
                                                       (x8396
                                                        (cons 'image '())))
                                                (x8402 x8397 x8396)))
                                             (g8211
                                              (letrec ((x8410
                                                        ((lambda (j7429
                                                                  k7430
                                                                  f7431)
                                                           (letrec ((g8411
                                                                     (lambda (g7427
                                                                              g7428)
                                                                       (letrec ((g8412
                                                                                 (letrec ((x8413
                                                                                           (letrec ((x8415
                                                                                                     (letrec ((x8416
                                                                                                               (listof
                                                                                                                POSN/C)))
                                                                                                       (x8416
                                                                                                        j7429
                                                                                                        k7430
                                                                                                        g7427)))
                                                                                                    (x8414
                                                                                                     (image/c
                                                                                                      j7429
                                                                                                      k7430
                                                                                                      g7428)))
                                                                                             (f7431
                                                                                              x8415
                                                                                              x8414))))
                                                                                   (image/c
                                                                                    j7429
                                                                                    k7430
                                                                                    x8413))))
                                                                         g8412))))
                                                             g8411))
                                                         'module
                                                         'importer
                                                         segments+scene))
                                                       (x8409 (input))
                                                       (x8408
                                                        (cons 'image '())))
                                                (x8410 x8409 x8408)))
                                             (g8212
                                              (letrec ((x8423
                                                        ((lambda (j7434
                                                                  k7435
                                                                  f7436)
                                                           (letrec ((g8424
                                                                     (lambda (g7432
                                                                              g7433)
                                                                       (letrec ((g8425
                                                                                 (letrec ((x8426
                                                                                           (letrec ((x8428
                                                                                                     (POSN/C
                                                                                                      j7434
                                                                                                      k7435
                                                                                                      g7432))
                                                                                                    (x8427
                                                                                                     (image/c
                                                                                                      j7434
                                                                                                      k7435
                                                                                                      g7433)))
                                                                                             (f7436
                                                                                              x8428
                                                                                              x8427))))
                                                                                   (image/c
                                                                                    j7434
                                                                                    k7435
                                                                                    x8426))))
                                                                         g8425))))
                                                             g8424))
                                                         'module
                                                         'importer
                                                         segment+scene))
                                                       (x8418
                                                        (letrec ((x8419
                                                                  (letrec ((x8422
                                                                            (input))
                                                                           (x8420
                                                                            (letrec ((x8421
                                                                                      (input)))
                                                                              (cons
                                                                               x8421
                                                                               '()))))
                                                                    (cons
                                                                     x8422
                                                                     x8420))))
                                                          (cons 'posn x8419)))
                                                       (x8417
                                                        (cons 'image '())))
                                                (x8423 x8418 x8417))))
                                      g8212))))
                          g7466))))
              g7464)))
    g7463))
