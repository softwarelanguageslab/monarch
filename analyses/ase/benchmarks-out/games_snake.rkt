(letrec ((any? (lambda (v) (letrec ((g7450 #t)) g7450)))
         (meta (lambda (v) (letrec ((g7451 v)) g7451)))
         (member
          (lambda (v lst)
            (letrec ((g7452
                      (letrec ((g7453
                                (letrec ((x-e7454 lst))
                                  (match
                                   x-e7454
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7455 (eq? v v1)))
                                       (if x-cnd7455 #t (member v vs)))))))))
                        g7453)))
              g7452)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7456 (lambda (v) (letrec ((g7457 v)) g7457)))) g7456)))
         (nonzero?
          (lambda (v)
            (letrec ((g7458 (letrec ((x7459 (= v 0))) (not x7459)))) g7458))))
  (letrec ((g7460
            (letrec ((g7461
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7462 '())
                                 (g7463
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7464
                                                        (lambda (k j lst)
                                                          (letrec ((g7465
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7466
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7466))
                                                                     lst)))
                                                            g7465))))
                                                g7464)))
                                           (real?/c
                                            (lambda (g7263 g7264 g7265)
                                              (letrec ((g7467
                                                        (letrec ((x-cnd7468
                                                                  (real?
                                                                   g7265)))
                                                          (if x-cnd7468
                                                            g7265
                                                            (blame
                                                             g7263
                                                             'real?)))))
                                                g7467)))
                                           (boolean?/c
                                            (lambda (g7266 g7267 g7268)
                                              (letrec ((g7469
                                                        (letrec ((x-cnd7470
                                                                  (boolean?
                                                                   g7268)))
                                                          (if x-cnd7470
                                                            g7268
                                                            (blame
                                                             g7266
                                                             'boolean?)))))
                                                g7469)))
                                           (number?/c
                                            (lambda (g7269 g7270 g7271)
                                              (letrec ((g7471
                                                        (letrec ((x-cnd7472
                                                                  (number?
                                                                   g7271)))
                                                          (if x-cnd7472
                                                            g7271
                                                            (blame
                                                             g7269
                                                             'number?)))))
                                                g7471)))
                                           (any/c
                                            (lambda (g7272 g7273 g7274)
                                              (letrec ((g7473
                                                        (letrec ((x-cnd7474
                                                                  ((lambda (v)
                                                                     (letrec ((g7475
                                                                               #t))
                                                                       g7475))
                                                                   g7274)))
                                                          (if x-cnd7474
                                                            g7274
                                                            (blame
                                                             g7272
                                                             '(lambda (v)
                                                                #t))))))
                                                g7473)))
                                           (any?/c
                                            (lambda (g7275 g7276 g7277)
                                              (letrec ((g7476
                                                        (letrec ((x-cnd7477
                                                                  ((lambda (v)
                                                                     (letrec ((g7478
                                                                               #t))
                                                                       g7478))
                                                                   g7277)))
                                                          (if x-cnd7477
                                                            g7277
                                                            (blame
                                                             g7275
                                                             '(lambda (v)
                                                                #t))))))
                                                g7476)))
                                           (cons?/c
                                            (lambda (g7278 g7279 g7280)
                                              (letrec ((g7479
                                                        (letrec ((x-cnd7480
                                                                  (pair?
                                                                   g7280)))
                                                          (if x-cnd7480
                                                            g7280
                                                            (blame
                                                             g7278
                                                             'pair?)))))
                                                g7479)))
                                           (pair?/c
                                            (lambda (g7281 g7282 g7283)
                                              (letrec ((g7481
                                                        (letrec ((x-cnd7482
                                                                  (pair?
                                                                   g7283)))
                                                          (if x-cnd7482
                                                            g7283
                                                            (blame
                                                             g7281
                                                             'pair?)))))
                                                g7481)))
                                           (integer?/c
                                            (lambda (g7284 g7285 g7286)
                                              (letrec ((g7483
                                                        (letrec ((x-cnd7484
                                                                  (integer?
                                                                   g7286)))
                                                          (if x-cnd7484
                                                            g7286
                                                            (blame
                                                             g7284
                                                             'integer?)))))
                                                g7483)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7485
                                                        (lambda (k j v)
                                                          (letrec ((g7486
                                                                    (letrec ((x-cnd7487
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7487
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7486))))
                                                g7485)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7488
                                                        (lambda (k j v)
                                                          (letrec ((g7489
                                                                    (letrec ((x-cnd7490
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7490
                                                                        '()
                                                                        (letrec ((x7494
                                                                                  (letrec ((x7495
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7495)))
                                                                                 (x7491
                                                                                  (letrec ((x7493
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7492
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7493
                                                                                     k
                                                                                     j
                                                                                     x7492))))
                                                                          (orig-cons
                                                                           x7494
                                                                           x7491))))))
                                                            g7489))))
                                                g7488)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7496 #t)) g7496)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7497
                                                        (letrec ((x7498
                                                                  (= v 0)))
                                                          (not x7498))))
                                                g7497)))
                                           (nonzero?/c
                                            (lambda (g7287 g7288 g7289)
                                              (letrec ((g7499
                                                        (letrec ((x-cnd7500
                                                                  ((lambda (v)
                                                                     (letrec ((g7501
                                                                               (letrec ((x7502
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7502))))
                                                                       g7501))
                                                                   g7289)))
                                                          (if x-cnd7500
                                                            g7289
                                                            (blame
                                                             g7287
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7499)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7503 v)) g7503)))
                                           (+
                                            ((lambda (j7292 k7293 f7294)
                                               (letrec ((g7505
                                                         (lambda (g7290 g7291)
                                                           (letrec ((g7506
                                                                     (letrec ((x7507
                                                                               (letrec ((x7509
                                                                                         (number?/c
                                                                                          j7292
                                                                                          k7293
                                                                                          g7290))
                                                                                        (x7508
                                                                                         (number?/c
                                                                                          j7292
                                                                                          k7293
                                                                                          g7291)))
                                                                                 (f7294
                                                                                  x7509
                                                                                  x7508))))
                                                                       (number?/c
                                                                        j7292
                                                                        k7293
                                                                        x7507))))
                                                             g7506))))
                                                 g7505))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7504 (orig-+ a b)))
                                                 g7504))))
                                           (-
                                            ((lambda (j7297 k7298 f7299)
                                               (letrec ((g7511
                                                         (lambda (g7295 g7296)
                                                           (letrec ((g7512
                                                                     (letrec ((x7513
                                                                               (letrec ((x7515
                                                                                         (number?/c
                                                                                          j7297
                                                                                          k7298
                                                                                          g7295))
                                                                                        (x7514
                                                                                         (number?/c
                                                                                          j7297
                                                                                          k7298
                                                                                          g7296)))
                                                                                 (f7299
                                                                                  x7515
                                                                                  x7514))))
                                                                       (number?/c
                                                                        j7297
                                                                        k7298
                                                                        x7513))))
                                                             g7512))))
                                                 g7511))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7510 (orig-- a b)))
                                                 g7510))))
                                           (*
                                            ((lambda (j7302 k7303 f7304)
                                               (letrec ((g7517
                                                         (lambda (g7300 g7301)
                                                           (letrec ((g7518
                                                                     (letrec ((x7519
                                                                               (letrec ((x7521
                                                                                         (number?/c
                                                                                          j7302
                                                                                          k7303
                                                                                          g7300))
                                                                                        (x7520
                                                                                         (number?/c
                                                                                          j7302
                                                                                          k7303
                                                                                          g7301)))
                                                                                 (f7304
                                                                                  x7521
                                                                                  x7520))))
                                                                       (number?/c
                                                                        j7302
                                                                        k7303
                                                                        x7519))))
                                                             g7518))))
                                                 g7517))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7516 (orig-* a b)))
                                                 g7516))))
                                           (/
                                            ((lambda (j7307 k7308 f7309)
                                               (letrec ((g7523
                                                         (lambda (g7305 g7306)
                                                           (letrec ((g7524
                                                                     (letrec ((x7525
                                                                               (letrec ((x7527
                                                                                         (number?/c
                                                                                          j7307
                                                                                          k7308
                                                                                          g7305))
                                                                                        (x7526
                                                                                         (number?/c
                                                                                          j7307
                                                                                          k7308
                                                                                          g7306)))
                                                                                 (f7309
                                                                                  x7527
                                                                                  x7526))))
                                                                       (number?/c
                                                                        j7307
                                                                        k7308
                                                                        x7525))))
                                                             g7524))))
                                                 g7523))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7522 (orig-/ a b)))
                                                 g7522))))
                                           (car
                                            ((lambda (j7311 k7312 f7313)
                                               (letrec ((g7529
                                                         (lambda (g7310)
                                                           (letrec ((g7530
                                                                     (letrec ((x7531
                                                                               (letrec ((x7532
                                                                                         (pair?/c
                                                                                          j7311
                                                                                          k7312
                                                                                          g7310)))
                                                                                 (f7313
                                                                                  x7532))))
                                                                       (any/c
                                                                        j7311
                                                                        k7312
                                                                        x7531))))
                                                             g7530))))
                                                 g7529))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7528 (orig-car p)))
                                                 g7528))))
                                           (cdr
                                            ((lambda (j7315 k7316 f7317)
                                               (letrec ((g7534
                                                         (lambda (g7314)
                                                           (letrec ((g7535
                                                                     (letrec ((x7536
                                                                               (letrec ((x7537
                                                                                         (pair?/c
                                                                                          j7315
                                                                                          k7316
                                                                                          g7314)))
                                                                                 (f7317
                                                                                  x7537))))
                                                                       (any/c
                                                                        j7315
                                                                        k7316
                                                                        x7536))))
                                                             g7535))))
                                                 g7534))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7533 (orig-cdr p)))
                                                 g7533))))
                                           (cons
                                            ((lambda (j7320 k7321 f7322)
                                               (letrec ((g7539
                                                         (lambda (g7318 g7319)
                                                           (letrec ((g7540
                                                                     (letrec ((x7541
                                                                               (letrec ((x7543
                                                                                         (any/c
                                                                                          j7320
                                                                                          k7321
                                                                                          g7318))
                                                                                        (x7542
                                                                                         (any/c
                                                                                          j7320
                                                                                          k7321
                                                                                          g7319)))
                                                                                 (f7322
                                                                                  x7543
                                                                                  x7542))))
                                                                       (pair?/c
                                                                        j7320
                                                                        k7321
                                                                        x7541))))
                                                             g7540))))
                                                 g7539))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7538
                                                         (orig-cons a b)))
                                                 g7538))))
                                           (vector-ref
                                            ((lambda (j7324 k7325 f7326)
                                               (letrec ((g7545
                                                         (lambda (g7323)
                                                           (letrec ((g7546
                                                                     (letrec ((x7547
                                                                               (letrec ((x7548
                                                                                         (vector?/c
                                                                                          j7324
                                                                                          k7325
                                                                                          g7323)))
                                                                                 (f7326
                                                                                  x7548))))
                                                                       (integer?/c
                                                                        j7324
                                                                        k7325
                                                                        x7547))))
                                                             g7546))))
                                                 g7545))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7544
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7544))))
                                           (vector-set!
                                            ((lambda (j7329 k7330 f7331)
                                               (letrec ((g7550
                                                         (lambda (g7327 g7328)
                                                           (letrec ((g7551
                                                                     (letrec ((x7552
                                                                               (letrec ((x7554
                                                                                         (vector?/c
                                                                                          j7329
                                                                                          k7330
                                                                                          g7327))
                                                                                        (x7553
                                                                                         (integer?/c
                                                                                          j7329
                                                                                          k7330
                                                                                          g7328)))
                                                                                 (f7331
                                                                                  x7554
                                                                                  x7553))))
                                                                       (any/c
                                                                        j7329
                                                                        k7330
                                                                        x7552))))
                                                             g7551))))
                                                 g7550))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7549
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7549))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7555
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7555)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7556
                                                        (letrec ((x7557
                                                                  (letrec ((x7558
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7558))))
                                                          (cdr x7557))))
                                                g7556)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7559
                                                        (letrec ((x7562
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7562)))
                                                       (g7560
                                                        (letrec ((x7563
                                                                  (list? l)))
                                                          (assert x7563)))
                                                       (g7561
                                                        (letrec ((x-cnd7564
                                                                  (null? l)))
                                                          (if x-cnd7564
                                                            '()
                                                            (letrec ((x7567
                                                                      (letrec ((x7568
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7568)))
                                                                     (x7565
                                                                      (letrec ((x7566
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7566))))
                                                              (cons
                                                               x7567
                                                               x7565))))))
                                                g7561)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7569
                                                        (letrec ((x7570
                                                                  (car x)))
                                                          (cdr x7570))))
                                                g7569)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7571
                                                        (letrec ((x7572
                                                                  (letrec ((x7573
                                                                            (letrec ((x7574
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7574))))
                                                                    (cdr
                                                                     x7573))))
                                                          (car x7572))))
                                                g7571)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7575
                                                        (letrec ((x7576
                                                                  (letrec ((x7577
                                                                            (letrec ((x7578
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7578))))
                                                                    (car
                                                                     x7577))))
                                                          (cdr x7576))))
                                                g7575)))
                                           (call-with-output-file
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
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7584
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7585 res))
                                                            g7585))))
                                                g7581)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7586
                                                        (letrec ((x7587
                                                                  (letrec ((x7588
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7588))))
                                                          (car x7587))))
                                                g7586)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7589
                                                        (letrec ((x7590
                                                                  (letrec ((x7591
                                                                            (letrec ((x7592
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7592))))
                                                                    (car
                                                                     x7591))))
                                                          (cdr x7590))))
                                                g7589)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7593
                                                        (letrec ((x7595
                                                                  (list? l)))
                                                          (assert x7595)))
                                                       (g7594
                                                        (letrec ((x-cnd7596
                                                                  (null? l)))
                                                          (if x-cnd7596
                                                            #f
                                                            (letrec ((x-cnd7597
                                                                      (letrec ((x7598
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7598
                                                                         k))))
                                                              (if x-cnd7597
                                                                (car l)
                                                                (letrec ((x7599
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7599))))))))
                                                g7594)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7600
                                                        (letrec ((x7601
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7601))))
                                                g7600)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7602
                                                        (letrec ((x7604
                                                                  (list? l)))
                                                          (assert x7604)))
                                                       (g7603
                                                        (letrec ((x-cnd7605
                                                                  (null? l)))
                                                          (if x-cnd7605
                                                            ""
                                                            (letrec ((x7608
                                                                      (letrec ((x7609
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7609)))
                                                                     (x7606
                                                                      (letrec ((x7607
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7607))))
                                                              (string-append
                                                               x7608
                                                               x7606))))))
                                                g7603)))
                                           (char<=?
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
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7615
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7615))))
                                                g7612)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7616
                                                        (letrec ((x7617
                                                                  (letrec ((x7618
                                                                            (letrec ((x7619
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7619))))
                                                                    (cdr
                                                                     x7618))))
                                                          (cdr x7617))))
                                                g7616)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7620
                                                        (letrec ((x7623
                                                                  (list? l)))
                                                          (assert x7623)))
                                                       (g7621
                                                        (letrec ((x7624
                                                                  (number?)))
                                                          (assert x7624)))
                                                       (g7622
                                                        (letrec ((x-cnd7625
                                                                  (zero? k)))
                                                          (if x-cnd7625
                                                            x
                                                            (letrec ((x7627
                                                                      (cdr x))
                                                                     (x7626
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7627
                                                               x7626))))))
                                                g7622)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7628 '())) g7628)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7629
                                                        (letrec ((x-cnd7630
                                                                  (letrec ((x7631
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7631))))
                                                          (if x-cnd7630
                                                            (letrec ((x7632
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7632))
                                                            #f))))
                                                g7629)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7633
                                                        (letrec ((x7635
                                                                  (number? x)))
                                                          (assert x7635)))
                                                       (g7634
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7636
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7637
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7637)))))
                                                            g7636))))
                                                g7634)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7638
                                                        (letrec ((val7244
                                                                  (letrec ((x7639
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7639
                                                                     9))))
                                                          (letrec ((g7640
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7641
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7641
                                                                                   10))))
                                                                        (letrec ((g7642
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7643
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7643
                                                                                       32)))))
                                                                          g7642)))))
                                                            g7640))))
                                                g7638)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7644
                                                        (letrec ((x7645
                                                                  (letrec ((x7646
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7646))))
                                                          (cdr x7645))))
                                                g7644)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7647
                                                        (letrec ((x7649
                                                                  (number? x)))
                                                          (assert x7649)))
                                                       (g7648 (> x 0)))
                                                g7648)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7650 #f)) g7650)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7651
                                                        (letrec ((x7652
                                                                  (cdr x)))
                                                          (cdr x7652))))
                                                g7651)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7653
                                                        (letrec ((x7655
                                                                  (number? x)))
                                                          (assert x7655)))
                                                       (g7654
                                                        (letrec ((x-cnd7656
                                                                  (< x 0)))
                                                          (if x-cnd7656
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7654)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7657
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7658
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7659
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7659
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7660
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7661
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7661
                                                                                                  (letrec ((x-cnd7662
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7662
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7663
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7664
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7664
                                                                                                                (letrec ((x-cnd7665
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7665
                                                                                                                    (letrec ((x-cnd7666
                                                                                                                              (letrec ((x7668
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7667
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7668
                                                                                                                                 x7667))))
                                                                                                                      (if x-cnd7666
                                                                                                                        (letrec ((x7670
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7669
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7670
                                                                                                                           x7669))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7671
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7672
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7672
                                                                                                                    (letrec ((x-cnd7673
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7673
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7674
                                                                                                                                    (letrec ((x-cnd7675
                                                                                                                                              (letrec ((x7676
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7676
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7675
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7677
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7678
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7679
                                                                                                                                                                                      (letrec ((x7681
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7680
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7681
                                                                                                                                                                                         x7680))))
                                                                                                                                                                              (if x-cnd7679
                                                                                                                                                                                (letrec ((x7682
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7682))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7678))))
                                                                                                                                                      g7677))))
                                                                                                                                          (letrec ((g7683
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7683))
                                                                                                                                        #f))))
                                                                                                                            g7674))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7671)))))
                                                                                        g7663)))))
                                                                          g7660)))))
                                                            g7658))))
                                                g7657)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7684
                                                        (letrec ((x7685
                                                                  (letrec ((x7686
                                                                            (letrec ((x7687
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7687))))
                                                                    (car
                                                                     x7686))))
                                                          (cdr x7685))))
                                                g7684)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7688
                                                        (letrec ((x7689
                                                                  (letrec ((x7690
                                                                            (letrec ((x7691
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7691))))
                                                                    (car
                                                                     x7690))))
                                                          (car x7689))))
                                                g7688)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7692 (eq? x y)))
                                                g7692)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7693
                                                        (letrec ((x7695
                                                                  (number? x)))
                                                          (assert x7695)))
                                                       (g7694
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7696
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7697
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7697)))))
                                                            g7696))))
                                                g7694)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7698
                                                        (letrec ((x7701
                                                                  (string?
                                                                   filename)))
                                                          (assert x7701)))
                                                       (g7699
                                                        (letrec ((x7702
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7702)))
                                                       (g7700
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7703
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7704 res))
                                                            g7704))))
                                                g7700)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7705 (cons x '())))
                                                g7705)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7706
                                                        (letrec ((x7709
                                                                  (char? c1)))
                                                          (assert x7709)))
                                                       (g7707
                                                        (letrec ((x7710
                                                                  (char? c2)))
                                                          (assert x7710)))
                                                       (g7708
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7711
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7711))))
                                                g7708)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7712
                                                        (letrec ((x7713
                                                                  (letrec ((x7714
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7714))))
                                                          (cdr x7713))))
                                                g7712)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7715
                                                        (letrec ((x7716
                                                                  (letrec ((x7717
                                                                            (letrec ((x7718
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7718))))
                                                                    (car
                                                                     x7717))))
                                                          (cdr x7716))))
                                                g7715)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7719
                                                        (letrec ((x7720
                                                                  (letrec ((x7721
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7721))))
                                                          (car x7720))))
                                                g7719)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7722
                                                        (letrec ((x7723
                                                                  (letrec ((x7724
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7724))))
                                                          (car x7723))))
                                                g7722)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7725
                                                        (letrec ((x7728
                                                                  (char? c1)))
                                                          (assert x7728)))
                                                       (g7726
                                                        (letrec ((x7729
                                                                  (char? c2)))
                                                          (assert x7729)))
                                                       (g7727
                                                        (letrec ((x7730
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7730))))
                                                g7727)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7731
                                                        (letrec ((x7732
                                                                  (letrec ((x7733
                                                                            (letrec ((x7734
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7734))))
                                                                    (car
                                                                     x7733))))
                                                          (car x7732))))
                                                g7731)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7735
                                                        (letrec ((x7737
                                                                  (number? x)))
                                                          (assert x7737)))
                                                       (g7736 (< x 0)))
                                                g7736)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7738 (memq e l)))
                                                g7738)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7739
                                                        (letrec ((x7740
                                                                  (letrec ((x7741
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7741))))
                                                          (car x7740))))
                                                g7739)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7742 '())) g7742)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7743
                                                        (letrec ((x7745
                                                                  (list? l)))
                                                          (assert x7745)))
                                                       (g7744
                                                        (letrec ((x-cnd7746
                                                                  (null? l)))
                                                          (if x-cnd7746
                                                            '()
                                                            (letrec ((x7749
                                                                      (letrec ((x7750
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7750)))
                                                                     (x7747
                                                                      (letrec ((x7748
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7748))))
                                                              (append
                                                               x7749
                                                               x7747))))))
                                                g7744)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7751
                                                        (letrec ((x7752
                                                                  (letrec ((x7753
                                                                            (letrec ((x7754
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7754))))
                                                                    (car
                                                                     x7753))))
                                                          (car x7752))))
                                                g7751)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7755
                                                        (letrec ((x7756
                                                                  (letrec ((x7757
                                                                            (letrec ((x7758
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7758))))
                                                                    (cdr
                                                                     x7757))))
                                                          (cdr x7756))))
                                                g7755)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7759
                                                        (letrec ((x7761
                                                                  (number? x)))
                                                          (assert x7761)))
                                                       (g7760
                                                        (letrec ((x7762
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7762))))
                                                g7760)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7763
                                                        (letrec ((x7764
                                                                  (letrec ((x7765
                                                                            (letrec ((x7766
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7766))))
                                                                    (car
                                                                     x7765))))
                                                          (car x7764))))
                                                g7763)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7767
                                                        (letrec ((x7770
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7770)))
                                                       (g7768
                                                        (letrec ((x7771
                                                                  (list?
                                                                   args)))
                                                          (assert x7771)))
                                                       (g7769
                                                        (letrec ((x-cnd7772
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7772
                                                            (letrec ((g7773
                                                                      (proc)))
                                                              g7773)
                                                            (letrec ((x-cnd7774
                                                                      (letrec ((x7775
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7775))))
                                                              (if x-cnd7774
                                                                (letrec ((g7776
                                                                          (letrec ((x7777
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7777))))
                                                                  g7776)
                                                                (letrec ((x-cnd7778
                                                                          (letrec ((x7779
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7779))))
                                                                  (if x-cnd7778
                                                                    (letrec ((g7780
                                                                              (letrec ((x7782
                                                                                        (car
                                                                                         args))
                                                                                       (x7781
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7782
                                                                                 x7781))))
                                                                      g7780)
                                                                    (letrec ((x-cnd7783
                                                                              (letrec ((x7784
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7784))))
                                                                      (if x-cnd7783
                                                                        (letrec ((g7785
                                                                                  (letrec ((x7788
                                                                                            (car
                                                                                             args))
                                                                                           (x7787
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7786
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7788
                                                                                     x7787
                                                                                     x7786))))
                                                                          g7785)
                                                                        (letrec ((x-cnd7789
                                                                                  (letrec ((x7790
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7790))))
                                                                          (if x-cnd7789
                                                                            (letrec ((g7791
                                                                                      (letrec ((x7795
                                                                                                (car
                                                                                                 args))
                                                                                               (x7794
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7793
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7792
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7795
                                                                                         x7794
                                                                                         x7793
                                                                                         x7792))))
                                                                              g7791)
                                                                            (letrec ((x-cnd7796
                                                                                      (letrec ((x7797
                                                                                                (letrec ((x7798
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7798))))
                                                                                        (null?
                                                                                         x7797))))
                                                                              (if x-cnd7796
                                                                                (letrec ((g7799
                                                                                          (letrec ((x7805
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7804
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7803
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7802
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7800
                                                                                                    (letrec ((x7801
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7801))))
                                                                                            (proc
                                                                                             x7805
                                                                                             x7804
                                                                                             x7803
                                                                                             x7802
                                                                                             x7800))))
                                                                                  g7799)
                                                                                (letrec ((x-cnd7806
                                                                                          (letrec ((x7807
                                                                                                    (letrec ((x7808
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7808))))
                                                                                            (null?
                                                                                             x7807))))
                                                                                  (if x-cnd7806
                                                                                    (letrec ((g7809
                                                                                              (letrec ((x7817
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7816
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7815
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7814
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7812
                                                                                                        (letrec ((x7813
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7813)))
                                                                                                       (x7810
                                                                                                        (letrec ((x7811
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7811))))
                                                                                                (proc
                                                                                                 x7817
                                                                                                 x7816
                                                                                                 x7815
                                                                                                 x7814
                                                                                                 x7812
                                                                                                 x7810))))
                                                                                      g7809)
                                                                                    (letrec ((x-cnd7818
                                                                                              (letrec ((x7819
                                                                                                        (letrec ((x7820
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7820))))
                                                                                                (null?
                                                                                                 x7819))))
                                                                                      (if x-cnd7818
                                                                                        (letrec ((g7821
                                                                                                  (letrec ((x7831
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7830
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7829
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7828
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7826
                                                                                                            (letrec ((x7827
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7827)))
                                                                                                           (x7824
                                                                                                            (letrec ((x7825
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7825)))
                                                                                                           (x7822
                                                                                                            (letrec ((x7823
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7823))))
                                                                                                    (proc
                                                                                                     x7831
                                                                                                     x7830
                                                                                                     x7829
                                                                                                     x7828
                                                                                                     x7826
                                                                                                     x7824
                                                                                                     x7822))))
                                                                                          g7821)
                                                                                        (letrec ((g7832
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7832)))))))))))))))))))
                                                g7769)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7833
                                                        (letrec ((x7835
                                                                  (list? l)))
                                                          (assert x7835)))
                                                       (g7834
                                                        (letrec ((x-cnd7836
                                                                  (null? l)))
                                                          (if x-cnd7836
                                                            #f
                                                            (letrec ((x-cnd7837
                                                                      (letrec ((x7838
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7838
                                                                         e))))
                                                              (if x-cnd7837
                                                                l
                                                                (letrec ((x7839
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7839))))))))
                                                g7834)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7840
                                                        (letrec ((x7841
                                                                  (letrec ((x7842
                                                                            (letrec ((x7843
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7843))))
                                                                    (cdr
                                                                     x7842))))
                                                          (cdr x7841))))
                                                g7840)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7844
                                                        (letrec ((x7845
                                                                  (letrec ((x7846
                                                                            (letrec ((x7847
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7847))))
                                                                    (cdr
                                                                     x7846))))
                                                          (car x7845))))
                                                g7844)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7848 (random 42)))
                                                g7848)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7849
                                                        (letrec ((x7851
                                                                  (number? x)))
                                                          (assert x7851)))
                                                       (g7850 (= x 0)))
                                                g7850)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7852
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7853
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7853))))
                                                g7852)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7854
                                                        (letrec ((x7855
                                                                  (cdr x)))
                                                          (car x7855))))
                                                g7854)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7856
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd7857
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd7857
                                                                      (letrec ((x7858
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x7858))
                                                                      #f))))
                                                          (letrec ((g7859
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g7859))))
                                                g7856)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7860
                                                        (letrec ((x7861
                                                                  (letrec ((x7862
                                                                            (letrec ((x7863
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7863))))
                                                                    (cdr
                                                                     x7862))))
                                                          (cdr x7861))))
                                                g7860)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7864
                                                        (letrec ((x-cnd7865
                                                                  (letrec ((x7866
                                                                            #\0))
                                                                    (char<=?
                                                                     x7866
                                                                     c))))
                                                          (if x-cnd7865
                                                            (letrec ((x7867
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7867))
                                                            #f))))
                                                g7864)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7868
                                                        (letrec ((x7870
                                                                  (list? l)))
                                                          (assert x7870)))
                                                       (g7869
                                                        (letrec ((x-cnd7871
                                                                  (null? l)))
                                                          (if x-cnd7871
                                                            #f
                                                            (letrec ((x-cnd7872
                                                                      (letrec ((x7873
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7873
                                                                         k))))
                                                              (if x-cnd7872
                                                                (car l)
                                                                (letrec ((x7874
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7874))))))))
                                                g7869)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7875 (if x #f #t)))
                                                g7875)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7876 (append l1 l2)))
                                                g7876)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7877
                                                        (letrec ((x7879
                                                                  (list? l)))
                                                          (assert x7879)))
                                                       (g7878
                                                        (letrec ((x-cnd7880
                                                                  (null? l)))
                                                          (if x-cnd7880
                                                            #f
                                                            (letrec ((x-cnd7881
                                                                      (letrec ((x7882
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7882
                                                                         e))))
                                                              (if x-cnd7881
                                                                l
                                                                (letrec ((x7883
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7883))))))))
                                                g7878)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7884
                                                        (letrec ((x7885
                                                                  (letrec ((x7886
                                                                            (letrec ((x7887
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7887))))
                                                                    (cdr
                                                                     x7886))))
                                                          (car x7885))))
                                                g7884)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7888
                                                        (letrec ((x7890
                                                                  (list? l)))
                                                          (assert x7890)))
                                                       (g7889
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7891
                                                                              (letrec ((x-cnd7892
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7892
                                                                                  0
                                                                                  (letrec ((x7893
                                                                                            (letrec ((x7894
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7894))))
                                                                                    (+
                                                                                     1
                                                                                     x7893))))))
                                                                      g7891))))
                                                          (letrec ((g7895
                                                                    (rec l)))
                                                            g7895))))
                                                g7889)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7896
                                                        (letrec ((x7899
                                                                  (char? c1)))
                                                          (assert x7899)))
                                                       (g7897
                                                        (letrec ((x7900
                                                                  (char? c2)))
                                                          (assert x7900)))
                                                       (g7898
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7901
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7901))))
                                                g7898)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7902
                                                        (letrec ((x7903
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7903))))
                                                g7902)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7904
                                                        (letrec ((x7905
                                                                  (letrec ((x7906
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7906))))
                                                          (cdr x7905))))
                                                g7904)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7907
                                                        (letrec ((x7909
                                                                  (list? l)))
                                                          (assert x7909)))
                                                       (g7908
                                                        (letrec ((x-cnd7910
                                                                  (null? l)))
                                                          (if x-cnd7910
                                                            #f
                                                            (letrec ((x-cnd7911
                                                                      (letrec ((x7912
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7912
                                                                         k))))
                                                              (if x-cnd7911
                                                                (car l)
                                                                (letrec ((x7913
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7913))))))))
                                                g7908)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7914
                                                        (letrec ((x7915
                                                                  (car x)))
                                                          (car x7915))))
                                                g7914)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7916
                                                        (letrec ((x7919
                                                                  (char? c1)))
                                                          (assert x7919)))
                                                       (g7917
                                                        (letrec ((x7920
                                                                  (char? c2)))
                                                          (assert x7920)))
                                                       (g7918
                                                        (letrec ((x7921
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7921))))
                                                g7918)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7922
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7923
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7923))))
                                                g7922)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7924
                                                        (letrec ((x7927
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7927)))
                                                       (g7925
                                                        (letrec ((x7928
                                                                  (list? l)))
                                                          (assert x7928)))
                                                       (g7926
                                                        (letrec ((x-cnd7929
                                                                  (null? l)))
                                                          (if x-cnd7929
                                                            #t
                                                            (letrec ((x-cnd7930
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7930
                                                                (letrec ((g7931
                                                                          (letrec ((x7933
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7933)))
                                                                         (g7932
                                                                          (letrec ((x7934
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7934))))
                                                                  g7932)
                                                                '()))))))
                                                g7926)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7935
                                                        (letrec ((x7937
                                                                  (number? x)))
                                                          (assert x7937)))
                                                       (g7936
                                                        (letrec ((x-cnd7938
                                                                  (< x 0)))
                                                          (if x-cnd7938
                                                            (- 0 x)
                                                            x))))
                                                g7936)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7939
                                                        (letrec ((x7942
                                                                  (char? c1)))
                                                          (assert x7942)))
                                                       (g7940
                                                        (letrec ((x7943
                                                                  (char? c2)))
                                                          (assert x7943)))
                                                       (g7941
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7944
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7944))))
                                                g7941)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7945
                                                        (letrec ((x7946
                                                                  (letrec ((x7947
                                                                            (letrec ((x7948
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7948))))
                                                                    (cdr
                                                                     x7947))))
                                                          (car x7946))))
                                                g7945)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7949 #f)) g7949)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7950
                                                        (letrec ((x7952
                                                                  (letrec ((x7953
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7953)))
                                                                 (x7951
                                                                  (gcd m n)))
                                                          (/ x7952 x7951))))
                                                g7950)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7954
                                                        (letrec ((x7956
                                                                  (number? x)))
                                                          (assert x7956)))
                                                       (g7955
                                                        (letrec ((x7957
                                                                  (<= x y)))
                                                          (not x7957))))
                                                g7955)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7958
                                                        (letrec ((x7962
                                                                  (list? l)))
                                                          (assert x7962)))
                                                       (g7959
                                                        (letrec ((x7963
                                                                  (number?
                                                                   index)))
                                                          (assert x7963)))
                                                       (g7960
                                                        (letrec ((x7964
                                                                  (letrec ((x7965
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7965))))
                                                          (assert x7964)))
                                                       (g7961
                                                        (letrec ((x-cnd7966
                                                                  (= index 0)))
                                                          (if x-cnd7966
                                                            (car l)
                                                            (letrec ((x7968
                                                                      (cdr l))
                                                                     (x7967
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7968
                                                               x7967))))))
                                                g7961)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7969
                                                        (letrec ((x-cnd7970
                                                                  (= b 0)))
                                                          (if x-cnd7970
                                                            a
                                                            (letrec ((x7971
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7971))))))
                                                g7969)))
                                           (image
                                            (lambda ()
                                              (letrec ((g7972
                                                        (cons 'image '())))
                                                g7972)))
                                           (image?
                                            (lambda (image7434)
                                              (letrec ((g7973
                                                        (letrec ((x7974
                                                                  (car
                                                                   image7434)))
                                                          (eq? x7974 'image))))
                                                g7973)))
                                           (image/c
                                            (lambda (j7333 k7334 v7332)
                                              (letrec ((g7975
                                                        (cons image '())))
                                                g7975)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g7976 (image)))
                                                g7976)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g7977 (image)))
                                                g7977)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g7978 (image)))
                                                g7978)))
                                           (posn
                                            (lambda (x7436 y7437)
                                              (letrec ((g7979
                                                        (letrec ((x7980
                                                                  (letrec ((x7981
                                                                            (cons
                                                                             y7437
                                                                             '())))
                                                                    (cons
                                                                     x7436
                                                                     x7981))))
                                                          (cons 'posn x7980))))
                                                g7979)))
                                           (posn?
                                            (lambda (posn7435)
                                              (letrec ((g7982
                                                        (letrec ((x7983
                                                                  (car
                                                                   posn7435)))
                                                          (eq? x7983 'posn))))
                                                g7982)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g7984
                                                        (letrec ((x7985
                                                                  (cdr posn)))
                                                          (car x7985))))
                                                g7984)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g7986
                                                        (letrec ((x7987
                                                                  (letrec ((x7988
                                                                            (cdr
                                                                             posn)))
                                                                    (cdr
                                                                     x7988))))
                                                          (car x7987))))
                                                g7986)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g7989
                                                        (letrec ((x-cnd7990
                                                                  (letrec ((x7992
                                                                            (posn-x
                                                                             p1))
                                                                           (x7991
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x7992
                                                                     x7991))))
                                                          (if x-cnd7990
                                                            (letrec ((x7994
                                                                      (posn-y
                                                                       p1))
                                                                     (x7993
                                                                      (posn-y
                                                                       p2)))
                                                              (= x7994 x7993))
                                                            #f))))
                                                g7989)))
                                           (snake
                                            (lambda (dir7441 segs7442)
                                              (letrec ((g7995
                                                        (letrec ((x7996
                                                                  (letrec ((x7997
                                                                            (cons
                                                                             segs7442
                                                                             '())))
                                                                    (cons
                                                                     dir7441
                                                                     x7997))))
                                                          (cons
                                                           'snake
                                                           x7996))))
                                                g7995)))
                                           (snake?
                                            (lambda (snake7440)
                                              (letrec ((g7998
                                                        (letrec ((x7999
                                                                  (car
                                                                   snake7440)))
                                                          (eq? x7999 'snake))))
                                                g7998)))
                                           (snake-dir
                                            (lambda (snake)
                                              (letrec ((g8000
                                                        (letrec ((x8001
                                                                  (cdr snake)))
                                                          (car x8001))))
                                                g8000)))
                                           (snake-segs
                                            (lambda (snake)
                                              (letrec ((g8002
                                                        (letrec ((x8003
                                                                  (letrec ((x8004
                                                                            (cdr
                                                                             snake)))
                                                                    (cdr
                                                                     x8004))))
                                                          (car x8003))))
                                                g8002)))
                                           (world
                                            (lambda (snake7446 food7447)
                                              (letrec ((g8005
                                                        (letrec ((x8006
                                                                  (letrec ((x8007
                                                                            (cons
                                                                             food7447
                                                                             '())))
                                                                    (cons
                                                                     snake7446
                                                                     x8007))))
                                                          (cons
                                                           'world
                                                           x8006))))
                                                g8005)))
                                           (world?
                                            (lambda (world7445)
                                              (letrec ((g8008
                                                        (letrec ((x8009
                                                                  (car
                                                                   world7445)))
                                                          (eq? x8009 'world))))
                                                g8008)))
                                           (world-snake
                                            (lambda (world)
                                              (letrec ((g8010
                                                        (letrec ((x8011
                                                                  (cdr world)))
                                                          (car x8011))))
                                                g8010)))
                                           (world-food
                                            (lambda (world)
                                              (letrec ((g8012
                                                        (letrec ((x8013
                                                                  (letrec ((x8014
                                                                            (cdr
                                                                             world)))
                                                                    (cdr
                                                                     x8014))))
                                                          (car x8013))))
                                                g8012)))
                                           (DIR/C
                                            (lambda (g7339 g7340 g7341)
                                              (letrec ((g8015
                                                        (letrec ((x-cnd8016
                                                                  ((lambda (v7338)
                                                                     (letrec ((g8017
                                                                               (letrec ((x-cnd8018
                                                                                         (eq?
                                                                                          'up
                                                                                          v7338)))
                                                                                 (if x-cnd8018
                                                                                   #t
                                                                                   (letrec ((x-cnd8019
                                                                                             (eq?
                                                                                              'down
                                                                                              v7338)))
                                                                                     (if x-cnd8019
                                                                                       #t
                                                                                       (letrec ((x-cnd8020
                                                                                                 (eq?
                                                                                                  'left
                                                                                                  v7338)))
                                                                                         (if x-cnd8020
                                                                                           #t
                                                                                           (eq?
                                                                                            'right
                                                                                            v7338)))))))))
                                                                       g8017))
                                                                   g7341)))
                                                          (if x-cnd8016
                                                            g7341
                                                            (blame
                                                             g7339
                                                             '(lambda (v7338)
                                                                (if (eq?
                                                                     'up
                                                                     v7338)
                                                                  #t
                                                                  (if (eq?
                                                                       'down
                                                                       v7338)
                                                                    #t
                                                                    (if (eq?
                                                                         'left
                                                                         v7338)
                                                                      #t
                                                                      (eq?
                                                                       'right
                                                                       v7338))))))))))
                                                g8015)))
                                           (POSN/C
                                            (lambda (j7343 k7344 v7342)
                                              (letrec ((g8021
                                                        (letrec ((checked7345
                                                                  (letrec ((x8022
                                                                            (car
                                                                             v7342)))
                                                                    (real?/c
                                                                     j7343
                                                                     k7344
                                                                     x8022))))
                                                          (letrec ((g8023
                                                                    (letrec ((checked7346
                                                                              (letrec ((x8024
                                                                                        (letrec ((x8025
                                                                                                  (cdr
                                                                                                   v7342)))
                                                                                          (car
                                                                                           x8025))))
                                                                                (real?/c
                                                                                 j7343
                                                                                 k7344
                                                                                 x8024))))
                                                                      (letrec ((g8026
                                                                                (letrec ((x8027
                                                                                          (letrec ((x8028
                                                                                                    (cons
                                                                                                     checked7346
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7345
                                                                                             x8028))))
                                                                                  (cons
                                                                                   posn
                                                                                   x8027))))
                                                                        g8026))))
                                                            g8023))))
                                                g8021)))
                                           (SNAKE/C
                                            (lambda (j7349 k7350 v7348)
                                              (letrec ((g8029
                                                        (letrec ((checked7351
                                                                  (letrec ((x8030
                                                                            (car
                                                                             v7348)))
                                                                    (DIR/C
                                                                     j7349
                                                                     k7350
                                                                     x8030))))
                                                          (letrec ((g8031
                                                                    (letrec ((checked7352
                                                                              (letrec ((x8034
                                                                                        (letrec ((x8035
                                                                                                  (listof
                                                                                                   POSN/C)))
                                                                                          (and/c
                                                                                           cons?/c
                                                                                           x8035)))
                                                                                       (x8032
                                                                                        (letrec ((x8033
                                                                                                  (cdr
                                                                                                   v7348)))
                                                                                          (car
                                                                                           x8033))))
                                                                                (x8034
                                                                                 j7349
                                                                                 k7350
                                                                                 x8032))))
                                                                      (letrec ((g8036
                                                                                (letrec ((x8037
                                                                                          (letrec ((x8038
                                                                                                    (cons
                                                                                                     checked7352
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7351
                                                                                             x8038))))
                                                                                  (cons
                                                                                   snake
                                                                                   x8037))))
                                                                        g8036))))
                                                            g8031))))
                                                g8029)))
                                           (WORLD/C
                                            (lambda (j7355 k7356 v7354)
                                              (letrec ((g8039
                                                        (letrec ((checked7357
                                                                  (letrec ((x8040
                                                                            (car
                                                                             v7354)))
                                                                    (SNAKE/C
                                                                     j7355
                                                                     k7356
                                                                     x8040))))
                                                          (letrec ((g8041
                                                                    (letrec ((checked7358
                                                                              (letrec ((x8042
                                                                                        (letrec ((x8043
                                                                                                  (cdr
                                                                                                   v7354)))
                                                                                          (car
                                                                                           x8043))))
                                                                                (POSN/C
                                                                                 j7355
                                                                                 k7356
                                                                                 x8042))))
                                                                      (letrec ((g8044
                                                                                (letrec ((x8045
                                                                                          (letrec ((x8046
                                                                                                    (cons
                                                                                                     checked7358
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7357
                                                                                             x8046))))
                                                                                  (cons
                                                                                   world
                                                                                   x8045))))
                                                                        g8044))))
                                                            g8041))))
                                                g8039)))
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
                                            (letrec ((x8048
                                                      (letrec ((x8049
                                                                (letrec ((x8050
                                                                          (posn
                                                                           5
                                                                           3)))
                                                                  (cons
                                                                   x8050
                                                                   empty))))
                                                        (snake 'right x8049)))
                                                     (x8047 (posn 8 12)))
                                              (world x8048 x8047)))
                                           (snake-wall-collide?
                                            (lambda (snk)
                                              (letrec ((g8051
                                                        (letrec ((x8052
                                                                  (letrec ((x8053
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x8053))))
                                                          (head-collide?
                                                           x8052))))
                                                g8051)))
                                           (head-collide?
                                            (lambda (p)
                                              (letrec ((g8054
                                                        (letrec ((val7259
                                                                  (letrec ((x8055
                                                                            (posn-x
                                                                             p)))
                                                                    (<=
                                                                     x8055
                                                                     0))))
                                                          (letrec ((g8056
                                                                    (if val7259
                                                                      val7259
                                                                      (letrec ((val7260
                                                                                (letrec ((x8057
                                                                                          (posn-x
                                                                                           p)))
                                                                                  (>=
                                                                                   x8057
                                                                                   BOARD-WIDTH))))
                                                                        (letrec ((g8058
                                                                                  (if val7260
                                                                                    val7260
                                                                                    (letrec ((val7261
                                                                                              (letrec ((x8059
                                                                                                        (posn-y
                                                                                                         p)))
                                                                                                (<=
                                                                                                 x8059
                                                                                                 0))))
                                                                                      (letrec ((g8060
                                                                                                (if val7261
                                                                                                  val7261
                                                                                                  (letrec ((x8061
                                                                                                            (posn-y
                                                                                                             p)))
                                                                                                    (>=
                                                                                                     x8061
                                                                                                     BOARD-HEIGHT)))))
                                                                                        g8060)))))
                                                                          g8058)))))
                                                            g8056))))
                                                g8054)))
                                           (snake-self-collide?
                                            (lambda (snk)
                                              (letrec ((g8062
                                                        (letrec ((x8065
                                                                  (letrec ((x8066
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x8066)))
                                                                 (x8063
                                                                  (letrec ((x8064
                                                                            (snake-segs
                                                                             snk)))
                                                                    (cdr
                                                                     x8064))))
                                                          (segs-self-collide?
                                                           x8065
                                                           x8063))))
                                                g8062)))
                                           (segs-self-collide?
                                            (lambda (h segs)
                                              (letrec ((g8067
                                                        (letrec ((x-cnd8068
                                                                  (empty?
                                                                   segs)))
                                                          (if x-cnd8068
                                                            (letrec ((g8069
                                                                      #f))
                                                              g8069)
                                                            (letrec ((g8070
                                                                      (letrec ((x8073
                                                                                (letrec ((x8074
                                                                                          (car
                                                                                           segs)))
                                                                                  (posn=?
                                                                                   x8074
                                                                                   h)))
                                                                               (x8071
                                                                                (letrec ((x8072
                                                                                          (cdr
                                                                                           segs)))
                                                                                  (segs-self-collide?
                                                                                   h
                                                                                   x8072))))
                                                                        (or x8073
                                                                            x8071))))
                                                              g8070)))))
                                                g8067)))
                                           (cut-tail
                                            (lambda (segs)
                                              (letrec ((g8075
                                                        (letrec ((r
                                                                  (cdr segs)))
                                                          (letrec ((g8076
                                                                    (letrec ((x-cnd8077
                                                                              (empty?
                                                                               r)))
                                                                      (if x-cnd8077
                                                                        (letrec ((g8078
                                                                                  empty))
                                                                          g8078)
                                                                        (letrec ((g8079
                                                                                  (letrec ((x8081
                                                                                            (car
                                                                                             segs))
                                                                                           (x8080
                                                                                            (cut-tail
                                                                                             r)))
                                                                                    (cons
                                                                                     x8081
                                                                                     x8080))))
                                                                          g8079)))))
                                                            g8076))))
                                                g8075)))
                                           (next-head
                                            (lambda (seg dir)
                                              (letrec ((g8082
                                                        (letrec ((x-cnd8083
                                                                  (equal?
                                                                   'right
                                                                   dir)))
                                                          (if x-cnd8083
                                                            (letrec ((g8084
                                                                      (letrec ((x8086
                                                                                (letrec ((x8087
                                                                                          (posn-x
                                                                                           seg)))
                                                                                  (add1
                                                                                   x8087)))
                                                                               (x8085
                                                                                (posn-y
                                                                                 seg)))
                                                                        (posn
                                                                         x8086
                                                                         x8085))))
                                                              g8084)
                                                            (letrec ((x-cnd8088
                                                                      (equal?
                                                                       'left
                                                                       dir)))
                                                              (if x-cnd8088
                                                                (letrec ((g8089
                                                                          (letrec ((x8091
                                                                                    (letrec ((x8092
                                                                                              (posn-x
                                                                                               seg)))
                                                                                      (sub1
                                                                                       x8092)))
                                                                                   (x8090
                                                                                    (posn-y
                                                                                     seg)))
                                                                            (posn
                                                                             x8091
                                                                             x8090))))
                                                                  g8089)
                                                                (letrec ((x-cnd8093
                                                                          (equal?
                                                                           'down
                                                                           dir)))
                                                                  (if x-cnd8093
                                                                    (letrec ((g8094
                                                                              (letrec ((x8097
                                                                                        (posn-x
                                                                                         seg))
                                                                                       (x8095
                                                                                        (letrec ((x8096
                                                                                                  (posn-y
                                                                                                   seg)))
                                                                                          (sub1
                                                                                           x8096))))
                                                                                (posn
                                                                                 x8097
                                                                                 x8095))))
                                                                      g8094)
                                                                    (letrec ((g8098
                                                                              (letrec ((x8101
                                                                                        (posn-x
                                                                                         seg))
                                                                                       (x8099
                                                                                        (letrec ((x8100
                                                                                                  (posn-y
                                                                                                   seg)))
                                                                                          (add1
                                                                                           x8100))))
                                                                                (posn
                                                                                 x8101
                                                                                 x8099))))
                                                                      g8098)))))))))
                                                g8082)))
                                           (snake-slither
                                            (lambda (snk)
                                              (letrec ((g8102
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g8103
                                                                    (letrec ((x8104
                                                                              (letrec ((x8107
                                                                                        (letrec ((x8108
                                                                                                  (letrec ((x8109
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x8109))))
                                                                                          (next-head
                                                                                           x8108
                                                                                           d)))
                                                                                       (x8105
                                                                                        (letrec ((x8106
                                                                                                  (snake-segs
                                                                                                   snk)))
                                                                                          (cut-tail
                                                                                           x8106))))
                                                                                (cons
                                                                                 x8107
                                                                                 x8105))))
                                                                      (snake
                                                                       d
                                                                       x8104))))
                                                            g8103))))
                                                g8102)))
                                           (snake-grow
                                            (lambda (snk)
                                              (letrec ((g8110
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g8111
                                                                    (letrec ((x8112
                                                                              (letrec ((x8114
                                                                                        (letrec ((x8115
                                                                                                  (letrec ((x8116
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x8116))))
                                                                                          (next-head
                                                                                           x8115
                                                                                           d)))
                                                                                       (x8113
                                                                                        (snake-segs
                                                                                         snk)))
                                                                                (cons
                                                                                 x8114
                                                                                 x8113))))
                                                                      (snake
                                                                       d
                                                                       x8112))))
                                                            g8111))))
                                                g8110)))
                                           (world->world
                                            (lambda (w)
                                              (letrec ((g8117
                                                        (letrec ((x-cnd8118
                                                                  (eating? w)))
                                                          (if x-cnd8118
                                                            (letrec ((g8119
                                                                      (snake-eat
                                                                       w)))
                                                              g8119)
                                                            (letrec ((g8120
                                                                      (letrec ((x8122
                                                                                (letrec ((x8123
                                                                                          (world-snake
                                                                                           w)))
                                                                                  (snake-slither
                                                                                   x8123)))
                                                                               (x8121
                                                                                (world-food
                                                                                 w)))
                                                                        (world
                                                                         x8122
                                                                         x8121))))
                                                              g8120)))))
                                                g8117)))
                                           (eating?
                                            (lambda (w)
                                              (letrec ((g8124
                                                        (letrec ((x8128
                                                                  (world-food
                                                                   w))
                                                                 (x8125
                                                                  (letrec ((x8126
                                                                            (letrec ((x8127
                                                                                      (world-snake
                                                                                       w)))
                                                                              (snake-segs
                                                                               x8127))))
                                                                    (car
                                                                     x8126))))
                                                          (posn=?
                                                           x8128
                                                           x8125))))
                                                g8124)))
                                           (snake-change-direction
                                            (lambda (snk dir)
                                              (letrec ((g8129
                                                        (letrec ((x8130
                                                                  (snake-segs
                                                                   snk)))
                                                          (snake dir x8130))))
                                                g8129)))
                                           (world-change-dir
                                            (lambda (w dir)
                                              (letrec ((g8131
                                                        (letrec ((x8133
                                                                  (letrec ((x8134
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-change-direction
                                                                     x8134
                                                                     dir)))
                                                                 (x8132
                                                                  (world-food
                                                                   w)))
                                                          (world
                                                           x8133
                                                           x8132))))
                                                g8131)))
                                           (snake-eat
                                            (lambda (w)
                                              (letrec ((g8135
                                                        (letrec ((x8139
                                                                  (letrec ((x8140
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-grow
                                                                     x8140)))
                                                                 (x8136
                                                                  (letrec ((x8138
                                                                            (-
                                                                             BOARD-WIDTH
                                                                             1))
                                                                           (x8137
                                                                            (-
                                                                             BOARD-HEIGHT
                                                                             1)))
                                                                    (posn
                                                                     x8138
                                                                     x8137))))
                                                          (world
                                                           x8139
                                                           x8136))))
                                                g8135)))
                                           (handle-key
                                            (lambda (w ke)
                                              (letrec ((g8141
                                                        (letrec ((x-cnd8142
                                                                  (equal?
                                                                   ke
                                                                   "w")))
                                                          (if x-cnd8142
                                                            (letrec ((g8143
                                                                      (world-change-dir
                                                                       w
                                                                       'up)))
                                                              g8143)
                                                            (letrec ((x-cnd8144
                                                                      (equal?
                                                                       ke
                                                                       "s")))
                                                              (if x-cnd8144
                                                                (letrec ((g8145
                                                                          (world-change-dir
                                                                           w
                                                                           'down)))
                                                                  g8145)
                                                                (letrec ((x-cnd8146
                                                                          (equal?
                                                                           ke
                                                                           "a")))
                                                                  (if x-cnd8146
                                                                    (letrec ((g8147
                                                                              (world-change-dir
                                                                               w
                                                                               'left)))
                                                                      g8147)
                                                                    (letrec ((x-cnd8148
                                                                              (equal?
                                                                               ke
                                                                               "d")))
                                                                      (if x-cnd8148
                                                                        (letrec ((g8149
                                                                                  (world-change-dir
                                                                                   w
                                                                                   'right)))
                                                                          g8149)
                                                                        (letrec ((g8150
                                                                                  w))
                                                                          g8150)))))))))))
                                                g8141)))
                                           (game-over?
                                            (lambda (w)
                                              (letrec ((g8151
                                                        (letrec ((val7262
                                                                  (letrec ((x8152
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-wall-collide?
                                                                     x8152))))
                                                          (letrec ((g8153
                                                                    (if val7262
                                                                      val7262
                                                                      (letrec ((x8154
                                                                                (world-snake
                                                                                 w)))
                                                                        (snake-self-collide?
                                                                         x8154)))))
                                                            g8153))))
                                                g8151)))
                                           (world->scene
                                            (lambda (w)
                                              (letrec ((g8155
                                                        (letrec ((x8158
                                                                  (world-snake
                                                                   w))
                                                                 (x8156
                                                                  (letrec ((x8157
                                                                            (world-food
                                                                             w)))
                                                                    (food+scene
                                                                     x8157
                                                                     BACKGROUND))))
                                                          (snake+scene
                                                           x8158
                                                           x8156))))
                                                g8155)))
                                           (food+scene
                                            (lambda (f scn)
                                              (letrec ((g8159
                                                        (letrec ((x8161
                                                                  (posn-x f))
                                                                 (x8160
                                                                  (posn-y f)))
                                                          (place-image-on-grid
                                                           FOOD-IMAGE
                                                           x8161
                                                           x8160
                                                           scn))))
                                                g8159)))
                                           (place-image-on-grid
                                            (lambda (img x y scn)
                                              (letrec ((g8162
                                                        (letrec ((x8165
                                                                  (*
                                                                   GRID-SIZE
                                                                   x))
                                                                 (x8163
                                                                  (letrec ((x8164
                                                                            (*
                                                                             GRID-SIZE
                                                                             y)))
                                                                    (-
                                                                     BOARD-HEIGHT-PIXELS
                                                                     x8164))))
                                                          (place-image
                                                           img
                                                           x8165
                                                           x8163
                                                           scn))))
                                                g8162)))
                                           (snake+scene
                                            (lambda (snk scn)
                                              (letrec ((g8166
                                                        (letrec ((x8167
                                                                  (snake-segs
                                                                   snk)))
                                                          (segments+scene
                                                           x8167
                                                           scn))))
                                                g8166)))
                                           (segments+scene
                                            (lambda (segs scn)
                                              (letrec ((g8168
                                                        (letrec ((x-cnd8169
                                                                  (empty?
                                                                   segs)))
                                                          (if x-cnd8169
                                                            (letrec ((g8170
                                                                      scn))
                                                              g8170)
                                                            (letrec ((g8171
                                                                      (letrec ((x8174
                                                                                (cdr
                                                                                 segs))
                                                                               (x8172
                                                                                (letrec ((x8173
                                                                                          (car
                                                                                           segs)))
                                                                                  (segment+scene
                                                                                   x8173
                                                                                   scn))))
                                                                        (segments+scene
                                                                         x8174
                                                                         x8172))))
                                                              g8171)))))
                                                g8168)))
                                           (segment+scene
                                            (lambda (seg scn)
                                              (letrec ((g8175
                                                        (letrec ((x8177
                                                                  (posn-x seg))
                                                                 (x8176
                                                                  (posn-y
                                                                   seg)))
                                                          (place-image-on-grid
                                                           SEGMENT-IMAGE
                                                           x8177
                                                           x8176
                                                           scn))))
                                                g8175))))
                                    (letrec ((g8178
                                              (letrec ((x8212
                                                        ((lambda (j7362
                                                                  k7363
                                                                  f7364)
                                                           (letrec ((g8213
                                                                     (lambda (g7360
                                                                              g7361)
                                                                       (letrec ((g8214
                                                                                 (letrec ((x8215
                                                                                           (letrec ((x8217
                                                                                                     (POSN/C
                                                                                                      j7362
                                                                                                      k7363
                                                                                                      g7360))
                                                                                                    (x8216
                                                                                                     (POSN/C
                                                                                                      j7362
                                                                                                      k7363
                                                                                                      g7361)))
                                                                                             (f7364
                                                                                              x8217
                                                                                              x8216))))
                                                                                   (boolean?/c
                                                                                    j7362
                                                                                    k7363
                                                                                    x8215))))
                                                                         g8214))))
                                                             g8213))
                                                         'module
                                                         'importer
                                                         posn=?))
                                                       (x8207
                                                        (letrec ((x8208
                                                                  (letrec ((x8211
                                                                            (input))
                                                                           (x8209
                                                                            (letrec ((x8210
                                                                                      (input)))
                                                                              (cons
                                                                               x8210
                                                                               '()))))
                                                                    (cons
                                                                     x8211
                                                                     x8209))))
                                                          (cons 'posn x8208)))
                                                       (x8202
                                                        (letrec ((x8203
                                                                  (letrec ((x8206
                                                                            (input))
                                                                           (x8204
                                                                            (letrec ((x8205
                                                                                      (input)))
                                                                              (cons
                                                                               x8205
                                                                               '()))))
                                                                    (cons
                                                                     x8206
                                                                     x8204))))
                                                          (cons 'posn x8203))))
                                                (x8212 x8207 x8202)))
                                             (g8179
                                              (WORLD/C
                                               'module
                                               'importer
                                               WORLD))
                                             (g8180
                                              (image/c
                                               'module
                                               'importer
                                               BACKGROUND))
                                             (g8181
                                              (image/c
                                               'module
                                               'importer
                                               FOOD-IMAGE))
                                             (g8182
                                              (image/c
                                               'module
                                               'importer
                                               SEGMENT-IMAGE))
                                             (g8183
                                              (real?
                                               'module
                                               'importer
                                               GRID-SIZE))
                                             (g8184
                                              (real?
                                               'module
                                               'importer
                                               BOARD-HEIGHT-PIXELS))
                                             (g8185
                                              (real?
                                               'module
                                               'importer
                                               BOARD-WIDTH))
                                             (g8186
                                              (real?
                                               'module
                                               'importer
                                               BOARD-HEIGHT))
                                             (g8187
                                              (letrec ((x8223
                                                        ((lambda (j7366
                                                                  k7367
                                                                  f7368)
                                                           (letrec ((g8224
                                                                     (lambda (g7365)
                                                                       (letrec ((g8225
                                                                                 (letrec ((x8226
                                                                                           (letrec ((x8227
                                                                                                     (SNAKE/C
                                                                                                      j7366
                                                                                                      k7367
                                                                                                      g7365)))
                                                                                             (f7368
                                                                                              x8227))))
                                                                                   (boolean?/c
                                                                                    j7366
                                                                                    k7367
                                                                                    x8226))))
                                                                         g8225))))
                                                             g8224))
                                                         'module
                                                         'importer
                                                         snake-wall-collide?))
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
                                                          (cons
                                                           'snake
                                                           x8219))))
                                                (x8223 x8218)))
                                             (g8188
                                              (letrec ((x8233
                                                        ((lambda (j7370
                                                                  k7371
                                                                  f7372)
                                                           (letrec ((g8234
                                                                     (lambda (g7369)
                                                                       (letrec ((g8235
                                                                                 (letrec ((x8236
                                                                                           (letrec ((x8237
                                                                                                     (SNAKE/C
                                                                                                      j7370
                                                                                                      k7371
                                                                                                      g7369)))
                                                                                             (f7372
                                                                                              x8237))))
                                                                                   (boolean?/c
                                                                                    j7370
                                                                                    k7371
                                                                                    x8236))))
                                                                         g8235))))
                                                             g8234))
                                                         'module
                                                         'importer
                                                         snake-self-collide?))
                                                       (x8228
                                                        (letrec ((x8229
                                                                  (letrec ((x8232
                                                                            (input))
                                                                           (x8230
                                                                            (letrec ((x8231
                                                                                      (input)))
                                                                              (cons
                                                                               x8231
                                                                               '()))))
                                                                    (cons
                                                                     x8232
                                                                     x8230))))
                                                          (cons
                                                           'snake
                                                           x8229))))
                                                (x8233 x8228)))
                                             (g8189
                                              (letrec ((x8239
                                                        ((lambda (j7374
                                                                  k7375
                                                                  f7376)
                                                           (letrec ((g8240
                                                                     (lambda (g7373)
                                                                       (letrec ((g8241
                                                                                 (letrec ((x8246
                                                                                           (listof
                                                                                            POSN/C))
                                                                                          (x8242
                                                                                           (letrec ((x8243
                                                                                                     (letrec ((x8244
                                                                                                               (letrec ((x8245
                                                                                                                         (listof
                                                                                                                          POSN/C)))
                                                                                                                 (and/c
                                                                                                                  cons?/c
                                                                                                                  x8245))))
                                                                                                       (x8244
                                                                                                        j7374
                                                                                                        k7375
                                                                                                        g7373))))
                                                                                             (f7376
                                                                                              x8243))))
                                                                                   (x8246
                                                                                    j7374
                                                                                    k7375
                                                                                    x8242))))
                                                                         g8241))))
                                                             g8240))
                                                         'module
                                                         'importer
                                                         cut-tail))
                                                       (x8238 (input)))
                                                (x8239 x8238)))
                                             (g8190
                                              (letrec ((x8252
                                                        ((lambda (j7378
                                                                  k7379
                                                                  f7380)
                                                           (letrec ((g8253
                                                                     (lambda (g7377)
                                                                       (letrec ((g8254
                                                                                 (letrec ((x8255
                                                                                           (letrec ((x8256
                                                                                                     (SNAKE/C
                                                                                                      j7378
                                                                                                      k7379
                                                                                                      g7377)))
                                                                                             (f7380
                                                                                              x8256))))
                                                                                   (SNAKE/C
                                                                                    j7378
                                                                                    k7379
                                                                                    x8255))))
                                                                         g8254))))
                                                             g8253))
                                                         'module
                                                         'importer
                                                         snake-slither))
                                                       (x8247
                                                        (letrec ((x8248
                                                                  (letrec ((x8251
                                                                            (input))
                                                                           (x8249
                                                                            (letrec ((x8250
                                                                                      (input)))
                                                                              (cons
                                                                               x8250
                                                                               '()))))
                                                                    (cons
                                                                     x8251
                                                                     x8249))))
                                                          (cons
                                                           'snake
                                                           x8248))))
                                                (x8252 x8247)))
                                             (g8191
                                              (letrec ((x8262
                                                        ((lambda (j7382
                                                                  k7383
                                                                  f7384)
                                                           (letrec ((g8263
                                                                     (lambda (g7381)
                                                                       (letrec ((g8264
                                                                                 (letrec ((x8265
                                                                                           (letrec ((x8266
                                                                                                     (SNAKE/C
                                                                                                      j7382
                                                                                                      k7383
                                                                                                      g7381)))
                                                                                             (f7384
                                                                                              x8266))))
                                                                                   (SNAKE/C
                                                                                    j7382
                                                                                    k7383
                                                                                    x8265))))
                                                                         g8264))))
                                                             g8263))
                                                         'module
                                                         'importer
                                                         snake-grow))
                                                       (x8257
                                                        (letrec ((x8258
                                                                  (letrec ((x8261
                                                                            (input))
                                                                           (x8259
                                                                            (letrec ((x8260
                                                                                      (input)))
                                                                              (cons
                                                                               x8260
                                                                               '()))))
                                                                    (cons
                                                                     x8261
                                                                     x8259))))
                                                          (cons
                                                           'snake
                                                           x8258))))
                                                (x8262 x8257)))
                                             (g8192
                                              (letrec ((x8281
                                                        ((lambda (j7387
                                                                  k7388
                                                                  f7389)
                                                           (letrec ((g8282
                                                                     (lambda (g7385
                                                                              g7386)
                                                                       (letrec ((g8283
                                                                                 (letrec ((x8284
                                                                                           (letrec ((x8286
                                                                                                     (WORLD/C
                                                                                                      j7387
                                                                                                      k7388
                                                                                                      g7385))
                                                                                                    (x8285
                                                                                                     (DIR/C
                                                                                                      j7387
                                                                                                      k7388
                                                                                                      g7386)))
                                                                                             (f7389
                                                                                              x8286
                                                                                              x8285))))
                                                                                   (WORLD/C
                                                                                    j7387
                                                                                    k7388
                                                                                    x8284))))
                                                                         g8283))))
                                                             g8282))
                                                         'module
                                                         'importer
                                                         world-change-dir))
                                                       (x8268
                                                        (letrec ((x8269
                                                                  (letrec ((x8276
                                                                            (letrec ((x8277
                                                                                      (letrec ((x8280
                                                                                                (input))
                                                                                               (x8278
                                                                                                (letrec ((x8279
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8279
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8280
                                                                                         x8278))))
                                                                              (cons
                                                                               'snake
                                                                               x8277)))
                                                                           (x8270
                                                                            (letrec ((x8271
                                                                                      (letrec ((x8272
                                                                                                (letrec ((x8275
                                                                                                          (input))
                                                                                                         (x8273
                                                                                                          (letrec ((x8274
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x8274
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x8275
                                                                                                   x8273))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x8272))))
                                                                              (cons
                                                                               x8271
                                                                               '()))))
                                                                    (cons
                                                                     x8276
                                                                     x8270))))
                                                          (cons 'world x8269)))
                                                       (x8267 (input)))
                                                (x8281 x8268 x8267)))
                                             (g8193
                                              (letrec ((x8300
                                                        ((lambda (j7391
                                                                  k7392
                                                                  f7393)
                                                           (letrec ((g8301
                                                                     (lambda (g7390)
                                                                       (letrec ((g8302
                                                                                 (letrec ((x8303
                                                                                           (letrec ((x8304
                                                                                                     (WORLD/C
                                                                                                      j7391
                                                                                                      k7392
                                                                                                      g7390)))
                                                                                             (f7393
                                                                                              x8304))))
                                                                                   (WORLD/C
                                                                                    j7391
                                                                                    k7392
                                                                                    x8303))))
                                                                         g8302))))
                                                             g8301))
                                                         'module
                                                         'importer
                                                         world->world))
                                                       (x8287
                                                        (letrec ((x8288
                                                                  (letrec ((x8295
                                                                            (letrec ((x8296
                                                                                      (letrec ((x8299
                                                                                                (input))
                                                                                               (x8297
                                                                                                (letrec ((x8298
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8298
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8299
                                                                                         x8297))))
                                                                              (cons
                                                                               'snake
                                                                               x8296)))
                                                                           (x8289
                                                                            (letrec ((x8290
                                                                                      (letrec ((x8291
                                                                                                (letrec ((x8294
                                                                                                          (input))
                                                                                                         (x8292
                                                                                                          (letrec ((x8293
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x8293
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x8294
                                                                                                   x8292))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x8291))))
                                                                              (cons
                                                                               x8290
                                                                               '()))))
                                                                    (cons
                                                                     x8295
                                                                     x8289))))
                                                          (cons
                                                           'world
                                                           x8288))))
                                                (x8300 x8287)))
                                             (g8194
                                              (letrec ((x8319
                                                        ((lambda (j7396
                                                                  k7397
                                                                  f7398)
                                                           (letrec ((g8320
                                                                     (lambda (g7394
                                                                              g7395)
                                                                       (letrec ((g8321
                                                                                 (letrec ((x8322
                                                                                           (letrec ((x8324
                                                                                                     (WORLD/C
                                                                                                      j7396
                                                                                                      k7397
                                                                                                      g7394))
                                                                                                    (x8323
                                                                                                     (string?/c
                                                                                                      j7396
                                                                                                      k7397
                                                                                                      g7395)))
                                                                                             (f7398
                                                                                              x8324
                                                                                              x8323))))
                                                                                   (WORLD/C
                                                                                    j7396
                                                                                    k7397
                                                                                    x8322))))
                                                                         g8321))))
                                                             g8320))
                                                         'module
                                                         'importer
                                                         handle-key))
                                                       (x8306
                                                        (letrec ((x8307
                                                                  (letrec ((x8314
                                                                            (letrec ((x8315
                                                                                      (letrec ((x8318
                                                                                                (input))
                                                                                               (x8316
                                                                                                (letrec ((x8317
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8317
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8318
                                                                                         x8316))))
                                                                              (cons
                                                                               'snake
                                                                               x8315)))
                                                                           (x8308
                                                                            (letrec ((x8309
                                                                                      (letrec ((x8310
                                                                                                (letrec ((x8313
                                                                                                          (input))
                                                                                                         (x8311
                                                                                                          (letrec ((x8312
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x8312
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x8313
                                                                                                   x8311))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x8310))))
                                                                              (cons
                                                                               x8309
                                                                               '()))))
                                                                    (cons
                                                                     x8314
                                                                     x8308))))
                                                          (cons 'world x8307)))
                                                       (x8305 (input)))
                                                (x8319 x8306 x8305)))
                                             (g8195
                                              (letrec ((x8338
                                                        ((lambda (j7400
                                                                  k7401
                                                                  f7402)
                                                           (letrec ((g8339
                                                                     (lambda (g7399)
                                                                       (letrec ((g8340
                                                                                 (letrec ((x8341
                                                                                           (letrec ((x8342
                                                                                                     (WORLD/C
                                                                                                      j7400
                                                                                                      k7401
                                                                                                      g7399)))
                                                                                             (f7402
                                                                                              x8342))))
                                                                                   (boolean?/c
                                                                                    j7400
                                                                                    k7401
                                                                                    x8341))))
                                                                         g8340))))
                                                             g8339))
                                                         'module
                                                         'importer
                                                         game-over?))
                                                       (x8325
                                                        (letrec ((x8326
                                                                  (letrec ((x8333
                                                                            (letrec ((x8334
                                                                                      (letrec ((x8337
                                                                                                (input))
                                                                                               (x8335
                                                                                                (letrec ((x8336
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8336
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8337
                                                                                         x8335))))
                                                                              (cons
                                                                               'snake
                                                                               x8334)))
                                                                           (x8327
                                                                            (letrec ((x8328
                                                                                      (letrec ((x8329
                                                                                                (letrec ((x8332
                                                                                                          (input))
                                                                                                         (x8330
                                                                                                          (letrec ((x8331
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x8331
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x8332
                                                                                                   x8330))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x8329))))
                                                                              (cons
                                                                               x8328
                                                                               '()))))
                                                                    (cons
                                                                     x8333
                                                                     x8327))))
                                                          (cons
                                                           'world
                                                           x8326))))
                                                (x8338 x8325)))
                                             (g8196
                                              (letrec ((x8356
                                                        ((lambda (j7404
                                                                  k7405
                                                                  f7406)
                                                           (letrec ((g8357
                                                                     (lambda (g7403)
                                                                       (letrec ((g8358
                                                                                 (letrec ((x8359
                                                                                           (letrec ((x8360
                                                                                                     (WORLD/C
                                                                                                      j7404
                                                                                                      k7405
                                                                                                      g7403)))
                                                                                             (f7406
                                                                                              x8360))))
                                                                                   (image/c
                                                                                    j7404
                                                                                    k7405
                                                                                    x8359))))
                                                                         g8358))))
                                                             g8357))
                                                         'module
                                                         'importer
                                                         world->scene))
                                                       (x8343
                                                        (letrec ((x8344
                                                                  (letrec ((x8351
                                                                            (letrec ((x8352
                                                                                      (letrec ((x8355
                                                                                                (input))
                                                                                               (x8353
                                                                                                (letrec ((x8354
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8354
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8355
                                                                                         x8353))))
                                                                              (cons
                                                                               'snake
                                                                               x8352)))
                                                                           (x8345
                                                                            (letrec ((x8346
                                                                                      (letrec ((x8347
                                                                                                (letrec ((x8350
                                                                                                          (input))
                                                                                                         (x8348
                                                                                                          (letrec ((x8349
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x8349
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x8350
                                                                                                   x8348))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x8347))))
                                                                              (cons
                                                                               x8346
                                                                               '()))))
                                                                    (cons
                                                                     x8351
                                                                     x8345))))
                                                          (cons
                                                           'world
                                                           x8344))))
                                                (x8356 x8343)))
                                             (g8197
                                              (letrec ((x8367
                                                        ((lambda (j7409
                                                                  k7410
                                                                  f7411)
                                                           (letrec ((g8368
                                                                     (lambda (g7407
                                                                              g7408)
                                                                       (letrec ((g8369
                                                                                 (letrec ((x8370
                                                                                           (letrec ((x8372
                                                                                                     (POSN/C
                                                                                                      j7409
                                                                                                      k7410
                                                                                                      g7407))
                                                                                                    (x8371
                                                                                                     (image/c
                                                                                                      j7409
                                                                                                      k7410
                                                                                                      g7408)))
                                                                                             (f7411
                                                                                              x8372
                                                                                              x8371))))
                                                                                   (image/c
                                                                                    j7409
                                                                                    k7410
                                                                                    x8370))))
                                                                         g8369))))
                                                             g8368))
                                                         'module
                                                         'importer
                                                         food+scene))
                                                       (x8362
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
                                                          (cons 'posn x8363)))
                                                       (x8361
                                                        (cons 'image '())))
                                                (x8367 x8362 x8361)))
                                             (g8198
                                              (letrec ((x8377
                                                        ((lambda (j7416
                                                                  k7417
                                                                  f7418)
                                                           (letrec ((g8378
                                                                     (lambda (g7412
                                                                              g7413
                                                                              g7414
                                                                              g7415)
                                                                       (letrec ((g8379
                                                                                 (letrec ((x8380
                                                                                           (letrec ((x8384
                                                                                                     (image/c
                                                                                                      j7416
                                                                                                      k7417
                                                                                                      g7412))
                                                                                                    (x8383
                                                                                                     (real?/c
                                                                                                      j7416
                                                                                                      k7417
                                                                                                      g7413))
                                                                                                    (x8382
                                                                                                     (real?/c
                                                                                                      j7416
                                                                                                      k7417
                                                                                                      g7414))
                                                                                                    (x8381
                                                                                                     (image/c
                                                                                                      j7416
                                                                                                      k7417
                                                                                                      g7415)))
                                                                                             (f7418
                                                                                              x8384
                                                                                              x8383
                                                                                              x8382
                                                                                              x8381))))
                                                                                   (image/c
                                                                                    j7416
                                                                                    k7417
                                                                                    x8380))))
                                                                         g8379))))
                                                             g8378))
                                                         'module
                                                         'importer
                                                         place-image-on-grid))
                                                       (x8376
                                                        (cons 'image '()))
                                                       (x8375 (input))
                                                       (x8374 (input))
                                                       (x8373
                                                        (cons 'image '())))
                                                (x8377
                                                 x8376
                                                 x8375
                                                 x8374
                                                 x8373)))
                                             (g8199
                                              (letrec ((x8391
                                                        ((lambda (j7421
                                                                  k7422
                                                                  f7423)
                                                           (letrec ((g8392
                                                                     (lambda (g7419
                                                                              g7420)
                                                                       (letrec ((g8393
                                                                                 (letrec ((x8394
                                                                                           (letrec ((x8396
                                                                                                     (SNAKE/C
                                                                                                      j7421
                                                                                                      k7422
                                                                                                      g7419))
                                                                                                    (x8395
                                                                                                     (image/c
                                                                                                      j7421
                                                                                                      k7422
                                                                                                      g7420)))
                                                                                             (f7423
                                                                                              x8396
                                                                                              x8395))))
                                                                                   (image/c
                                                                                    j7421
                                                                                    k7422
                                                                                    x8394))))
                                                                         g8393))))
                                                             g8392))
                                                         'module
                                                         'importer
                                                         snake+scene))
                                                       (x8386
                                                        (letrec ((x8387
                                                                  (letrec ((x8390
                                                                            (input))
                                                                           (x8388
                                                                            (letrec ((x8389
                                                                                      (input)))
                                                                              (cons
                                                                               x8389
                                                                               '()))))
                                                                    (cons
                                                                     x8390
                                                                     x8388))))
                                                          (cons 'snake x8387)))
                                                       (x8385
                                                        (cons 'image '())))
                                                (x8391 x8386 x8385)))
                                             (g8200
                                              (letrec ((x8399
                                                        ((lambda (j7426
                                                                  k7427
                                                                  f7428)
                                                           (letrec ((g8400
                                                                     (lambda (g7424
                                                                              g7425)
                                                                       (letrec ((g8401
                                                                                 (letrec ((x8402
                                                                                           (letrec ((x8404
                                                                                                     (letrec ((x8405
                                                                                                               (listof
                                                                                                                POSN/C)))
                                                                                                       (x8405
                                                                                                        j7426
                                                                                                        k7427
                                                                                                        g7424)))
                                                                                                    (x8403
                                                                                                     (image/c
                                                                                                      j7426
                                                                                                      k7427
                                                                                                      g7425)))
                                                                                             (f7428
                                                                                              x8404
                                                                                              x8403))))
                                                                                   (image/c
                                                                                    j7426
                                                                                    k7427
                                                                                    x8402))))
                                                                         g8401))))
                                                             g8400))
                                                         'module
                                                         'importer
                                                         segments+scene))
                                                       (x8398 (input))
                                                       (x8397
                                                        (cons 'image '())))
                                                (x8399 x8398 x8397)))
                                             (g8201
                                              (letrec ((x8412
                                                        ((lambda (j7431
                                                                  k7432
                                                                  f7433)
                                                           (letrec ((g8413
                                                                     (lambda (g7429
                                                                              g7430)
                                                                       (letrec ((g8414
                                                                                 (letrec ((x8415
                                                                                           (letrec ((x8417
                                                                                                     (POSN/C
                                                                                                      j7431
                                                                                                      k7432
                                                                                                      g7429))
                                                                                                    (x8416
                                                                                                     (image/c
                                                                                                      j7431
                                                                                                      k7432
                                                                                                      g7430)))
                                                                                             (f7433
                                                                                              x8417
                                                                                              x8416))))
                                                                                   (image/c
                                                                                    j7431
                                                                                    k7432
                                                                                    x8415))))
                                                                         g8414))))
                                                             g8413))
                                                         'module
                                                         'importer
                                                         segment+scene))
                                                       (x8407
                                                        (letrec ((x8408
                                                                  (letrec ((x8411
                                                                            (input))
                                                                           (x8409
                                                                            (letrec ((x8410
                                                                                      (input)))
                                                                              (cons
                                                                               x8410
                                                                               '()))))
                                                                    (cons
                                                                     x8411
                                                                     x8409))))
                                                          (cons 'posn x8408)))
                                                       (x8406
                                                        (cons 'image '())))
                                                (x8412 x8407 x8406))))
                                      g8201))))
                          g7463))))
              g7461)))
    g7460))
