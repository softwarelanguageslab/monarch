(letrec ((any? (lambda (v) (letrec ((g7449 #t)) g7449)))
         (meta (lambda (v) (letrec ((g7450 v)) g7450)))
         (member
          (lambda (v lst)
            (letrec ((g7451
                      (letrec ((g7452
                                (letrec ((x-e7453 lst))
                                  (match
                                   x-e7453
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7454 (eq? v v1)))
                                       (if x-cnd7454 #t (member v vs)))))))))
                        g7452)))
              g7451)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7455 (lambda (v) (letrec ((g7456 v)) g7456)))) g7455)))
         (nonzero?
          (lambda (v)
            (letrec ((g7457 (letrec ((x7458 (= v 0))) (not x7458)))) g7457))))
  (letrec ((g7459
            (letrec ((g7460
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7461 '())
                                 (g7462
                                  (letrec ((empty '())
                                           (real?/c
                                            (lambda (g7262 g7263 g7264)
                                              (letrec ((g7463
                                                        (letrec ((x-cnd7464
                                                                  (real?
                                                                   g7264)))
                                                          (if x-cnd7464
                                                            g7264
                                                            (blame
                                                             g7262
                                                             'real?)))))
                                                g7463)))
                                           (boolean?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7465
                                                        (letrec ((x-cnd7466
                                                                  (boolean?
                                                                   g7267)))
                                                          (if x-cnd7466
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'boolean?)))))
                                                g7465)))
                                           (number?/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7467
                                                        (letrec ((x-cnd7468
                                                                  (number?
                                                                   g7270)))
                                                          (if x-cnd7468
                                                            g7270
                                                            (blame
                                                             g7268
                                                             'number?)))))
                                                g7467)))
                                           (any/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7469
                                                        (letrec ((x-cnd7470
                                                                  ((lambda (v)
                                                                     (letrec ((g7471
                                                                               #t))
                                                                       g7471))
                                                                   g7273)))
                                                          (if x-cnd7470
                                                            g7273
                                                            (blame
                                                             g7271
                                                             '(lambda (v)
                                                                #t))))))
                                                g7469)))
                                           (any?/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7472
                                                        (letrec ((x-cnd7473
                                                                  ((lambda (v)
                                                                     (letrec ((g7474
                                                                               #t))
                                                                       g7474))
                                                                   g7276)))
                                                          (if x-cnd7473
                                                            g7276
                                                            (blame
                                                             g7274
                                                             '(lambda (v)
                                                                #t))))))
                                                g7472)))
                                           (cons?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7475
                                                        (letrec ((x-cnd7476
                                                                  (pair?
                                                                   g7279)))
                                                          (if x-cnd7476
                                                            g7279
                                                            (blame
                                                             g7277
                                                             'pair?)))))
                                                g7475)))
                                           (pair?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7477
                                                        (letrec ((x-cnd7478
                                                                  (pair?
                                                                   g7282)))
                                                          (if x-cnd7478
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'pair?)))))
                                                g7477)))
                                           (integer?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7479
                                                        (letrec ((x-cnd7480
                                                                  (integer?
                                                                   g7285)))
                                                          (if x-cnd7480
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'integer?)))))
                                                g7479)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7481
                                                        (lambda (k j v)
                                                          (letrec ((g7482
                                                                    (letrec ((x-cnd7483
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7483
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7482))))
                                                g7481)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7484
                                                        (lambda (k j v)
                                                          (letrec ((g7485
                                                                    (letrec ((x-cnd7486
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7486
                                                                        '()
                                                                        (letrec ((x7490
                                                                                  (letrec ((x7491
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7491)))
                                                                                 (x7487
                                                                                  (letrec ((x7489
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7488
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7489
                                                                                     k
                                                                                     j
                                                                                     x7488))))
                                                                          (orig-cons
                                                                           x7490
                                                                           x7487))))))
                                                            g7485))))
                                                g7484)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7492 #t)) g7492)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7493
                                                        (letrec ((x7494
                                                                  (= v 0)))
                                                          (not x7494))))
                                                g7493)))
                                           (nonzero?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7495
                                                        (letrec ((x-cnd7496
                                                                  ((lambda (v)
                                                                     (letrec ((g7497
                                                                               (letrec ((x7498
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7498))))
                                                                       g7497))
                                                                   g7288)))
                                                          (if x-cnd7496
                                                            g7288
                                                            (blame
                                                             g7286
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7495)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7499 v)) g7499)))
                                           (+
                                            ((lambda (j7291 k7292 f7293)
                                               (letrec ((g7501
                                                         (lambda (g7289 g7290)
                                                           (letrec ((g7502
                                                                     (letrec ((x7503
                                                                               (letrec ((x7505
                                                                                         (number?/c
                                                                                          j7291
                                                                                          k7292
                                                                                          g7289))
                                                                                        (x7504
                                                                                         (number?/c
                                                                                          j7291
                                                                                          k7292
                                                                                          g7290)))
                                                                                 (f7293
                                                                                  x7505
                                                                                  x7504))))
                                                                       (number?/c
                                                                        j7291
                                                                        k7292
                                                                        x7503))))
                                                             g7502))))
                                                 g7501))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7500 (orig-+ a b)))
                                                 g7500))))
                                           (-
                                            ((lambda (j7296 k7297 f7298)
                                               (letrec ((g7507
                                                         (lambda (g7294 g7295)
                                                           (letrec ((g7508
                                                                     (letrec ((x7509
                                                                               (letrec ((x7511
                                                                                         (number?/c
                                                                                          j7296
                                                                                          k7297
                                                                                          g7294))
                                                                                        (x7510
                                                                                         (number?/c
                                                                                          j7296
                                                                                          k7297
                                                                                          g7295)))
                                                                                 (f7298
                                                                                  x7511
                                                                                  x7510))))
                                                                       (number?/c
                                                                        j7296
                                                                        k7297
                                                                        x7509))))
                                                             g7508))))
                                                 g7507))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7506 (orig-- a b)))
                                                 g7506))))
                                           (*
                                            ((lambda (j7301 k7302 f7303)
                                               (letrec ((g7513
                                                         (lambda (g7299 g7300)
                                                           (letrec ((g7514
                                                                     (letrec ((x7515
                                                                               (letrec ((x7517
                                                                                         (number?/c
                                                                                          j7301
                                                                                          k7302
                                                                                          g7299))
                                                                                        (x7516
                                                                                         (number?/c
                                                                                          j7301
                                                                                          k7302
                                                                                          g7300)))
                                                                                 (f7303
                                                                                  x7517
                                                                                  x7516))))
                                                                       (number?/c
                                                                        j7301
                                                                        k7302
                                                                        x7515))))
                                                             g7514))))
                                                 g7513))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7512 (orig-* a b)))
                                                 g7512))))
                                           (/
                                            ((lambda (j7306 k7307 f7308)
                                               (letrec ((g7519
                                                         (lambda (g7304 g7305)
                                                           (letrec ((g7520
                                                                     (letrec ((x7521
                                                                               (letrec ((x7523
                                                                                         (number?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7304))
                                                                                        (x7522
                                                                                         (number?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7305)))
                                                                                 (f7308
                                                                                  x7523
                                                                                  x7522))))
                                                                       (number?/c
                                                                        j7306
                                                                        k7307
                                                                        x7521))))
                                                             g7520))))
                                                 g7519))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7518 (orig-/ a b)))
                                                 g7518))))
                                           (car
                                            ((lambda (j7310 k7311 f7312)
                                               (letrec ((g7525
                                                         (lambda (g7309)
                                                           (letrec ((g7526
                                                                     (letrec ((x7527
                                                                               (letrec ((x7528
                                                                                         (pair?/c
                                                                                          j7310
                                                                                          k7311
                                                                                          g7309)))
                                                                                 (f7312
                                                                                  x7528))))
                                                                       (any/c
                                                                        j7310
                                                                        k7311
                                                                        x7527))))
                                                             g7526))))
                                                 g7525))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7524 (orig-car p)))
                                                 g7524))))
                                           (cdr
                                            ((lambda (j7314 k7315 f7316)
                                               (letrec ((g7530
                                                         (lambda (g7313)
                                                           (letrec ((g7531
                                                                     (letrec ((x7532
                                                                               (letrec ((x7533
                                                                                         (pair?/c
                                                                                          j7314
                                                                                          k7315
                                                                                          g7313)))
                                                                                 (f7316
                                                                                  x7533))))
                                                                       (any/c
                                                                        j7314
                                                                        k7315
                                                                        x7532))))
                                                             g7531))))
                                                 g7530))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7529 (orig-cdr p)))
                                                 g7529))))
                                           (cons
                                            ((lambda (j7319 k7320 f7321)
                                               (letrec ((g7535
                                                         (lambda (g7317 g7318)
                                                           (letrec ((g7536
                                                                     (letrec ((x7537
                                                                               (letrec ((x7539
                                                                                         (any/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7317))
                                                                                        (x7538
                                                                                         (any/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7318)))
                                                                                 (f7321
                                                                                  x7539
                                                                                  x7538))))
                                                                       (pair?/c
                                                                        j7319
                                                                        k7320
                                                                        x7537))))
                                                             g7536))))
                                                 g7535))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7534
                                                         (orig-cons a b)))
                                                 g7534))))
                                           (vector-ref
                                            ((lambda (j7323 k7324 f7325)
                                               (letrec ((g7541
                                                         (lambda (g7322)
                                                           (letrec ((g7542
                                                                     (letrec ((x7543
                                                                               (letrec ((x7544
                                                                                         (vector?/c
                                                                                          j7323
                                                                                          k7324
                                                                                          g7322)))
                                                                                 (f7325
                                                                                  x7544))))
                                                                       (integer?/c
                                                                        j7323
                                                                        k7324
                                                                        x7543))))
                                                             g7542))))
                                                 g7541))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7540
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7540))))
                                           (vector-set!
                                            ((lambda (j7328 k7329 f7330)
                                               (letrec ((g7546
                                                         (lambda (g7326 g7327)
                                                           (letrec ((g7547
                                                                     (letrec ((x7548
                                                                               (letrec ((x7550
                                                                                         (vector?/c
                                                                                          j7328
                                                                                          k7329
                                                                                          g7326))
                                                                                        (x7549
                                                                                         (integer?/c
                                                                                          j7328
                                                                                          k7329
                                                                                          g7327)))
                                                                                 (f7330
                                                                                  x7550
                                                                                  x7549))))
                                                                       (any/c
                                                                        j7328
                                                                        k7329
                                                                        x7548))))
                                                             g7547))))
                                                 g7546))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7545
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7545))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7551
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7551)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7552
                                                        (letrec ((x7553
                                                                  (letrec ((x7554
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7554))))
                                                          (cdr x7553))))
                                                g7552)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7555
                                                        (letrec ((x7558
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7558)))
                                                       (g7556
                                                        (letrec ((x7559
                                                                  (list? l)))
                                                          (assert x7559)))
                                                       (g7557
                                                        (letrec ((x-cnd7560
                                                                  (null? l)))
                                                          (if x-cnd7560
                                                            '()
                                                            (letrec ((x7563
                                                                      (letrec ((x7564
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7564)))
                                                                     (x7561
                                                                      (letrec ((x7562
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7562))))
                                                              (cons
                                                               x7563
                                                               x7561))))))
                                                g7557)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7565
                                                        (letrec ((x7566
                                                                  (car x)))
                                                          (cdr x7566))))
                                                g7565)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7567
                                                        (letrec ((x7568
                                                                  (letrec ((x7569
                                                                            (letrec ((x7570
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7570))))
                                                                    (cdr
                                                                     x7569))))
                                                          (car x7568))))
                                                g7567)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7571
                                                        (letrec ((x7572
                                                                  (letrec ((x7573
                                                                            (letrec ((x7574
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7574))))
                                                                    (car
                                                                     x7573))))
                                                          (cdr x7572))))
                                                g7571)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7575
                                                        (letrec ((x7578
                                                                  (string?
                                                                   filename)))
                                                          (assert x7578)))
                                                       (g7576
                                                        (letrec ((x7579
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7579)))
                                                       (g7577
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7580
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7581 res))
                                                            g7581))))
                                                g7577)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7582
                                                        (letrec ((x7583
                                                                  (letrec ((x7584
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7584))))
                                                          (car x7583))))
                                                g7582)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7585
                                                        (letrec ((x7586
                                                                  (letrec ((x7587
                                                                            (letrec ((x7588
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7588))))
                                                                    (car
                                                                     x7587))))
                                                          (cdr x7586))))
                                                g7585)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7589
                                                        (letrec ((x7591
                                                                  (list? l)))
                                                          (assert x7591)))
                                                       (g7590
                                                        (letrec ((x-cnd7592
                                                                  (null? l)))
                                                          (if x-cnd7592
                                                            #f
                                                            (letrec ((x-cnd7593
                                                                      (letrec ((x7594
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7594
                                                                         k))))
                                                              (if x-cnd7593
                                                                (car l)
                                                                (letrec ((x7595
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7595))))))))
                                                g7590)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7596
                                                        (letrec ((x7597
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7597))))
                                                g7596)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7598
                                                        (letrec ((x7600
                                                                  (list? l)))
                                                          (assert x7600)))
                                                       (g7599
                                                        (letrec ((x-cnd7601
                                                                  (null? l)))
                                                          (if x-cnd7601
                                                            ""
                                                            (letrec ((x7604
                                                                      (letrec ((x7605
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7605)))
                                                                     (x7602
                                                                      (letrec ((x7603
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7603))))
                                                              (string-append
                                                               x7604
                                                               x7602))))))
                                                g7599)))
                                           (char<=?
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
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7611
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7611))))
                                                g7608)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7612
                                                        (letrec ((x7613
                                                                  (letrec ((x7614
                                                                            (letrec ((x7615
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7615))))
                                                                    (cdr
                                                                     x7614))))
                                                          (cdr x7613))))
                                                g7612)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7616
                                                        (letrec ((x7619
                                                                  (list? l)))
                                                          (assert x7619)))
                                                       (g7617
                                                        (letrec ((x7620
                                                                  (number?)))
                                                          (assert x7620)))
                                                       (g7618
                                                        (letrec ((x-cnd7621
                                                                  (zero? k)))
                                                          (if x-cnd7621
                                                            x
                                                            (letrec ((x7623
                                                                      (cdr x))
                                                                     (x7622
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7623
                                                               x7622))))))
                                                g7618)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7624 '())) g7624)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7625
                                                        (letrec ((x-cnd7626
                                                                  (letrec ((x7627
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7627))))
                                                          (if x-cnd7626
                                                            (letrec ((x7628
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7628))
                                                            #f))))
                                                g7625)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7629
                                                        (letrec ((x7631
                                                                  (number? x)))
                                                          (assert x7631)))
                                                       (g7630
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7632
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7633
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7633)))))
                                                            g7632))))
                                                g7630)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7634
                                                        (letrec ((val7244
                                                                  (letrec ((x7635
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7635
                                                                     9))))
                                                          (letrec ((g7636
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7637
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7637
                                                                                   10))))
                                                                        (letrec ((g7638
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7639
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7639
                                                                                       32)))))
                                                                          g7638)))))
                                                            g7636))))
                                                g7634)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7640
                                                        (letrec ((x7641
                                                                  (letrec ((x7642
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7642))))
                                                          (cdr x7641))))
                                                g7640)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7643
                                                        (letrec ((x7645
                                                                  (number? x)))
                                                          (assert x7645)))
                                                       (g7644 (> x 0)))
                                                g7644)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7646 #f)) g7646)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7647
                                                        (letrec ((x7648
                                                                  (cdr x)))
                                                          (cdr x7648))))
                                                g7647)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7649
                                                        (letrec ((x7651
                                                                  (number? x)))
                                                          (assert x7651)))
                                                       (g7650
                                                        (letrec ((x-cnd7652
                                                                  (< x 0)))
                                                          (if x-cnd7652
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7650)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7653
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7654
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x7656
                                                                                          (null?
                                                                                           a))
                                                                                         (x7655
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7656
                                                                                       x7655))))
                                                                        (letrec ((g7657
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x7660
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7659
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7658
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7660
                                                                                                     x7659
                                                                                                     x7658))))
                                                                                      (letrec ((g7661
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x7669
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7668
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7665
                                                                                                                      (letrec ((x7667
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7666
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7667
                                                                                                                         x7666)))
                                                                                                                     (x7662
                                                                                                                      (letrec ((x7664
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7663
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7664
                                                                                                                         x7663))))
                                                                                                              (and x7669
                                                                                                                   x7668
                                                                                                                   x7665
                                                                                                                   x7662))))
                                                                                                    (letrec ((g7670
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x7686
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7685
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7671
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7672
                                                                                                                                      (letrec ((x7683
                                                                                                                                                (letrec ((x7684
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7684
                                                                                                                                                   n)))
                                                                                                                                               (x7673
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7674
                                                                                                                                                                      (letrec ((x7681
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7675
                                                                                                                                                                                (letrec ((x7678
                                                                                                                                                                                          (letrec ((x7680
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7679
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7680
                                                                                                                                                                                             x7679)))
                                                                                                                                                                                         (x7676
                                                                                                                                                                                          (letrec ((x7677
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7677))))
                                                                                                                                                                                  (and x7678
                                                                                                                                                                                       x7676))))
                                                                                                                                                                        (or x7681
                                                                                                                                                                            x7675))))
                                                                                                                                                              g7674))))
                                                                                                                                                  (letrec ((g7682
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7682))))
                                                                                                                                        (and x7683
                                                                                                                                             x7673))))
                                                                                                                              g7672))))
                                                                                                                  (and x7686
                                                                                                                       x7685
                                                                                                                       x7671)))))
                                                                                                      g7670)))))
                                                                                        g7661)))))
                                                                          g7657)))))
                                                            g7654))))
                                                g7653)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7687
                                                        (letrec ((x7688
                                                                  (letrec ((x7689
                                                                            (letrec ((x7690
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7690))))
                                                                    (car
                                                                     x7689))))
                                                          (cdr x7688))))
                                                g7687)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7691
                                                        (letrec ((x7692
                                                                  (letrec ((x7693
                                                                            (letrec ((x7694
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7694))))
                                                                    (car
                                                                     x7693))))
                                                          (car x7692))))
                                                g7691)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7695 (eq? x y)))
                                                g7695)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7696
                                                        (letrec ((x7698
                                                                  (number? x)))
                                                          (assert x7698)))
                                                       (g7697
                                                        (letrec ((val7250
                                                                  (> x y)))
                                                          (letrec ((g7699
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7700
                                                                                  (if val7251
                                                                                    val7251
                                                                                    #f)))
                                                                          g7700)))))
                                                            g7699))))
                                                g7697)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7701
                                                        (letrec ((x7704
                                                                  (string?
                                                                   filename)))
                                                          (assert x7704)))
                                                       (g7702
                                                        (letrec ((x7705
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7705)))
                                                       (g7703
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7706
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7707 res))
                                                            g7707))))
                                                g7703)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7708 (cons x '())))
                                                g7708)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7709
                                                        (letrec ((x7712
                                                                  (char? c1)))
                                                          (assert x7712)))
                                                       (g7710
                                                        (letrec ((x7713
                                                                  (char? c2)))
                                                          (assert x7713)))
                                                       (g7711
                                                        (letrec ((val7252
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7714
                                                                    (if val7252
                                                                      val7252
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7714))))
                                                g7711)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7715
                                                        (letrec ((x7716
                                                                  (letrec ((x7717
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7717))))
                                                          (cdr x7716))))
                                                g7715)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7718
                                                        (letrec ((x7719
                                                                  (letrec ((x7720
                                                                            (letrec ((x7721
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7721))))
                                                                    (car
                                                                     x7720))))
                                                          (cdr x7719))))
                                                g7718)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7722
                                                        (letrec ((x7723
                                                                  (letrec ((x7724
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7724))))
                                                          (car x7723))))
                                                g7722)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7725
                                                        (letrec ((x7726
                                                                  (letrec ((x7727
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7727))))
                                                          (car x7726))))
                                                g7725)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7728
                                                        (letrec ((x7731
                                                                  (char? c1)))
                                                          (assert x7731)))
                                                       (g7729
                                                        (letrec ((x7732
                                                                  (char? c2)))
                                                          (assert x7732)))
                                                       (g7730
                                                        (letrec ((x7733
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7733))))
                                                g7730)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7734
                                                        (letrec ((x7735
                                                                  (letrec ((x7736
                                                                            (letrec ((x7737
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7737))))
                                                                    (car
                                                                     x7736))))
                                                          (car x7735))))
                                                g7734)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7738
                                                        (letrec ((x7740
                                                                  (number? x)))
                                                          (assert x7740)))
                                                       (g7739 (< x 0)))
                                                g7739)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7741 (memq e l)))
                                                g7741)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7742
                                                        (letrec ((x7743
                                                                  (letrec ((x7744
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7744))))
                                                          (car x7743))))
                                                g7742)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7745 '())) g7745)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7746
                                                        (letrec ((x7748
                                                                  (list? l)))
                                                          (assert x7748)))
                                                       (g7747
                                                        (letrec ((x-cnd7749
                                                                  (null? l)))
                                                          (if x-cnd7749
                                                            '()
                                                            (letrec ((x7752
                                                                      (letrec ((x7753
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7753)))
                                                                     (x7750
                                                                      (letrec ((x7751
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7751))))
                                                              (append
                                                               x7752
                                                               x7750))))))
                                                g7747)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7754
                                                        (letrec ((x7755
                                                                  (letrec ((x7756
                                                                            (letrec ((x7757
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7757))))
                                                                    (car
                                                                     x7756))))
                                                          (car x7755))))
                                                g7754)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7758
                                                        (letrec ((x7759
                                                                  (letrec ((x7760
                                                                            (letrec ((x7761
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7761))))
                                                                    (cdr
                                                                     x7760))))
                                                          (cdr x7759))))
                                                g7758)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7762
                                                        (letrec ((x7764
                                                                  (number? x)))
                                                          (assert x7764)))
                                                       (g7763
                                                        (letrec ((x7765
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7765))))
                                                g7763)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7766
                                                        (letrec ((x7767
                                                                  (letrec ((x7768
                                                                            (letrec ((x7769
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7769))))
                                                                    (car
                                                                     x7768))))
                                                          (car x7767))))
                                                g7766)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7770
                                                        (letrec ((x7773
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7773)))
                                                       (g7771
                                                        (letrec ((x7774
                                                                  (list?
                                                                   args)))
                                                          (assert x7774)))
                                                       (g7772
                                                        (if cnd
                                                          (letrec ((g7775
                                                                    (proc)))
                                                            g7775)
                                                          (if cnd
                                                            (letrec ((g7776
                                                                      (letrec ((x7777
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7777))))
                                                              g7776)
                                                            (if cnd
                                                              (letrec ((g7778
                                                                        (letrec ((x7780
                                                                                  (car
                                                                                   args))
                                                                                 (x7779
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7780
                                                                           x7779))))
                                                                g7778)
                                                              (if cnd
                                                                (letrec ((g7781
                                                                          (letrec ((x7784
                                                                                    (car
                                                                                     args))
                                                                                   (x7783
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7782
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7784
                                                                             x7783
                                                                             x7782))))
                                                                  g7781)
                                                                (if cnd
                                                                  (letrec ((g7785
                                                                            (letrec ((x7789
                                                                                      (car
                                                                                       args))
                                                                                     (x7788
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7787
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7786
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7789
                                                                               x7788
                                                                               x7787
                                                                               x7786))))
                                                                    g7785)
                                                                  (if cnd
                                                                    (letrec ((g7790
                                                                              (letrec ((x7796
                                                                                        (car
                                                                                         args))
                                                                                       (x7795
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7794
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7793
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7791
                                                                                        (letrec ((x7792
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7792))))
                                                                                (proc
                                                                                 x7796
                                                                                 x7795
                                                                                 x7794
                                                                                 x7793
                                                                                 x7791))))
                                                                      g7790)
                                                                    (if cnd
                                                                      (letrec ((g7797
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
                                                                                             x7801)))
                                                                                         (x7798
                                                                                          (letrec ((x7799
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7799))))
                                                                                  (proc
                                                                                   x7805
                                                                                   x7804
                                                                                   x7803
                                                                                   x7802
                                                                                   x7800
                                                                                   x7798))))
                                                                        g7797)
                                                                      (if cnd
                                                                        (letrec ((g7806
                                                                                  (letrec ((x7816
                                                                                            (car
                                                                                             args))
                                                                                           (x7815
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7814
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7813
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7811
                                                                                            (letrec ((x7812
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7812)))
                                                                                           (x7809
                                                                                            (letrec ((x7810
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7810)))
                                                                                           (x7807
                                                                                            (letrec ((x7808
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7808))))
                                                                                    (proc
                                                                                     x7816
                                                                                     x7815
                                                                                     x7814
                                                                                     x7813
                                                                                     x7811
                                                                                     x7809
                                                                                     x7807))))
                                                                          g7806)
                                                                        (letrec ((g7817
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7817)))))))))))
                                                g7772)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7818
                                                        (letrec ((x7820
                                                                  (list? l)))
                                                          (assert x7820)))
                                                       (g7819
                                                        (letrec ((x-cnd7821
                                                                  (null? l)))
                                                          (if x-cnd7821
                                                            #f
                                                            (letrec ((x-cnd7822
                                                                      (letrec ((x7823
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7823
                                                                         e))))
                                                              (if x-cnd7822
                                                                l
                                                                (letrec ((x7824
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7824))))))))
                                                g7819)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7825
                                                        (letrec ((x7826
                                                                  (letrec ((x7827
                                                                            (letrec ((x7828
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7828))))
                                                                    (cdr
                                                                     x7827))))
                                                          (cdr x7826))))
                                                g7825)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7829
                                                        (letrec ((x7830
                                                                  (letrec ((x7831
                                                                            (letrec ((x7832
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7832))))
                                                                    (cdr
                                                                     x7831))))
                                                          (car x7830))))
                                                g7829)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7833 (random 42)))
                                                g7833)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7834
                                                        (letrec ((x7836
                                                                  (number? x)))
                                                          (assert x7836)))
                                                       (g7835 (= x 0)))
                                                g7835)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7837
                                                        (letrec ((val7253
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7838
                                                                    (if val7253
                                                                      val7253
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7838))))
                                                g7837)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7839
                                                        (letrec ((x7840
                                                                  (cdr x)))
                                                          (car x7840))))
                                                g7839)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7841
                                                        (letrec ((val7254
                                                                  (letrec ((x7844
                                                                            (pair?
                                                                             l))
                                                                           (x7842
                                                                            (letrec ((x7843
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7843))))
                                                                    (and x7844
                                                                         x7842))))
                                                          (letrec ((g7845
                                                                    (if val7254
                                                                      val7254
                                                                      (null?
                                                                       l))))
                                                            g7845))))
                                                g7841)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7846
                                                        (letrec ((x7847
                                                                  (letrec ((x7848
                                                                            (letrec ((x7849
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7849))))
                                                                    (cdr
                                                                     x7848))))
                                                          (cdr x7847))))
                                                g7846)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7850
                                                        (letrec ((x-cnd7851
                                                                  (letrec ((x7852
                                                                            #\0))
                                                                    (char<=?
                                                                     x7852
                                                                     c))))
                                                          (if x-cnd7851
                                                            (letrec ((x7853
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7853))
                                                            #f))))
                                                g7850)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7854
                                                        (letrec ((x7856
                                                                  (list? l)))
                                                          (assert x7856)))
                                                       (g7855
                                                        (letrec ((x-cnd7857
                                                                  (null? l)))
                                                          (if x-cnd7857
                                                            #f
                                                            (letrec ((x-cnd7858
                                                                      (letrec ((x7859
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7859
                                                                         k))))
                                                              (if x-cnd7858
                                                                (car l)
                                                                (letrec ((x7860
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7860))))))))
                                                g7855)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7861 (if x #f #t)))
                                                g7861)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7862 (append l1 l2)))
                                                g7862)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7863
                                                        (letrec ((x7865
                                                                  (list? l)))
                                                          (assert x7865)))
                                                       (g7864
                                                        (letrec ((x-cnd7866
                                                                  (null? l)))
                                                          (if x-cnd7866
                                                            #f
                                                            (letrec ((x-cnd7867
                                                                      (letrec ((x7868
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7868
                                                                         e))))
                                                              (if x-cnd7867
                                                                l
                                                                (letrec ((x7869
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7869))))))))
                                                g7864)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7870
                                                        (letrec ((x7871
                                                                  (letrec ((x7872
                                                                            (letrec ((x7873
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7873))))
                                                                    (cdr
                                                                     x7872))))
                                                          (car x7871))))
                                                g7870)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7874
                                                        (letrec ((x7876
                                                                  (list? l)))
                                                          (assert x7876)))
                                                       (g7875
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7877
                                                                              (letrec ((x-cnd7878
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7878
                                                                                  0
                                                                                  (letrec ((x7879
                                                                                            (letrec ((x7880
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7880))))
                                                                                    (+
                                                                                     1
                                                                                     x7879))))))
                                                                      g7877))))
                                                          (letrec ((g7881
                                                                    (rec l)))
                                                            g7881))))
                                                g7875)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7882
                                                        (letrec ((x7885
                                                                  (char? c1)))
                                                          (assert x7885)))
                                                       (g7883
                                                        (letrec ((x7886
                                                                  (char? c2)))
                                                          (assert x7886)))
                                                       (g7884
                                                        (letrec ((val7255
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7887
                                                                    (if val7255
                                                                      val7255
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7887))))
                                                g7884)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7888
                                                        (letrec ((x7889
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7889))))
                                                g7888)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7890
                                                        (letrec ((x7891
                                                                  (letrec ((x7892
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7892))))
                                                          (cdr x7891))))
                                                g7890)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7893
                                                        (letrec ((x7895
                                                                  (list? l)))
                                                          (assert x7895)))
                                                       (g7894
                                                        (letrec ((x-cnd7896
                                                                  (null? l)))
                                                          (if x-cnd7896
                                                            #f
                                                            (letrec ((x-cnd7897
                                                                      (letrec ((x7898
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7898
                                                                         k))))
                                                              (if x-cnd7897
                                                                (car l)
                                                                (letrec ((x7899
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7899))))))))
                                                g7894)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7900
                                                        (letrec ((x7901
                                                                  (car x)))
                                                          (car x7901))))
                                                g7900)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7902
                                                        (letrec ((x7905
                                                                  (char? c1)))
                                                          (assert x7905)))
                                                       (g7903
                                                        (letrec ((x7906
                                                                  (char? c2)))
                                                          (assert x7906)))
                                                       (g7904
                                                        (letrec ((x7907
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7907))))
                                                g7904)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7908
                                                        (letrec ((val7256
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7909
                                                                    (if val7256
                                                                      val7256
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7909))))
                                                g7908)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7910
                                                        (letrec ((x7913
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7913)))
                                                       (g7911
                                                        (letrec ((x7914
                                                                  (list? l)))
                                                          (assert x7914)))
                                                       (g7912
                                                        (letrec ((x-cnd7915
                                                                  (null? l)))
                                                          (if x-cnd7915
                                                            #t
                                                            (letrec ((x-cnd7916
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7916
                                                                (letrec ((g7917
                                                                          (letrec ((x7919
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7919)))
                                                                         (g7918
                                                                          (letrec ((x7920
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7920))))
                                                                  g7918)
                                                                '()))))))
                                                g7912)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7921
                                                        (letrec ((x7923
                                                                  (number? x)))
                                                          (assert x7923)))
                                                       (g7922
                                                        (letrec ((x-cnd7924
                                                                  (< x 0)))
                                                          (if x-cnd7924
                                                            (- 0 x)
                                                            x))))
                                                g7922)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7925
                                                        (letrec ((x7928
                                                                  (char? c1)))
                                                          (assert x7928)))
                                                       (g7926
                                                        (letrec ((x7929
                                                                  (char? c2)))
                                                          (assert x7929)))
                                                       (g7927
                                                        (letrec ((val7257
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7930
                                                                    (if val7257
                                                                      val7257
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7930))))
                                                g7927)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7931
                                                        (letrec ((x7932
                                                                  (letrec ((x7933
                                                                            (letrec ((x7934
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7934))))
                                                                    (cdr
                                                                     x7933))))
                                                          (car x7932))))
                                                g7931)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7935 #f)) g7935)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7936
                                                        (letrec ((x7938
                                                                  (letrec ((x7939
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7939)))
                                                                 (x7937
                                                                  (gcd m n)))
                                                          (/ x7938 x7937))))
                                                g7936)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7940
                                                        (letrec ((x7942
                                                                  (number? x)))
                                                          (assert x7942)))
                                                       (g7941
                                                        (letrec ((x7943
                                                                  (<= x y)))
                                                          (not x7943))))
                                                g7941)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7944
                                                        (letrec ((x7948
                                                                  (list? l)))
                                                          (assert x7948)))
                                                       (g7945
                                                        (letrec ((x7949
                                                                  (number?
                                                                   index)))
                                                          (assert x7949)))
                                                       (g7946
                                                        (letrec ((x7950
                                                                  (letrec ((x7951
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7951))))
                                                          (assert x7950)))
                                                       (g7947
                                                        (letrec ((x-cnd7952
                                                                  (= index 0)))
                                                          (if x-cnd7952
                                                            (car l)
                                                            (letrec ((x7954
                                                                      (cdr l))
                                                                     (x7953
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7954
                                                               x7953))))))
                                                g7947)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7955
                                                        (letrec ((x-cnd7956
                                                                  (= b 0)))
                                                          (if x-cnd7956
                                                            a
                                                            (letrec ((x7957
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7957))))))
                                                g7955)))
                                           (image
                                            (lambda ()
                                              (letrec ((g7958
                                                        (cons 'image '())))
                                                g7958)))
                                           (image?
                                            (lambda (image7433)
                                              (letrec ((g7959
                                                        (letrec ((x7960
                                                                  (car
                                                                   image7433)))
                                                          (eq? x7960 'image))))
                                                g7959)))
                                           (image/c
                                            (lambda (j7332 k7333 v7331)
                                              (letrec ((g7961
                                                        (cons image '())))
                                                g7961)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g7962 (image)))
                                                g7962)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g7963 (image)))
                                                g7963)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g7964 (image)))
                                                g7964)))
                                           (posn
                                            (lambda (x7435 y7436)
                                              (letrec ((g7965
                                                        (letrec ((x7966
                                                                  (letrec ((x7967
                                                                            (cons
                                                                             y7436
                                                                             '())))
                                                                    (cons
                                                                     x7435
                                                                     x7967))))
                                                          (cons 'posn x7966))))
                                                g7965)))
                                           (posn?
                                            (lambda (posn7434)
                                              (letrec ((g7968
                                                        (letrec ((x7969
                                                                  (car
                                                                   posn7434)))
                                                          (eq? x7969 'posn))))
                                                g7968)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g7970
                                                        (letrec ((x7971
                                                                  (cdr posn)))
                                                          (car x7971))))
                                                g7970)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g7972
                                                        (letrec ((x7973
                                                                  (letrec ((x7974
                                                                            (cdr
                                                                             posn)))
                                                                    (cdr
                                                                     x7974))))
                                                          (car x7973))))
                                                g7972)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g7975
                                                        (letrec ((x-cnd7976
                                                                  (letrec ((x7978
                                                                            (posn-x
                                                                             p1))
                                                                           (x7977
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x7978
                                                                     x7977))))
                                                          (if x-cnd7976
                                                            (letrec ((x7980
                                                                      (posn-y
                                                                       p1))
                                                                     (x7979
                                                                      (posn-y
                                                                       p2)))
                                                              (= x7980 x7979))
                                                            #f))))
                                                g7975)))
                                           (snake
                                            (lambda (dir7440 segs7441)
                                              (letrec ((g7981
                                                        (letrec ((x7982
                                                                  (letrec ((x7983
                                                                            (cons
                                                                             segs7441
                                                                             '())))
                                                                    (cons
                                                                     dir7440
                                                                     x7983))))
                                                          (cons
                                                           'snake
                                                           x7982))))
                                                g7981)))
                                           (snake?
                                            (lambda (snake7439)
                                              (letrec ((g7984
                                                        (letrec ((x7985
                                                                  (car
                                                                   snake7439)))
                                                          (eq? x7985 'snake))))
                                                g7984)))
                                           (snake-dir
                                            (lambda (snake)
                                              (letrec ((g7986
                                                        (letrec ((x7987
                                                                  (cdr snake)))
                                                          (car x7987))))
                                                g7986)))
                                           (snake-segs
                                            (lambda (snake)
                                              (letrec ((g7988
                                                        (letrec ((x7989
                                                                  (letrec ((x7990
                                                                            (cdr
                                                                             snake)))
                                                                    (cdr
                                                                     x7990))))
                                                          (car x7989))))
                                                g7988)))
                                           (world
                                            (lambda (snake7445 food7446)
                                              (letrec ((g7991
                                                        (letrec ((x7992
                                                                  (letrec ((x7993
                                                                            (cons
                                                                             food7446
                                                                             '())))
                                                                    (cons
                                                                     snake7445
                                                                     x7993))))
                                                          (cons
                                                           'world
                                                           x7992))))
                                                g7991)))
                                           (world?
                                            (lambda (world7444)
                                              (letrec ((g7994
                                                        (letrec ((x7995
                                                                  (car
                                                                   world7444)))
                                                          (eq? x7995 'world))))
                                                g7994)))
                                           (world-snake
                                            (lambda (world)
                                              (letrec ((g7996
                                                        (letrec ((x7997
                                                                  (cdr world)))
                                                          (car x7997))))
                                                g7996)))
                                           (world-food
                                            (lambda (world)
                                              (letrec ((g7998
                                                        (letrec ((x7999
                                                                  (letrec ((x8000
                                                                            (cdr
                                                                             world)))
                                                                    (cdr
                                                                     x8000))))
                                                          (car x7999))))
                                                g7998)))
                                           (DIR/C
                                            (lambda (g7338 g7339 g7340)
                                              (letrec ((g8001
                                                        (letrec ((x-cnd8002
                                                                  ((lambda (v7337)
                                                                     (letrec ((g8003
                                                                               (letrec ((x-cnd8004
                                                                                         (eq?
                                                                                          'up
                                                                                          v7337)))
                                                                                 (if x-cnd8004
                                                                                   #t
                                                                                   (letrec ((x-cnd8005
                                                                                             (eq?
                                                                                              'down
                                                                                              v7337)))
                                                                                     (if x-cnd8005
                                                                                       #t
                                                                                       (letrec ((x-cnd8006
                                                                                                 (eq?
                                                                                                  'left
                                                                                                  v7337)))
                                                                                         (if x-cnd8006
                                                                                           #t
                                                                                           (eq?
                                                                                            'right
                                                                                            v7337)))))))))
                                                                       g8003))
                                                                   g7340)))
                                                          (if x-cnd8002
                                                            g7340
                                                            (blame
                                                             g7338
                                                             '(lambda (v7337)
                                                                (if (eq?
                                                                     'up
                                                                     v7337)
                                                                  #t
                                                                  (if (eq?
                                                                       'down
                                                                       v7337)
                                                                    #t
                                                                    (if (eq?
                                                                         'left
                                                                         v7337)
                                                                      #t
                                                                      (eq?
                                                                       'right
                                                                       v7337))))))))))
                                                g8001)))
                                           (POSN/C
                                            (lambda (j7342 k7343 v7341)
                                              (letrec ((g8007
                                                        (letrec ((checked7344
                                                                  (letrec ((x8008
                                                                            (car
                                                                             v7341)))
                                                                    (real?/c
                                                                     j7342
                                                                     k7343
                                                                     x8008))))
                                                          (letrec ((g8009
                                                                    (letrec ((checked7345
                                                                              (letrec ((x8010
                                                                                        (letrec ((x8011
                                                                                                  (cdr
                                                                                                   v7341)))
                                                                                          (car
                                                                                           x8011))))
                                                                                (real?/c
                                                                                 j7342
                                                                                 k7343
                                                                                 x8010))))
                                                                      (letrec ((g8012
                                                                                (letrec ((x8013
                                                                                          (letrec ((x8014
                                                                                                    (cons
                                                                                                     checked7345
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7344
                                                                                             x8014))))
                                                                                  (cons
                                                                                   posn
                                                                                   x8013))))
                                                                        g8012))))
                                                            g8009))))
                                                g8007)))
                                           (SNAKE/C
                                            (lambda (j7348 k7349 v7347)
                                              (letrec ((g8015
                                                        (letrec ((checked7350
                                                                  (letrec ((x8016
                                                                            (car
                                                                             v7347)))
                                                                    (DIR/C
                                                                     j7348
                                                                     k7349
                                                                     x8016))))
                                                          (letrec ((g8017
                                                                    (letrec ((checked7351
                                                                              (letrec ((x8020
                                                                                        (letrec ((x8021
                                                                                                  (listof
                                                                                                   POSN/C)))
                                                                                          (and/c
                                                                                           cons?/c
                                                                                           x8021)))
                                                                                       (x8018
                                                                                        (letrec ((x8019
                                                                                                  (cdr
                                                                                                   v7347)))
                                                                                          (car
                                                                                           x8019))))
                                                                                (x8020
                                                                                 j7348
                                                                                 k7349
                                                                                 x8018))))
                                                                      (letrec ((g8022
                                                                                (letrec ((x8023
                                                                                          (letrec ((x8024
                                                                                                    (cons
                                                                                                     checked7351
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7350
                                                                                             x8024))))
                                                                                  (cons
                                                                                   snake
                                                                                   x8023))))
                                                                        g8022))))
                                                            g8017))))
                                                g8015)))
                                           (WORLD/C
                                            (lambda (j7354 k7355 v7353)
                                              (letrec ((g8025
                                                        (letrec ((checked7356
                                                                  (letrec ((x8026
                                                                            (car
                                                                             v7353)))
                                                                    (SNAKE/C
                                                                     j7354
                                                                     k7355
                                                                     x8026))))
                                                          (letrec ((g8027
                                                                    (letrec ((checked7357
                                                                              (letrec ((x8028
                                                                                        (letrec ((x8029
                                                                                                  (cdr
                                                                                                   v7353)))
                                                                                          (car
                                                                                           x8029))))
                                                                                (POSN/C
                                                                                 j7354
                                                                                 k7355
                                                                                 x8028))))
                                                                      (letrec ((g8030
                                                                                (letrec ((x8031
                                                                                          (letrec ((x8032
                                                                                                    (cons
                                                                                                     checked7357
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7356
                                                                                             x8032))))
                                                                                  (cons
                                                                                   world
                                                                                   x8031))))
                                                                        g8030))))
                                                            g8027))))
                                                g8025)))
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
                                            (letrec ((x8034
                                                      (letrec ((x8035
                                                                (letrec ((x8036
                                                                          (posn
                                                                           5
                                                                           3)))
                                                                  (cons
                                                                   x8036
                                                                   empty))))
                                                        (snake 'right x8035)))
                                                     (x8033 (posn 8 12)))
                                              (world x8034 x8033)))
                                           (snake-wall-collide?
                                            (lambda (snk)
                                              (letrec ((g8037
                                                        (letrec ((x8038
                                                                  (letrec ((x8039
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x8039))))
                                                          (head-collide?
                                                           x8038))))
                                                g8037)))
                                           (head-collide?
                                            (lambda (p)
                                              (letrec ((g8040
                                                        (letrec ((val7258
                                                                  (letrec ((x8041
                                                                            (posn-x
                                                                             p)))
                                                                    (<=
                                                                     x8041
                                                                     0))))
                                                          (letrec ((g8042
                                                                    (if val7258
                                                                      val7258
                                                                      (letrec ((val7259
                                                                                (letrec ((x8043
                                                                                          (posn-x
                                                                                           p)))
                                                                                  (>=
                                                                                   x8043
                                                                                   BOARD-WIDTH))))
                                                                        (letrec ((g8044
                                                                                  (if val7259
                                                                                    val7259
                                                                                    (letrec ((val7260
                                                                                              (letrec ((x8045
                                                                                                        (posn-y
                                                                                                         p)))
                                                                                                (<=
                                                                                                 x8045
                                                                                                 0))))
                                                                                      (letrec ((g8046
                                                                                                (if val7260
                                                                                                  val7260
                                                                                                  (letrec ((x8047
                                                                                                            (posn-y
                                                                                                             p)))
                                                                                                    (>=
                                                                                                     x8047
                                                                                                     BOARD-HEIGHT)))))
                                                                                        g8046)))))
                                                                          g8044)))))
                                                            g8042))))
                                                g8040)))
                                           (snake-self-collide?
                                            (lambda (snk)
                                              (letrec ((g8048
                                                        (letrec ((x8051
                                                                  (letrec ((x8052
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x8052)))
                                                                 (x8049
                                                                  (letrec ((x8050
                                                                            (snake-segs
                                                                             snk)))
                                                                    (cdr
                                                                     x8050))))
                                                          (segs-self-collide?
                                                           x8051
                                                           x8049))))
                                                g8048)))
                                           (segs-self-collide?
                                            (lambda (h segs)
                                              (letrec ((g8053
                                                        (if cnd
                                                          (letrec ((g8054 #f))
                                                            g8054)
                                                          (letrec ((g8055
                                                                    (letrec ((x8058
                                                                              (letrec ((x8059
                                                                                        (car
                                                                                         segs)))
                                                                                (posn=?
                                                                                 x8059
                                                                                 h)))
                                                                             (x8056
                                                                              (letrec ((x8057
                                                                                        (cdr
                                                                                         segs)))
                                                                                (segs-self-collide?
                                                                                 h
                                                                                 x8057))))
                                                                      (or x8058
                                                                          x8056))))
                                                            g8055))))
                                                g8053)))
                                           (cut-tail
                                            (lambda (segs)
                                              (letrec ((g8060
                                                        (letrec ((r
                                                                  (cdr segs)))
                                                          (letrec ((g8061
                                                                    (if cnd
                                                                      (letrec ((g8062
                                                                                empty))
                                                                        g8062)
                                                                      (letrec ((g8063
                                                                                (letrec ((x8065
                                                                                          (car
                                                                                           segs))
                                                                                         (x8064
                                                                                          (cut-tail
                                                                                           r)))
                                                                                  (cons
                                                                                   x8065
                                                                                   x8064))))
                                                                        g8063))))
                                                            g8061))))
                                                g8060)))
                                           (next-head
                                            (lambda (seg dir)
                                              (letrec ((g8066
                                                        (if cnd
                                                          (letrec ((g8067
                                                                    (letrec ((x8069
                                                                              (letrec ((x8070
                                                                                        (posn-x
                                                                                         seg)))
                                                                                (add1
                                                                                 x8070)))
                                                                             (x8068
                                                                              (posn-y
                                                                               seg)))
                                                                      (posn
                                                                       x8069
                                                                       x8068))))
                                                            g8067)
                                                          (if cnd
                                                            (letrec ((g8071
                                                                      (letrec ((x8073
                                                                                (letrec ((x8074
                                                                                          (posn-x
                                                                                           seg)))
                                                                                  (sub1
                                                                                   x8074)))
                                                                               (x8072
                                                                                (posn-y
                                                                                 seg)))
                                                                        (posn
                                                                         x8073
                                                                         x8072))))
                                                              g8071)
                                                            (if cnd
                                                              (letrec ((g8075
                                                                        (letrec ((x8078
                                                                                  (posn-x
                                                                                   seg))
                                                                                 (x8076
                                                                                  (letrec ((x8077
                                                                                            (posn-y
                                                                                             seg)))
                                                                                    (sub1
                                                                                     x8077))))
                                                                          (posn
                                                                           x8078
                                                                           x8076))))
                                                                g8075)
                                                              (letrec ((g8079
                                                                        (letrec ((x8082
                                                                                  (posn-x
                                                                                   seg))
                                                                                 (x8080
                                                                                  (letrec ((x8081
                                                                                            (posn-y
                                                                                             seg)))
                                                                                    (add1
                                                                                     x8081))))
                                                                          (posn
                                                                           x8082
                                                                           x8080))))
                                                                g8079))))))
                                                g8066)))
                                           (snake-slither
                                            (lambda (snk)
                                              (letrec ((g8083
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g8084
                                                                    (letrec ((x8085
                                                                              (letrec ((x8088
                                                                                        (letrec ((x8089
                                                                                                  (letrec ((x8090
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x8090))))
                                                                                          (next-head
                                                                                           x8089
                                                                                           d)))
                                                                                       (x8086
                                                                                        (letrec ((x8087
                                                                                                  (snake-segs
                                                                                                   snk)))
                                                                                          (cut-tail
                                                                                           x8087))))
                                                                                (cons
                                                                                 x8088
                                                                                 x8086))))
                                                                      (snake
                                                                       d
                                                                       x8085))))
                                                            g8084))))
                                                g8083)))
                                           (snake-grow
                                            (lambda (snk)
                                              (letrec ((g8091
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g8092
                                                                    (letrec ((x8093
                                                                              (letrec ((x8095
                                                                                        (letrec ((x8096
                                                                                                  (letrec ((x8097
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x8097))))
                                                                                          (next-head
                                                                                           x8096
                                                                                           d)))
                                                                                       (x8094
                                                                                        (snake-segs
                                                                                         snk)))
                                                                                (cons
                                                                                 x8095
                                                                                 x8094))))
                                                                      (snake
                                                                       d
                                                                       x8093))))
                                                            g8092))))
                                                g8091)))
                                           (world->world
                                            (lambda (w)
                                              (letrec ((g8098
                                                        (if cnd
                                                          (letrec ((g8099
                                                                    (snake-eat
                                                                     w)))
                                                            g8099)
                                                          (letrec ((g8100
                                                                    (letrec ((x8102
                                                                              (letrec ((x8103
                                                                                        (world-snake
                                                                                         w)))
                                                                                (snake-slither
                                                                                 x8103)))
                                                                             (x8101
                                                                              (world-food
                                                                               w)))
                                                                      (world
                                                                       x8102
                                                                       x8101))))
                                                            g8100))))
                                                g8098)))
                                           (eating?
                                            (lambda (w)
                                              (letrec ((g8104
                                                        (letrec ((x8108
                                                                  (world-food
                                                                   w))
                                                                 (x8105
                                                                  (letrec ((x8106
                                                                            (letrec ((x8107
                                                                                      (world-snake
                                                                                       w)))
                                                                              (snake-segs
                                                                               x8107))))
                                                                    (car
                                                                     x8106))))
                                                          (posn=?
                                                           x8108
                                                           x8105))))
                                                g8104)))
                                           (snake-change-direction
                                            (lambda (snk dir)
                                              (letrec ((g8109
                                                        (letrec ((x8110
                                                                  (snake-segs
                                                                   snk)))
                                                          (snake dir x8110))))
                                                g8109)))
                                           (world-change-dir
                                            (lambda (w dir)
                                              (letrec ((g8111
                                                        (letrec ((x8113
                                                                  (letrec ((x8114
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-change-direction
                                                                     x8114
                                                                     dir)))
                                                                 (x8112
                                                                  (world-food
                                                                   w)))
                                                          (world
                                                           x8113
                                                           x8112))))
                                                g8111)))
                                           (snake-eat
                                            (lambda (w)
                                              (letrec ((g8115
                                                        (letrec ((x8119
                                                                  (letrec ((x8120
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-grow
                                                                     x8120)))
                                                                 (x8116
                                                                  (letrec ((x8118
                                                                            (-
                                                                             BOARD-WIDTH
                                                                             1))
                                                                           (x8117
                                                                            (-
                                                                             BOARD-HEIGHT
                                                                             1)))
                                                                    (posn
                                                                     x8118
                                                                     x8117))))
                                                          (world
                                                           x8119
                                                           x8116))))
                                                g8115)))
                                           (handle-key
                                            (lambda (w ke)
                                              (letrec ((g8121
                                                        (if cnd
                                                          (letrec ((g8122
                                                                    (world-change-dir
                                                                     w
                                                                     'up)))
                                                            g8122)
                                                          (if cnd
                                                            (letrec ((g8123
                                                                      (world-change-dir
                                                                       w
                                                                       'down)))
                                                              g8123)
                                                            (if cnd
                                                              (letrec ((g8124
                                                                        (world-change-dir
                                                                         w
                                                                         'left)))
                                                                g8124)
                                                              (if cnd
                                                                (letrec ((g8125
                                                                          (world-change-dir
                                                                           w
                                                                           'right)))
                                                                  g8125)
                                                                (letrec ((g8126
                                                                          w))
                                                                  g8126)))))))
                                                g8121)))
                                           (game-over?
                                            (lambda (w)
                                              (letrec ((g8127
                                                        (letrec ((val7261
                                                                  (letrec ((x8128
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-wall-collide?
                                                                     x8128))))
                                                          (letrec ((g8129
                                                                    (if val7261
                                                                      val7261
                                                                      (letrec ((x8130
                                                                                (world-snake
                                                                                 w)))
                                                                        (snake-self-collide?
                                                                         x8130)))))
                                                            g8129))))
                                                g8127)))
                                           (world->scene
                                            (lambda (w)
                                              (letrec ((g8131
                                                        (letrec ((x8134
                                                                  (world-snake
                                                                   w))
                                                                 (x8132
                                                                  (letrec ((x8133
                                                                            (world-food
                                                                             w)))
                                                                    (food+scene
                                                                     x8133
                                                                     BACKGROUND))))
                                                          (snake+scene
                                                           x8134
                                                           x8132))))
                                                g8131)))
                                           (food+scene
                                            (lambda (f scn)
                                              (letrec ((g8135
                                                        (letrec ((x8137
                                                                  (posn-x f))
                                                                 (x8136
                                                                  (posn-y f)))
                                                          (place-image-on-grid
                                                           FOOD-IMAGE
                                                           x8137
                                                           x8136
                                                           scn))))
                                                g8135)))
                                           (place-image-on-grid
                                            (lambda (img x y scn)
                                              (letrec ((g8138
                                                        (letrec ((x8141
                                                                  (*
                                                                   GRID-SIZE
                                                                   x))
                                                                 (x8139
                                                                  (letrec ((x8140
                                                                            (*
                                                                             GRID-SIZE
                                                                             y)))
                                                                    (-
                                                                     BOARD-HEIGHT-PIXELS
                                                                     x8140))))
                                                          (place-image
                                                           img
                                                           x8141
                                                           x8139
                                                           scn))))
                                                g8138)))
                                           (snake+scene
                                            (lambda (snk scn)
                                              (letrec ((g8142
                                                        (letrec ((x8143
                                                                  (snake-segs
                                                                   snk)))
                                                          (segments+scene
                                                           x8143
                                                           scn))))
                                                g8142)))
                                           (segments+scene
                                            (lambda (segs scn)
                                              (letrec ((g8144
                                                        (if cnd
                                                          (letrec ((g8145 scn))
                                                            g8145)
                                                          (letrec ((g8146
                                                                    (letrec ((x8149
                                                                              (cdr
                                                                               segs))
                                                                             (x8147
                                                                              (letrec ((x8148
                                                                                        (car
                                                                                         segs)))
                                                                                (segment+scene
                                                                                 x8148
                                                                                 scn))))
                                                                      (segments+scene
                                                                       x8149
                                                                       x8147))))
                                                            g8146))))
                                                g8144)))
                                           (segment+scene
                                            (lambda (seg scn)
                                              (letrec ((g8150
                                                        (letrec ((x8152
                                                                  (posn-x seg))
                                                                 (x8151
                                                                  (posn-y
                                                                   seg)))
                                                          (place-image-on-grid
                                                           SEGMENT-IMAGE
                                                           x8152
                                                           x8151
                                                           scn))))
                                                g8150))))
                                    (letrec ((g8153
                                              (letrec ((x8187
                                                        ((lambda (j7361
                                                                  k7362
                                                                  f7363)
                                                           (letrec ((g8188
                                                                     (lambda (g7359
                                                                              g7360)
                                                                       (letrec ((g8189
                                                                                 (letrec ((x8190
                                                                                           (letrec ((x8192
                                                                                                     (POSN/C
                                                                                                      j7361
                                                                                                      k7362
                                                                                                      g7359))
                                                                                                    (x8191
                                                                                                     (POSN/C
                                                                                                      j7361
                                                                                                      k7362
                                                                                                      g7360)))
                                                                                             (f7363
                                                                                              x8192
                                                                                              x8191))))
                                                                                   (boolean?/c
                                                                                    j7361
                                                                                    k7362
                                                                                    x8190))))
                                                                         g8189))))
                                                             g8188))
                                                         'module
                                                         'importer
                                                         posn=?))
                                                       (x8182
                                                        (letrec ((x8183
                                                                  (letrec ((x8186
                                                                            (input))
                                                                           (x8184
                                                                            (letrec ((x8185
                                                                                      (input)))
                                                                              (cons
                                                                               x8185
                                                                               '()))))
                                                                    (cons
                                                                     x8186
                                                                     x8184))))
                                                          (cons 'posn x8183)))
                                                       (x8177
                                                        (letrec ((x8178
                                                                  (letrec ((x8181
                                                                            (input))
                                                                           (x8179
                                                                            (letrec ((x8180
                                                                                      (input)))
                                                                              (cons
                                                                               x8180
                                                                               '()))))
                                                                    (cons
                                                                     x8181
                                                                     x8179))))
                                                          (cons 'posn x8178))))
                                                (x8187 x8182 x8177)))
                                             (g8154
                                              (WORLD/C
                                               'module
                                               'importer
                                               WORLD))
                                             (g8155
                                              (image/c
                                               'module
                                               'importer
                                               BACKGROUND))
                                             (g8156
                                              (image/c
                                               'module
                                               'importer
                                               FOOD-IMAGE))
                                             (g8157
                                              (image/c
                                               'module
                                               'importer
                                               SEGMENT-IMAGE))
                                             (g8158
                                              (real?
                                               'module
                                               'importer
                                               GRID-SIZE))
                                             (g8159
                                              (real?
                                               'module
                                               'importer
                                               BOARD-HEIGHT-PIXELS))
                                             (g8160
                                              (real?
                                               'module
                                               'importer
                                               BOARD-WIDTH))
                                             (g8161
                                              (real?
                                               'module
                                               'importer
                                               BOARD-HEIGHT))
                                             (g8162
                                              (letrec ((x8198
                                                        ((lambda (j7365
                                                                  k7366
                                                                  f7367)
                                                           (letrec ((g8199
                                                                     (lambda (g7364)
                                                                       (letrec ((g8200
                                                                                 (letrec ((x8201
                                                                                           (letrec ((x8202
                                                                                                     (SNAKE/C
                                                                                                      j7365
                                                                                                      k7366
                                                                                                      g7364)))
                                                                                             (f7367
                                                                                              x8202))))
                                                                                   (boolean?/c
                                                                                    j7365
                                                                                    k7366
                                                                                    x8201))))
                                                                         g8200))))
                                                             g8199))
                                                         'module
                                                         'importer
                                                         snake-wall-collide?))
                                                       (x8193
                                                        (letrec ((x8194
                                                                  (letrec ((x8197
                                                                            (input))
                                                                           (x8195
                                                                            (letrec ((x8196
                                                                                      (input)))
                                                                              (cons
                                                                               x8196
                                                                               '()))))
                                                                    (cons
                                                                     x8197
                                                                     x8195))))
                                                          (cons
                                                           'snake
                                                           x8194))))
                                                (x8198 x8193)))
                                             (g8163
                                              (letrec ((x8208
                                                        ((lambda (j7369
                                                                  k7370
                                                                  f7371)
                                                           (letrec ((g8209
                                                                     (lambda (g7368)
                                                                       (letrec ((g8210
                                                                                 (letrec ((x8211
                                                                                           (letrec ((x8212
                                                                                                     (SNAKE/C
                                                                                                      j7369
                                                                                                      k7370
                                                                                                      g7368)))
                                                                                             (f7371
                                                                                              x8212))))
                                                                                   (boolean?/c
                                                                                    j7369
                                                                                    k7370
                                                                                    x8211))))
                                                                         g8210))))
                                                             g8209))
                                                         'module
                                                         'importer
                                                         snake-self-collide?))
                                                       (x8203
                                                        (letrec ((x8204
                                                                  (letrec ((x8207
                                                                            (input))
                                                                           (x8205
                                                                            (letrec ((x8206
                                                                                      (input)))
                                                                              (cons
                                                                               x8206
                                                                               '()))))
                                                                    (cons
                                                                     x8207
                                                                     x8205))))
                                                          (cons
                                                           'snake
                                                           x8204))))
                                                (x8208 x8203)))
                                             (g8164
                                              (letrec ((x8214
                                                        ((lambda (j7373
                                                                  k7374
                                                                  f7375)
                                                           (letrec ((g8215
                                                                     (lambda (g7372)
                                                                       (letrec ((g8216
                                                                                 (letrec ((x8221
                                                                                           (listof
                                                                                            POSN/C))
                                                                                          (x8217
                                                                                           (letrec ((x8218
                                                                                                     (letrec ((x8219
                                                                                                               (letrec ((x8220
                                                                                                                         (listof
                                                                                                                          POSN/C)))
                                                                                                                 (and/c
                                                                                                                  cons?/c
                                                                                                                  x8220))))
                                                                                                       (x8219
                                                                                                        j7373
                                                                                                        k7374
                                                                                                        g7372))))
                                                                                             (f7375
                                                                                              x8218))))
                                                                                   (x8221
                                                                                    j7373
                                                                                    k7374
                                                                                    x8217))))
                                                                         g8216))))
                                                             g8215))
                                                         'module
                                                         'importer
                                                         cut-tail))
                                                       (x8213 (input)))
                                                (x8214 x8213)))
                                             (g8165
                                              (letrec ((x8227
                                                        ((lambda (j7377
                                                                  k7378
                                                                  f7379)
                                                           (letrec ((g8228
                                                                     (lambda (g7376)
                                                                       (letrec ((g8229
                                                                                 (letrec ((x8230
                                                                                           (letrec ((x8231
                                                                                                     (SNAKE/C
                                                                                                      j7377
                                                                                                      k7378
                                                                                                      g7376)))
                                                                                             (f7379
                                                                                              x8231))))
                                                                                   (SNAKE/C
                                                                                    j7377
                                                                                    k7378
                                                                                    x8230))))
                                                                         g8229))))
                                                             g8228))
                                                         'module
                                                         'importer
                                                         snake-slither))
                                                       (x8222
                                                        (letrec ((x8223
                                                                  (letrec ((x8226
                                                                            (input))
                                                                           (x8224
                                                                            (letrec ((x8225
                                                                                      (input)))
                                                                              (cons
                                                                               x8225
                                                                               '()))))
                                                                    (cons
                                                                     x8226
                                                                     x8224))))
                                                          (cons
                                                           'snake
                                                           x8223))))
                                                (x8227 x8222)))
                                             (g8166
                                              (letrec ((x8237
                                                        ((lambda (j7381
                                                                  k7382
                                                                  f7383)
                                                           (letrec ((g8238
                                                                     (lambda (g7380)
                                                                       (letrec ((g8239
                                                                                 (letrec ((x8240
                                                                                           (letrec ((x8241
                                                                                                     (SNAKE/C
                                                                                                      j7381
                                                                                                      k7382
                                                                                                      g7380)))
                                                                                             (f7383
                                                                                              x8241))))
                                                                                   (SNAKE/C
                                                                                    j7381
                                                                                    k7382
                                                                                    x8240))))
                                                                         g8239))))
                                                             g8238))
                                                         'module
                                                         'importer
                                                         snake-grow))
                                                       (x8232
                                                        (letrec ((x8233
                                                                  (letrec ((x8236
                                                                            (input))
                                                                           (x8234
                                                                            (letrec ((x8235
                                                                                      (input)))
                                                                              (cons
                                                                               x8235
                                                                               '()))))
                                                                    (cons
                                                                     x8236
                                                                     x8234))))
                                                          (cons
                                                           'snake
                                                           x8233))))
                                                (x8237 x8232)))
                                             (g8167
                                              (letrec ((x8256
                                                        ((lambda (j7386
                                                                  k7387
                                                                  f7388)
                                                           (letrec ((g8257
                                                                     (lambda (g7384
                                                                              g7385)
                                                                       (letrec ((g8258
                                                                                 (letrec ((x8259
                                                                                           (letrec ((x8261
                                                                                                     (WORLD/C
                                                                                                      j7386
                                                                                                      k7387
                                                                                                      g7384))
                                                                                                    (x8260
                                                                                                     (DIR/C
                                                                                                      j7386
                                                                                                      k7387
                                                                                                      g7385)))
                                                                                             (f7388
                                                                                              x8261
                                                                                              x8260))))
                                                                                   (WORLD/C
                                                                                    j7386
                                                                                    k7387
                                                                                    x8259))))
                                                                         g8258))))
                                                             g8257))
                                                         'module
                                                         'importer
                                                         world-change-dir))
                                                       (x8243
                                                        (letrec ((x8244
                                                                  (letrec ((x8251
                                                                            (letrec ((x8252
                                                                                      (letrec ((x8255
                                                                                                (input))
                                                                                               (x8253
                                                                                                (letrec ((x8254
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8254
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8255
                                                                                         x8253))))
                                                                              (cons
                                                                               'snake
                                                                               x8252)))
                                                                           (x8245
                                                                            (letrec ((x8246
                                                                                      (letrec ((x8247
                                                                                                (letrec ((x8250
                                                                                                          (input))
                                                                                                         (x8248
                                                                                                          (letrec ((x8249
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x8249
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x8250
                                                                                                   x8248))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x8247))))
                                                                              (cons
                                                                               x8246
                                                                               '()))))
                                                                    (cons
                                                                     x8251
                                                                     x8245))))
                                                          (cons 'world x8244)))
                                                       (x8242 (input)))
                                                (x8256 x8243 x8242)))
                                             (g8168
                                              (letrec ((x8275
                                                        ((lambda (j7390
                                                                  k7391
                                                                  f7392)
                                                           (letrec ((g8276
                                                                     (lambda (g7389)
                                                                       (letrec ((g8277
                                                                                 (letrec ((x8278
                                                                                           (letrec ((x8279
                                                                                                     (WORLD/C
                                                                                                      j7390
                                                                                                      k7391
                                                                                                      g7389)))
                                                                                             (f7392
                                                                                              x8279))))
                                                                                   (WORLD/C
                                                                                    j7390
                                                                                    k7391
                                                                                    x8278))))
                                                                         g8277))))
                                                             g8276))
                                                         'module
                                                         'importer
                                                         world->world))
                                                       (x8262
                                                        (letrec ((x8263
                                                                  (letrec ((x8270
                                                                            (letrec ((x8271
                                                                                      (letrec ((x8274
                                                                                                (input))
                                                                                               (x8272
                                                                                                (letrec ((x8273
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8273
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8274
                                                                                         x8272))))
                                                                              (cons
                                                                               'snake
                                                                               x8271)))
                                                                           (x8264
                                                                            (letrec ((x8265
                                                                                      (letrec ((x8266
                                                                                                (letrec ((x8269
                                                                                                          (input))
                                                                                                         (x8267
                                                                                                          (letrec ((x8268
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x8268
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x8269
                                                                                                   x8267))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x8266))))
                                                                              (cons
                                                                               x8265
                                                                               '()))))
                                                                    (cons
                                                                     x8270
                                                                     x8264))))
                                                          (cons
                                                           'world
                                                           x8263))))
                                                (x8275 x8262)))
                                             (g8169
                                              (letrec ((x8294
                                                        ((lambda (j7395
                                                                  k7396
                                                                  f7397)
                                                           (letrec ((g8295
                                                                     (lambda (g7393
                                                                              g7394)
                                                                       (letrec ((g8296
                                                                                 (letrec ((x8297
                                                                                           (letrec ((x8299
                                                                                                     (WORLD/C
                                                                                                      j7395
                                                                                                      k7396
                                                                                                      g7393))
                                                                                                    (x8298
                                                                                                     (string?/c
                                                                                                      j7395
                                                                                                      k7396
                                                                                                      g7394)))
                                                                                             (f7397
                                                                                              x8299
                                                                                              x8298))))
                                                                                   (WORLD/C
                                                                                    j7395
                                                                                    k7396
                                                                                    x8297))))
                                                                         g8296))))
                                                             g8295))
                                                         'module
                                                         'importer
                                                         handle-key))
                                                       (x8281
                                                        (letrec ((x8282
                                                                  (letrec ((x8289
                                                                            (letrec ((x8290
                                                                                      (letrec ((x8293
                                                                                                (input))
                                                                                               (x8291
                                                                                                (letrec ((x8292
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8292
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8293
                                                                                         x8291))))
                                                                              (cons
                                                                               'snake
                                                                               x8290)))
                                                                           (x8283
                                                                            (letrec ((x8284
                                                                                      (letrec ((x8285
                                                                                                (letrec ((x8288
                                                                                                          (input))
                                                                                                         (x8286
                                                                                                          (letrec ((x8287
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x8287
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x8288
                                                                                                   x8286))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x8285))))
                                                                              (cons
                                                                               x8284
                                                                               '()))))
                                                                    (cons
                                                                     x8289
                                                                     x8283))))
                                                          (cons 'world x8282)))
                                                       (x8280 (input)))
                                                (x8294 x8281 x8280)))
                                             (g8170
                                              (letrec ((x8313
                                                        ((lambda (j7399
                                                                  k7400
                                                                  f7401)
                                                           (letrec ((g8314
                                                                     (lambda (g7398)
                                                                       (letrec ((g8315
                                                                                 (letrec ((x8316
                                                                                           (letrec ((x8317
                                                                                                     (WORLD/C
                                                                                                      j7399
                                                                                                      k7400
                                                                                                      g7398)))
                                                                                             (f7401
                                                                                              x8317))))
                                                                                   (boolean?/c
                                                                                    j7399
                                                                                    k7400
                                                                                    x8316))))
                                                                         g8315))))
                                                             g8314))
                                                         'module
                                                         'importer
                                                         game-over?))
                                                       (x8300
                                                        (letrec ((x8301
                                                                  (letrec ((x8308
                                                                            (letrec ((x8309
                                                                                      (letrec ((x8312
                                                                                                (input))
                                                                                               (x8310
                                                                                                (letrec ((x8311
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8311
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8312
                                                                                         x8310))))
                                                                              (cons
                                                                               'snake
                                                                               x8309)))
                                                                           (x8302
                                                                            (letrec ((x8303
                                                                                      (letrec ((x8304
                                                                                                (letrec ((x8307
                                                                                                          (input))
                                                                                                         (x8305
                                                                                                          (letrec ((x8306
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x8306
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x8307
                                                                                                   x8305))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x8304))))
                                                                              (cons
                                                                               x8303
                                                                               '()))))
                                                                    (cons
                                                                     x8308
                                                                     x8302))))
                                                          (cons
                                                           'world
                                                           x8301))))
                                                (x8313 x8300)))
                                             (g8171
                                              (letrec ((x8331
                                                        ((lambda (j7403
                                                                  k7404
                                                                  f7405)
                                                           (letrec ((g8332
                                                                     (lambda (g7402)
                                                                       (letrec ((g8333
                                                                                 (letrec ((x8334
                                                                                           (letrec ((x8335
                                                                                                     (WORLD/C
                                                                                                      j7403
                                                                                                      k7404
                                                                                                      g7402)))
                                                                                             (f7405
                                                                                              x8335))))
                                                                                   (image/c
                                                                                    j7403
                                                                                    k7404
                                                                                    x8334))))
                                                                         g8333))))
                                                             g8332))
                                                         'module
                                                         'importer
                                                         world->scene))
                                                       (x8318
                                                        (letrec ((x8319
                                                                  (letrec ((x8326
                                                                            (letrec ((x8327
                                                                                      (letrec ((x8330
                                                                                                (input))
                                                                                               (x8328
                                                                                                (letrec ((x8329
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8329
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8330
                                                                                         x8328))))
                                                                              (cons
                                                                               'snake
                                                                               x8327)))
                                                                           (x8320
                                                                            (letrec ((x8321
                                                                                      (letrec ((x8322
                                                                                                (letrec ((x8325
                                                                                                          (input))
                                                                                                         (x8323
                                                                                                          (letrec ((x8324
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x8324
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x8325
                                                                                                   x8323))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x8322))))
                                                                              (cons
                                                                               x8321
                                                                               '()))))
                                                                    (cons
                                                                     x8326
                                                                     x8320))))
                                                          (cons
                                                           'world
                                                           x8319))))
                                                (x8331 x8318)))
                                             (g8172
                                              (letrec ((x8342
                                                        ((lambda (j7408
                                                                  k7409
                                                                  f7410)
                                                           (letrec ((g8343
                                                                     (lambda (g7406
                                                                              g7407)
                                                                       (letrec ((g8344
                                                                                 (letrec ((x8345
                                                                                           (letrec ((x8347
                                                                                                     (POSN/C
                                                                                                      j7408
                                                                                                      k7409
                                                                                                      g7406))
                                                                                                    (x8346
                                                                                                     (image/c
                                                                                                      j7408
                                                                                                      k7409
                                                                                                      g7407)))
                                                                                             (f7410
                                                                                              x8347
                                                                                              x8346))))
                                                                                   (image/c
                                                                                    j7408
                                                                                    k7409
                                                                                    x8345))))
                                                                         g8344))))
                                                             g8343))
                                                         'module
                                                         'importer
                                                         food+scene))
                                                       (x8337
                                                        (letrec ((x8338
                                                                  (letrec ((x8341
                                                                            (input))
                                                                           (x8339
                                                                            (letrec ((x8340
                                                                                      (input)))
                                                                              (cons
                                                                               x8340
                                                                               '()))))
                                                                    (cons
                                                                     x8341
                                                                     x8339))))
                                                          (cons 'posn x8338)))
                                                       (x8336
                                                        (cons 'image '())))
                                                (x8342 x8337 x8336)))
                                             (g8173
                                              (letrec ((x8352
                                                        ((lambda (j7415
                                                                  k7416
                                                                  f7417)
                                                           (letrec ((g8353
                                                                     (lambda (g7411
                                                                              g7412
                                                                              g7413
                                                                              g7414)
                                                                       (letrec ((g8354
                                                                                 (letrec ((x8355
                                                                                           (letrec ((x8359
                                                                                                     (image/c
                                                                                                      j7415
                                                                                                      k7416
                                                                                                      g7411))
                                                                                                    (x8358
                                                                                                     (real?/c
                                                                                                      j7415
                                                                                                      k7416
                                                                                                      g7412))
                                                                                                    (x8357
                                                                                                     (real?/c
                                                                                                      j7415
                                                                                                      k7416
                                                                                                      g7413))
                                                                                                    (x8356
                                                                                                     (image/c
                                                                                                      j7415
                                                                                                      k7416
                                                                                                      g7414)))
                                                                                             (f7417
                                                                                              x8359
                                                                                              x8358
                                                                                              x8357
                                                                                              x8356))))
                                                                                   (image/c
                                                                                    j7415
                                                                                    k7416
                                                                                    x8355))))
                                                                         g8354))))
                                                             g8353))
                                                         'module
                                                         'importer
                                                         place-image-on-grid))
                                                       (x8351
                                                        (cons 'image '()))
                                                       (x8350 (input))
                                                       (x8349 (input))
                                                       (x8348
                                                        (cons 'image '())))
                                                (x8352
                                                 x8351
                                                 x8350
                                                 x8349
                                                 x8348)))
                                             (g8174
                                              (letrec ((x8366
                                                        ((lambda (j7420
                                                                  k7421
                                                                  f7422)
                                                           (letrec ((g8367
                                                                     (lambda (g7418
                                                                              g7419)
                                                                       (letrec ((g8368
                                                                                 (letrec ((x8369
                                                                                           (letrec ((x8371
                                                                                                     (SNAKE/C
                                                                                                      j7420
                                                                                                      k7421
                                                                                                      g7418))
                                                                                                    (x8370
                                                                                                     (image/c
                                                                                                      j7420
                                                                                                      k7421
                                                                                                      g7419)))
                                                                                             (f7422
                                                                                              x8371
                                                                                              x8370))))
                                                                                   (image/c
                                                                                    j7420
                                                                                    k7421
                                                                                    x8369))))
                                                                         g8368))))
                                                             g8367))
                                                         'module
                                                         'importer
                                                         snake+scene))
                                                       (x8361
                                                        (letrec ((x8362
                                                                  (letrec ((x8365
                                                                            (input))
                                                                           (x8363
                                                                            (letrec ((x8364
                                                                                      (input)))
                                                                              (cons
                                                                               x8364
                                                                               '()))))
                                                                    (cons
                                                                     x8365
                                                                     x8363))))
                                                          (cons 'snake x8362)))
                                                       (x8360
                                                        (cons 'image '())))
                                                (x8366 x8361 x8360)))
                                             (g8175
                                              (letrec ((x8374
                                                        ((lambda (j7425
                                                                  k7426
                                                                  f7427)
                                                           (letrec ((g8375
                                                                     (lambda (g7423
                                                                              g7424)
                                                                       (letrec ((g8376
                                                                                 (letrec ((x8377
                                                                                           (letrec ((x8379
                                                                                                     (letrec ((x8380
                                                                                                               (listof
                                                                                                                POSN/C)))
                                                                                                       (x8380
                                                                                                        j7425
                                                                                                        k7426
                                                                                                        g7423)))
                                                                                                    (x8378
                                                                                                     (image/c
                                                                                                      j7425
                                                                                                      k7426
                                                                                                      g7424)))
                                                                                             (f7427
                                                                                              x8379
                                                                                              x8378))))
                                                                                   (image/c
                                                                                    j7425
                                                                                    k7426
                                                                                    x8377))))
                                                                         g8376))))
                                                             g8375))
                                                         'module
                                                         'importer
                                                         segments+scene))
                                                       (x8373 (input))
                                                       (x8372
                                                        (cons 'image '())))
                                                (x8374 x8373 x8372)))
                                             (g8176
                                              (letrec ((x8387
                                                        ((lambda (j7430
                                                                  k7431
                                                                  f7432)
                                                           (letrec ((g8388
                                                                     (lambda (g7428
                                                                              g7429)
                                                                       (letrec ((g8389
                                                                                 (letrec ((x8390
                                                                                           (letrec ((x8392
                                                                                                     (POSN/C
                                                                                                      j7430
                                                                                                      k7431
                                                                                                      g7428))
                                                                                                    (x8391
                                                                                                     (image/c
                                                                                                      j7430
                                                                                                      k7431
                                                                                                      g7429)))
                                                                                             (f7432
                                                                                              x8392
                                                                                              x8391))))
                                                                                   (image/c
                                                                                    j7430
                                                                                    k7431
                                                                                    x8390))))
                                                                         g8389))))
                                                             g8388))
                                                         'module
                                                         'importer
                                                         segment+scene))
                                                       (x8382
                                                        (letrec ((x8383
                                                                  (letrec ((x8386
                                                                            (input))
                                                                           (x8384
                                                                            (letrec ((x8385
                                                                                      (input)))
                                                                              (cons
                                                                               x8385
                                                                               '()))))
                                                                    (cons
                                                                     x8386
                                                                     x8384))))
                                                          (cons 'posn x8383)))
                                                       (x8381
                                                        (cons 'image '())))
                                                (x8387 x8382 x8381))))
                                      g8176))))
                          g7462))))
              g7460)))
    g7459))
